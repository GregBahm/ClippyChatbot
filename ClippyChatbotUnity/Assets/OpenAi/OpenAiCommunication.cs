using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityLibrary;

public class OpenAiCommunication : MonoBehaviour
{
    const string url = "https://api.openai.com/v1/completions";

    private const string modelName = "text-davinci-003";

    [SerializeField]
    private TextAsset openAiSubscriptionKeyFile;
    private string openAiSubscriptionKey;

    public bool InProgress { get; private set; }
    public string LastReceivedResponse { get; private set; }

    private void Start()
    {
        openAiSubscriptionKey = openAiSubscriptionKeyFile.text;
    }

    public void Ask(string message)
    {
        InProgress = true;

        RequestData dataForRequest = new RequestData()
        {
            model = modelName,
            prompt = message,
            temperature = 0.9f,
            max_tokens = 256,
            top_p = 1,
            frequency_penalty = 0,
            presence_penalty = 0
        };

        string jsonData = JsonUtility.ToJson(dataForRequest);

        byte[] postData = System.Text.Encoding.UTF8.GetBytes(jsonData);

        UnityWebRequest request = UnityWebRequest.Post(url, jsonData);
        request.uploadHandler = new UploadHandlerRaw(postData);
        request.downloadHandler = new DownloadHandlerBuffer();
        request.SetRequestHeader("Content-Type", "application/json");
        request.SetRequestHeader("Authorization", "Bearer " + openAiSubscriptionKey);

        UnityWebRequestAsyncOperation async = request.SendWebRequest();

        async.completed += (op) =>
        {
            if (request.result == UnityWebRequest.Result.ConnectionError)
            {
                Debug.LogError(request.error);
            }
            else
            {
                Debug.Log(request.downloadHandler.text);
                OpenAIAPI responseData = JsonUtility.FromJson<OpenAIAPI>(request.downloadHandler.text);
                string generatedText = responseData.choices[0].text.TrimStart('\n').TrimStart('\n');

                LastReceivedResponse = generatedText;
            }
            InProgress = false;

            request.Dispose();
        };
    }
}
