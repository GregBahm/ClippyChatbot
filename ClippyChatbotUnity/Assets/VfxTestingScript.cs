using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VfxTestingScript : MonoBehaviour
{
    [SerializeField]
    private Animator clippyAnimtor;

    [SerializeField]
    private GameObject spawnInVfx;

    [SerializeField] 
    private GameObject spawnOutVfx;

    [SerializeField]
    private bool testSpawnIn;

    [SerializeField]
    private bool testSpawnOut;

    private void Update()
    {
        if(testSpawnIn)
        {
            testSpawnIn = false;
            DoTestSpawnIn();
        }
        if(testSpawnOut)
        {
            testSpawnOut = false;
            DoTestSpawnOut();
        }
    }

    private void DoTestSpawnOut()
    {
        clippyAnimtor.SetTrigger("SpawnOut");
        spawnOutVfx.SetActive(false);
        spawnOutVfx.SetActive(true);
    }

    private void DoTestSpawnIn()
    {
        clippyAnimtor.SetTrigger("SpawnIn");
        spawnInVfx.SetActive(false);
        spawnInVfx.SetActive(true);
    }
}
