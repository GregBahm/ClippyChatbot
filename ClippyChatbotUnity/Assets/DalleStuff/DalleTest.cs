using OpenAI.Images;
using OpenAI;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using OpenAI.Chat;
using OpenAI.Models;
using UnityEngine.UI;

public class DalleTest : MonoBehaviour
{
    public TextAsset license;
    public bool Fire;
    public RawImage DebugImage;
    private OpenAIClient api;

    private void Start()
    {
        OpenAIAuthentication authentication = new OpenAIAuthentication(license.text);
        api = new OpenAIClient(authentication);
    }

    void Update()
    {
        if(Fire)
        {
            Fire = false;
            Imagine();
        }
    }

    async void Chat()
    {
        ChatRequest chat = new ChatRequest(new[] { new Message(Role.User, "Hey tell me something interesting.") }, Model.GPT3_5_Turbo);
        ChatResponse results = await api.ChatEndpoint.GetCompletionAsync(chat);
        Debug.Log(results.FirstChoice.Message.Content.ToString());
    }

    async void Imagine()
    {
        IReadOnlyDictionary<string, Texture2D> results = await api.ImagesEndPoint.GenerateImageAsync("A house riding a velociraptor", 1, ImageSize.Small);

        foreach ((string path, Texture2D texture) in results)
        {
            Debug.Log("Find your soulmate homer");
            Debug.Log(path);
            DebugImage.texture = texture;
        }
    }
}
