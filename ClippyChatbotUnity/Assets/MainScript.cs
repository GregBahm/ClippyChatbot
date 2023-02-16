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

public class MainScript : MonoBehaviour
{
    [SerializeField]
    private AudioSource audioSource;
    [SerializeField]
    private TextAsset subscriptionKeyFile;
    [SerializeField]
    private TextAsset keywordRecognitionFile;
    [SerializeField]
    private TextMeshProUGUI statusTextbox;

    private string subscriptionKey;
    private const string subscriptionRegion = "westus";

    private object speechToTextThreadLocker = new object();
    private object textToSpeechThreadLocker = new object();

    private string lastHeardSpeech;
    private bool newMessageReceived;
    private bool listeningToUser;
    private bool waitingForSpeak;
    private bool audioSourceNeedStop;

    private const int SampleRate = 24000;

    private SpeechRecognizer recognizer;
    private SpeechConfig speechConfig;
    private SpeechSynthesizer synthesizer;

    private KeywordRecognitionModel keywordModel;

    void Start()
    {
        subscriptionKey = subscriptionKeyFile.text;
        speechConfig = SpeechConfig.FromSubscription(subscriptionKey, subscriptionRegion);

        keywordModel = KeywordRecognitionModel.FromFile(keywordRecognitionFile.text);
        recognizer = new SpeechRecognizer(speechConfig);
        recognizer.StartKeywordRecognitionAsync(keywordModel);
        recognizer.Recognized += Recognizer_Recognized;

        speechConfig.SetSpeechSynthesisOutputFormat(SpeechSynthesisOutputFormat.Raw24Khz16BitMonoPcm);
        speechConfig.SpeechSynthesisVoiceName = "en-US-JasonNeural";
        synthesizer = new SpeechSynthesizer(speechConfig, null);

        newMessageReceived = true;
        lastHeardSpeech = "I am clippy and I am talking";
    }

    private void Recognizer_Recognized(object sender, SpeechRecognitionEventArgs e)
    {
        lastHeardSpeech = "oh shit whutup.";
    }

    private void Update()
    {
        lock (speechToTextThreadLocker)
        {
            // can use waitingForRecording here
            if(newMessageReceived)
            {
                newMessageReceived = false;
                ProcessNewMessage(lastHeardSpeech);
            }
        }

        if (audioSourceNeedStop)
        {
            audioSource.Stop();
            audioSourceNeedStop = false;
        }
        UpdateStatusMessage();
    }

    private void UpdateStatusMessage()
    {
        if(listeningToUser)
        {
            statusTextbox.text = "Listening";
        }
        else
        {
            statusTextbox.text = "Clippy heard:\n" + lastHeardSpeech;
        }
    }

    private void ProcessNewMessage(string message)
    {
        lock (textToSpeechThreadLocker)
        {
            waitingForSpeak = true;
        }
        string ssmlMessage = GetSsmlMessage(message);
        using (var result = synthesizer.StartSpeakingSsmlAsync(ssmlMessage).Result)
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
                        audioSourceNeedStop = true;
                    }
                });
            audioSource.clip = audioClip;
            audioSource.Play();
        }
    }

    private string GetSsmlMessage(string message)
    {
        string header = @"<speak xmlns=""http://www.w3.org/2001/10/synthesis"" xmlns:mstts=""http://www.w3.org/2001/mstts"" xmlns:emo=""http://www.w3.org/2009/10/emotionml"" version=""1.0"" xml:lang=""en-US""><voice name=""en-US-JasonNeural""><prosody rate=""30%"" pitch=""25%"">";
        string footer = @"</prosody></voice></speak>";
        return header + message + footer;
    }
}
