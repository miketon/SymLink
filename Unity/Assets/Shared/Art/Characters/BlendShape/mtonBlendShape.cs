﻿using UnityEngine;
using System.Collections;
using DG.Tweening                ; //import tweens

public class mtonBlendShape : MonoBehaviour {

	public Renderer rendr;
	public int blendShapeCount;
	public SkinnedMeshRenderer skinnedMeshRenderer;
	public Mesh skinnedMesh;

	// Use this for initialization
	void Start () {
	  skinnedMeshRenderer = GetComponent<SkinnedMeshRenderer> ();
	  skinnedMesh = GetComponent<SkinnedMeshRenderer> ().sharedMesh;  //???Shared mesh???
      blendShapeCount = skinnedMesh.blendShapeCount; 
	}


    //DOTween variables
    private Tween tw_Cache ; //tween cache -> to interrupt and end currently playing tween
	
	// Update is called once per frame
	void Update () {
	  if(Input.GetKeyDown(KeyCode.B)){
		if (blendShapeCount > 0) { //check to see if blendshape exist
		  Debug.Log("Blending Down : " + this);
//		  skinnedMeshRenderer.SetBlendShapeWeight (0, 100);	
		  tw_Cache = DOTween.To(()=> skinnedMeshRenderer.GetBlendShapeWeight(0), x=>skinnedMeshRenderer.SetBlendShapeWeight(0, x), 100.0f, 0.1f) ;
		}
	  }
	  else if(Input.GetKeyUp(KeyCode.B)){
		if (blendShapeCount > 0) {
		  Debug.Log("Blending Release : " + this);
//		  skinnedMeshRenderer.SetBlendShapeWeight (0, 0);	
		  tw_Cache = DOTween.To(()=> skinnedMeshRenderer.GetBlendShapeWeight(0), x=>skinnedMeshRenderer.SetBlendShapeWeight(0, x), 0.0f, 0.5f) ;
		}
	  }
	}
}