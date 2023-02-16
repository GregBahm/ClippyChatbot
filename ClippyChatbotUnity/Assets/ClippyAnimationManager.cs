using System;
using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

[RequireComponent(typeof(MainScript))]
public class ClippyAnimationManager : MonoBehaviour
{
    private MainScript main;

    [SerializeField]
    private Animator animator;

    private ClippyStatus lastStatus;

    private void Start()
    {
        main = GetComponent<MainScript>();
    }

    private void Update()
    {
        if (main.Status == ClippyStatus.Listening && lastStatus != ClippyStatus.Listening)
        {
            animator.SetTrigger("StartListening");
        }
        if(main.Status == ClippyStatus.ThinkingOfWhatToSay && lastStatus != ClippyStatus.ThinkingOfWhatToSay)
        {
            animator.SetTrigger("StartThinking");
        }
        if(main.Status == ClippyStatus.Speaking && lastStatus != ClippyStatus.Speaking)
        {
            animator.SetTrigger("StartTalking");
        }
        if(main.Status == ClippyStatus.PatientlyWaiting && lastStatus == ClippyStatus.Speaking)
        {
            animator.SetTrigger("FinishTalking");
        }
        lastStatus = main.Status;
    }
}
