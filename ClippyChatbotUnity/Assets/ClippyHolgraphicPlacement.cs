using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ClippyHolgraphicPlacement : MonoBehaviour
{
    [SerializeField]
    private Animator clippyAnimtor;

    [SerializeField]
    private Transform handTransform;

    [SerializeField]
    private float yOffset;

    [SerializeField]
    private Transform clippyTransform;

    private bool spawned;

    private void Update()
    {
        PlaceClippy();
        SpawnOrDespawnClippy();
    }

    private void SpawnOrDespawnClippy()
    {
        float handDot = Vector3.Dot(Vector3.up, handTransform.forward);
        if(handDot > 0 && !spawned)
        {
            clippyAnimtor.SetTrigger("SpawnIn");
            spawned = true;
        }
        if(handDot < 0 && spawned)
        {
            clippyAnimtor.SetTrigger("SpawnOut");
            spawned = false;
        }
    }

    private void PlaceClippy()
    {
        clippyTransform.position = handTransform.position + new Vector3(0, yOffset, 0);
        clippyTransform.LookAt(Camera.main.transform);
    }
}
