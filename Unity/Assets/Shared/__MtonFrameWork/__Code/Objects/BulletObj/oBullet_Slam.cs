using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

[RequireComponent (typeof (Collider))]
public class oBullet_Slam : MonoBehaviour, IEmit<Rigidbody>{ //IHint<T> providing cInput for T placeholder

  public delegate void SLAM_ONCOMPLETE()     ; //set up delegate
  public SLAM_ONCOMPLETE OnComplete_Delegate ; //delegate instance

  public  AnimationCurve ac_SlamY         ;
  public  AnimationCurve ac_FadeX         ;
  public  float durShake = 1.0f;
  private Vector3   inScl                 ;
  public  Vector3   inPos                 ;
  public  Vector3   initVec3 = Vector3.up ;
  public  int       damag    = 1          ;
  public  float     timeSlam = 1.0f       ;
  public  cLevel.e_psFX  eHit  ; // enum for particle system to emit
  public  cLevel.e_Anim  eDld  ; // enum for Dust Land  Animator Object to play

  private  Transform pCamera                  ; //player camera

#region iEmit implementation

  public void Init(){  
	pCamera = __gCONSTANT._LEVEL.mCamera.transform;
    this.inScl = this.transform.localScale;
//    this.inPos = this.transform.position; //initial slam position
//    this.transform.position += this.initVec3;
//    Debug.Log(this + " Particle INIT ");
  }
  public void Play(){
//	Debug.Log(this + " Shots Fired! ");
	this.inPos = this.transform.position; // store updated/target position
	this.transform.position  += this.initVec3 ;
    this.transform.DOLocalMoveY(this.inPos.y, timeSlam).SetEase(this.ac_SlamY).OnComplete(()=>{
	  __gCONSTANT._LEVEL.fx_Dust(this.eDld, this.transform.position, true);
	  this.transform.DOShakeScale(durShake);
	  this.pCamera.DOShakePosition(durShake);
	  this.tt().ttAdd(1.0f, delegate(){
	    this.transform.DOScaleX(Mathf.Epsilon, 0.25f).SetEase(ac_FadeX);
	  });
    });
  }
  public void Stop(){
//	Debug.Log(this + " Shots Stopped. ");
	this.gameObject.SetActive(false);
  }

  public void OnComplete(){
	if(OnComplete_Delegate != null){
	  OnComplete_Delegate();
	}
  }

#endregion

  public virtual void Awake(){
	__gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._BULLET) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	this.Init();
  }

  public virtual void Start(){ }
  private void OnEnable() { this.Play(); }
  private void OnDisable(){ 
    this.Stop(); 
	this.transform.localScale = this.inScl; //reset scale
  }

  void OnCollisionEnter(Collision collision) {
	cHealth oDamage = collision.gameObject.GetComponent<cHealth>();
	if(oDamage != null){
	  oDamage.onHitd(-this.damag);
	}
	if(eHit != cLevel.e_psFX.None){ // set to -1 to prevent emission
	  __gCONSTANT._LEVEL.Emit_pFX(eHit, this.transform.position, Quaternion.identity, (Transform xForm)=>{
	    return xForm;
	  });
	}
//	this.transform.DOScale(Vector3.zero, 1.0f).SetEase(Ease.InBounce);
//	this.tt().ttAdd(0.75f, ()=>{
//	  this.gameObject.SetActive(false);
//	}); //using TeaTime.cs
	this.Stop();
  }

}

}
