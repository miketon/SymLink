using UnityEngine;
using System.Collections;

public class PlayerMove_mton_IO_audio : PlayerMove_mton_IO{

  private AudioSource audioSource_H    ;
  private AudioSource audioSource_V    ;
  private AudioSource audioSource_JUMP ;
  public GameObject oAx_H              ;
  public GameObject oAx_V              ;
  public GameObject oJump              ;

  public float hPitch  = 2.0f ;
  public float hPan    = 2.0f ;
  public float hVolume = 1.0f ;

  // map audio to touch movement
  public override void io_Touch(){
    base.io_Touch()                             ;
    doAudioTouch()                              ;
    //print("I am filtering audio." + this.__h) ;
  }

  void doAudioTouch(){
    float vAxis          = Mathf.Clamp(this.__v, -1.0f, 0.5f) ;
    audioSource_H.volume = this.__h *  __h * hVolume          ;
    audioSource_V.volume = vAxis * vAxis                      ;
    audioSource_H.pan    = this.__h * hPan                    ;
    audioSource_H.pitch  = Mathf.Abs(  this.__h) * hPitch     ; // (  this.__h * 0.5f) + 1.0f ;
    audioSource_V.pan    = vAxis * 2.0f                       ;
    audioSource_V.pitch  = 2.0f + -vAxis                      ;
  }

  public override void doStart(){
    base.doStart()                                         ;
    audioSource_H      = oAx_H.GetComponent<AudioSource>() ;
    audioSource_V      = oAx_V.GetComponent<AudioSource>() ;
    audioSource_JUMP   = oJump.GetComponent<AudioSource>() ;
    audioSource_H.loop = true                              ;
    audioSource_V.loop = true                              ;
    audioSource_H.Play()                                   ;
    audioSource_V.Play()                                   ;
  }
  /*	
      public override void doUpdate(){
      base.doUpdate();
      }
      */
}

