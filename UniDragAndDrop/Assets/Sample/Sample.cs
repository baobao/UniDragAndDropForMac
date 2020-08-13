using System.Collections;
using System.Collections.Generic;
using Shibuya24.Utility;
using UnityEngine;
using UnityEngine.UI;

public class Sample : MonoBehaviour
{
    [SerializeField] private Text _text;

    void Start()
    {
        UniDragAndDrop.onDragAndDropFilePath = x => _text.text = x;
        UniDragAndDrop.Initialize();
    }
}
