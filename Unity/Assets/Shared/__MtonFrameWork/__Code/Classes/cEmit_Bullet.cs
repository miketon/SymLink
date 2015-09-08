using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

[RequireComponent (typeof (Rigidbody))]
public class cEmit_Bullet : MonoBehaviour, IEmit<Rigidbody>{ //IHint<T> providing cInput for T placeholder

  public delegate void EMIT_ONCOMPLETE()     ; //set up delegate
  public EMIT_ONCOMPLETE OnComplete_Delegate ; //delegate instance

  protected Rigidbody rBody ;
  protected Vector3   inScl ;
  public  int       damag = 1       ;
  public  float     force = 1750.0f ;
  public cLevel.fx_Hit  eHit ; // enum for particle system to emit

#region iEmit implementation

  public void Init(){  
	  this.inScl = this.transform.localScale;
//    Debug.Log(this + " Particle INIT ");
  }
  public void Play(){
//	Debug.Log(this + " Shots Fired! ");
	this.transform.localScale = this.inScl   ;
//	this.rBody.velocity       = Vector3.zero ;
	this.rBody.AddForce(this.transform.forward * this.force) ;
  }
  public void Stop(){
//	Debug.Log(this + " Shots Stopped. ");
	this.rBody.velocity = Vector3.zero ; //reset Velocity
  }

  public virtual void OnComplete(){
	if(OnComplete_Delegate != null){
	  OnComplete_Delegate();
	}
//    Debug.Log ("EMIT BULLET COMPLETE ! " + this);
  }

#endregion

  public virtual void Awake(){
	__gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._BULLET) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	this.rBody = this.gameObject.GetComponent<Rigidbody>();
	this.Init();
  }

  public virtual void Start(){ }
  private void OnEnable() { this.Play(); }
  private void OnDisable(){ this.Stop(); }

  public void Update(){
//    this.transform.SetPosZ(0.0f); //for 2D
  }

  void OnCollisionEnter(Collision collision) {
	cHealth oDamage = collision.gameObject.GetComponent<cHealth>();
	if(oDamage != null){
	  oDamage.onHitd(-this.damag);
	}
	if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
	  __gCONSTANT._LEVEL.Emit_pFX(eHit, this.transform.position, Quaternion.identity, (Transform xForm)=>{
        return xForm;
	  });
	}
	this.rBody.AddForce(Vector3.up * 200.0f);
	this.transform.DOScale(Vector3.zero, 1.0f).SetEase(Ease.InBounce);
	this.tt().ttAdd(0.75f, ()=>{
	  this.gameObject.SetActive(false);
	}); //using TeaTime.cs
	this.Stop();
  }

}

}
