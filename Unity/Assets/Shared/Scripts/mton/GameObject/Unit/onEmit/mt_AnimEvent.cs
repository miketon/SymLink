using UnityEngine;
using System.Collections;

[RequireComponent(typeof(AudioSource))]
public class mt_AnimEvent : MonoBehaviour { //put me on same transform as animator object

  public Animator animator          ;
  public GameObject[] go_Pos        ;
  public GameObject[] go_FX         ;
  public AudioClip[]  au_FX         ; //play when jumping
  public float audio_Volume = 1.0f  ;
  public bool randomPitch   = true  ;
  public float randomRange  = 0.25f ;

  private Transform xform ;

  void Awake(){
    xform = transform;
  }

  void PlayAtObjectTransform(int in_Int){ //int = 100=audio[index]                               ; 10=go_FX[index]     ; 1=go_Pos[index]
    int index_Audio = 0                                                                          ; //in_Int%100        ;
    int index_goFX  = 0                                                                          ; //in_Int%10         ;
    int index_xform = 0                                                                          ; //in_Int            ;
    Instantiate(go_FX[index_Audio], go_Pos[index_xform].transform.position, Quaternion.identity) ; //xformFX.rotation) ;
    PlaySoundFx(index_goFX)                                                                      ;
  }

  /*** --- UTILITIES --- ***/

  void PlaySoundFx(int index_Audio){
    audio.volume        = audio_Volume       ;
    AudioClip audioClip = au_FX[index_Audio] ;

    if(audioClip!=null){
      if(!audio.isPlaying){
        if(randomPitch){
          audio.pitch  = Random.Range(1.0f-randomRange, 1.0f+randomRange) ;
        }
        audio.clip = audioClip ;
        audio.Play()           ;
      }
    }

  }

}
