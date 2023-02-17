using Microsoft.CognitiveServices.Speech;
using Microsoft.CognitiveServices.Speech.Audio;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using TMPro;
using UnityEditor.VersionControl;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(OpenAiCommunication))]
public class MainScript : MonoBehaviour
{
    [SerializeField]
    private AudioSource audioSource;
    [SerializeField]
    private TextAsset subscriptionKeyFile;
    [SerializeField]
    private TextMeshProUGUI statusTextbox;

    [SerializeField]
    private GameObject shutUpClippyButton;

    private OpenAiCommunication openAi;

    private string subscriptionKey;
    private const string subscriptionRegion = "westus";

    private object speechToTextThreadLocker = new object();
    private object textToSpeechThreadLocker = new object();

    private string lastHeardSpeech;
    private bool unprocessedSpeech;
    private bool stopAudioSource;

    private const int SampleRate = 24000;

    private SpeechRecognizer recognizer;
    private SpeechConfig speechConfig;
    private SpeechSynthesizer synthesizer;

    public ClippyStatus Status { get; private set; }

    private string statusMessage;

    [SerializeField]
    private float delay = .5f;
    private bool introduced;

    private bool doBegin;
    [SerializeField]
    private GameObject[] startingGameObjects;
    [SerializeField]
    private GameObject beginButton;

    void Start()
    {
        openAi = GetComponent<OpenAiCommunication>();
        subscriptionKey = subscriptionKeyFile.text;
        speechConfig = SpeechConfig.FromSubscription(subscriptionKey, subscriptionRegion);

        InitializeSpeechRecognizer();
        InitializeSpeechSynthesizer();
    }

    public void BeginClippy()
    {
        doBegin = true;
        foreach (var item in startingGameObjects)
        {
            item.SetActive(true);
        }
        beginButton.SetActive(false);
    }

    private void InitializeSpeechSynthesizer()
    {

        speechConfig.SetSpeechSynthesisOutputFormat(SpeechSynthesisOutputFormat.Raw24Khz16BitMonoPcm);
        speechConfig.SpeechSynthesisVoiceName = "en-US-JasonNeural";
        synthesizer = new SpeechSynthesizer(speechConfig, null);
    }

    private void InitializeSpeechRecognizer()
    {

        string heyClippyFilePath = Application.streamingAssetsPath + "/heyClippyRecognition.table";
        KeywordRecognitionModel heyClippyModel = KeywordRecognitionModel.FromFile(heyClippyFilePath);

        string goAwayFilePath = Application.streamingAssetsPath + "/goAwayRecognition.table";
        KeywordRecognitionModel goAwayModel = KeywordRecognitionModel.FromFile(goAwayFilePath);

        recognizer = new SpeechRecognizer(speechConfig);
        recognizer.Recognizing += Recognizer_Recognizing;
        recognizer.Recognized += Recognizer_Recognized;
    }

    private void Recognizer_Recognizing(object sender, SpeechRecognitionEventArgs e)
    {
        if(Status == ClippyStatus.PatientlyWaiting)
        {
            statusMessage = "Hearing:\n\n" + e.Result.Text; ;
            Status = ClippyStatus.Listening;
        }
    }

    private void Recognizer_Recognized(object sender, SpeechRecognitionEventArgs e)
    {
        Status = ClippyStatus.Listening;
        lastHeardSpeech = e.Result.Text;
        if(e.Result.Reason == ResultReason.RecognizedSpeech && !string.IsNullOrEmpty(lastHeardSpeech))
        {
            unprocessedSpeech = true;
            recognizer.StopContinuousRecognitionAsync();
            Status = ClippyStatus.ThinkingOfWhatToSay;
        }
        statusMessage = "Heard:\n\n" + lastHeardSpeech;
    }

    private void Update()
    {
        if(!introduced && doBegin)
        {
            delay -= Time.deltaTime;
            if(delay < 0)
            {
                Status = ClippyStatus.Speaking;
                introduced = true;

                statusMessage = "\"Hi, I'm clippy. Where do you want to go today?\"";
                HaveClippySay("Hi, I'm clippy. Where do you want to go today?");
            }
        }

        statusTextbox.text = statusMessage;
        if(unprocessedSpeech)
        {
            unprocessedSpeech = false;
            SendQuestionToOpenAi();
        }
        if(Status == ClippyStatus.ThinkingOfWhatToSay)
        {
            statusMessage = "Thinking about:\n\n" + lastHeardSpeech;
            if(!openAi.InProgress)
            {
                Status = ClippyStatus.Speaking;

                statusMessage = "\"" + openAi.LastReceivedResponse + "\"";
                HaveClippySay(openAi.LastReceivedResponse);
            }
        }

        shutUpClippyButton.SetActive(Status == ClippyStatus.Speaking);

        if (stopAudioSource)
        {
            audioSource.Stop();
            Status = ClippyStatus.PatientlyWaiting;
            statusMessage = "";
            recognizer.StartContinuousRecognitionAsync();
            stopAudioSource = false;
        }
    }
    public void ShutUpClippy()
    {
        stopAudioSource = true;
    }

    private void HaveClippySay(string message)
    {
        string ssmlMessage = GetSsmlMessage(message);
        using (SpeechSynthesisResult result = synthesizer.StartSpeakingSsmlAsync(ssmlMessage).Result)
        {
            AudioDataStream audioDataStream = AudioDataStream.FromResult(result);
            var audioClip = AudioClip.Create(
                "Speech",
                SampleRate * 600, // Can speak 10mins audio as maximum
                1,
                SampleRate,
                true,
                (float[] audioChunk) =>
                {
                    var chunkSize = audioChunk.Length;
                    var audioChunkBytes = new byte[chunkSize * 2];
                    var readBytes = audioDataStream.ReadData(audioChunkBytes);

                    for (int i = 0; i < chunkSize; ++i)
                    {
                        if (i < readBytes / 2)
                        {
                            audioChunk[i] = (short)(audioChunkBytes[i * 2 + 1] << 8 | audioChunkBytes[i * 2]) / 32768.0F;
                        }
                        else
                        {
                            audioChunk[i] = 0.0f;
                        }
                    }

                    if (readBytes == 0)
                    {
                        Thread.Sleep(200); // Leave some time for the audioSource to finish playback
                        stopAudioSource = true;
                    }
                });
            audioSource.clip = audioClip;
            audioSource.Play();
        }
    }

    private static string GetSsmlMessage(string message)
    {
        string header = @"<speak xmlns=""http://www.w3.org/2001/10/synthesis"" xmlns:mstts=""http://www.w3.org/2001/mstts"" xmlns:emo=""http://www.w3.org/2009/10/emotionml"" version=""1.0"" xml:lang=""en-US""><voice name=""en-US-JasonNeural""><prosody rate=""30%"" pitch=""25%"">";
        string footer = @"</prosody></voice></speak>";
        return header + message + footer;
    }

    private void SendQuestionToOpenAi()
    {
        string message = lastHeardSpeech.ToLower().Replace("clippy", "");
        openAi.Ask(message);
    }
}

public enum ClippyStatus
{
    PatientlyWaiting,
    Listening,
    ThinkingOfWhatToSay,
    Speaking
}
