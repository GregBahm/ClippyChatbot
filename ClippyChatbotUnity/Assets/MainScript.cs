using Microsoft.CognitiveServices.Speech;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
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
    private bool doTheThing;

    private string subscriptionKey;
    private const string subscriptionRegion = "westus";

    private object speechToTextThreadLocker = new object();
    private object textToSpeechThreadLocker = new object();

    private string message;
    private bool newMessageReceived;
    private bool waitingForRecording;
    private bool waitingForSpeak;
    private bool audioSourceNeedStop;

    private const int SampleRate = 24000;

    private SpeechConfig speechConfig;
    private SpeechSynthesizer synthesizer;

    void Start()
    {
        subscriptionKey = subscriptionKeyFile.text;
        speechConfig = SpeechConfig.FromSubscription(subscriptionKey, subscriptionRegion);

        // The default format is RIFF, which has a riff header.
        // We are playing the audio in memory as audio clip, which doesn't require riff header.
        // So we need to set the format to raw (24KHz for better quality).
        speechConfig.SetSpeechSynthesisOutputFormat(SpeechSynthesisOutputFormat.Raw24Khz16BitMonoPcm);

        // Creates a speech synthesizer.
        // Make sure to dispose the synthesizer after use!
        synthesizer = new SpeechSynthesizer(speechConfig, null);
    }

    private void Update()
    {
        if(doTheThing)
        {
            doTheThing = false;
            BeginListenToSpeech();
        }

        lock (speechToTextThreadLocker)
        {
            // can use waitingForRecording here
            if(newMessageReceived)
            {
                newMessageReceived = false;
                ProcessNewMessage(message);
            }
        }

        if (audioSourceNeedStop)
        {
            audioSource.Stop();
            audioSourceNeedStop = false;
        }
    }

    private void ProcessNewMessage(string message)
    {
        lock (textToSpeechThreadLocker)
        {
            waitingForSpeak = true;
        }

        using (var result = synthesizer.StartSpeakingTextAsync(message).Result)
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

    async void BeginListenToSpeech()
    {

        using (var recognizer = new SpeechRecognizer(speechConfig))
        {
            lock (speechToTextThreadLocker)
            {
                waitingForRecording = true;
            }

            // For long-running multi-utterance recognition, use StartContinuousRecognitionAsync() instead.
            var result = await recognizer.RecognizeOnceAsync().ConfigureAwait(false);

            // Checks result.
            string newMessage = string.Empty;
            if (result.Reason == ResultReason.RecognizedSpeech)
            {
                newMessage = result.Text;
            }
            else
            {
                newMessage = "I have no clue what you said.";
            }
            lock (speechToTextThreadLocker)
            {
                message = newMessage;
                waitingForRecording = false;
                newMessageReceived = true;
            }
        }
    }
}
