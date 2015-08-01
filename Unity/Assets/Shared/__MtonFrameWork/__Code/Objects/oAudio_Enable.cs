using UnityEngine;
using System.Collections;

[RequireComponent (typeof (AudioSource))]
public class oAudio_Enable : MonoBehaviour {

	public AudioSource au;

	void Awake(){
	  au = this.GetComponent<AudioSource>();
	}

	void OnEnable(){
	  au.Play();
	}

}
