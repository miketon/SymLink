using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using MTON.codeObjects   ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

[RequireComponent (typeof (Rigidbody))]
public class cEmit_Satellite : MonoBehaviour, IEmit<Rigidbody>{ //IHint<T> providing cInput for T placeholder

  public delegate void EMIT_ONCOMPLETE()     ; //set up delegate
  public EMIT_ONCOMPLETE OnComplete_Delegate ; //delegate instance

  public Transform    xformTarget  ;
  protected Rigidbody rBody        ;
  protected Vector3   inScl        ;
  public  int         damag = 1    ;
  public  float       force = 1.0f ; 
  [Range(0.0f, 1.0f)]
  public  float     ratioDragForce = 0.5f;
  public bool           bIdle         = false ; // if true, wont' react to current level/environment state
  public float          kTimetoReact  = 1.0f  ; // time between reaction logic; else idling
  [Range(0.0f, 1.0f)]
  public float          kTimeToDrift  = 0.25f ; // time allowed for drifting (after force event) before drag spikes and holds
  public float          kDistToTarget = 1.0f  ;
  public float          fDistTgt_Look = 1.0f  ; // should be larger than seek; else entity will move towards target without 1st facing
  public float          fDistTgt_Seek = 1.0f  ;
  public cLevel.e_psFX  eHit                  ; // enum for particle system to emit

  public    oEmitter fp ; // HACK: Implicit.  If none exist this satellite doesn't have firing function

#region iEmit implementation

  public void Init(){  
    fp = __gUtility.AddComponent_mton<oEmitter>(this.gameObject)  ;
	this.inScl = this.transform.localScale;
  }
  public void Play(){
//	Debug.Log(this + " Shots Fired! ");
	this.bIdle = false; // else satellite could be locked true due to pooling
	this.transform.localScale = this.inScl;
//	this.rBody.AddForce(this.transform.forward * this.force) ;
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
//	__gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._BULLET) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	this.rBody = this.gameObject.GetComponent<Rigidbody>();
	this.Init();
  }

  public virtual void Start(){ 
	if(this.xformTarget == null){
      this.xformTarget = GameObject.FindWithTag(__gCONSTANT._PLAYER).transform;	// HACK : Inline search for target
	}
  }

  private void OnEnable() { 
    this.Play(); 
  }
  private void OnDisable(){ 
    this.Stop(); 
  }

  public void Update(){
	
	if(this.xformTarget){
      this.kDistToTarget = Vector3.Distance(this.transform.position, this.xformTarget.position);
	  if(this.kDistToTarget < this.fDistTgt_Look){
	    this.transform.doAimTowardsY(this.xformTarget.position, -1.0f);
		if(!this.bIdle){
		  Debug.Log ("IDLE START");
		  this.bIdle = true;
		  this.rBody.AddForce(this.transform.up * this.force, ForceMode.Impulse);
	      this.rBody.drag = this.force * this.ratioDragForce;
		  this.tt ("Seek").ttAdd(1.0f, ()=>{
						  Debug.Log ("IDLE DONE");
						  this.bIdle = false;
	                      this.rBody.drag *= 0.1f;
						});
		}
	  }
	}
//    this.transform.SetPosZ(0.0f); //for 2D
    if(Input.GetKeyDown(KeyCode.F)){
//	  Debug.Log("Satellite JUMP !");
	  if(this.fp != null){
	    this.fp.em.doSinglFire(true);
	  }
	  this.rBody.drag = this.force * this.ratioDragForce;
	  this.rBody.AddForce(-this.transform.up * this.force, ForceMode.Impulse);
	  this.tt().ttAdd(this.kTimeToDrift, ()=>{ //Quickly let satellite drift
	    this.rBody.drag *= 0.1f;
	  }); //using TeaTime.cs
	}

  }

  void OnCollisionEnter(Collision collision) {
	// Handle damage
	cHealth oDamage = collision.gameObject.GetComponent<cHealth>();
	if(oDamage != null){
	  oDamage.onHitd(-this.damag);
	}
	// Handle particle fx
	if(eHit != cLevel.e_psFX.None){ // set to -1 to prevent emission
	  __gCONSTANT._LEVEL.Emit_pFX(eHit, this.transform.position, Quaternion.identity, (Transform xForm)=>{
        return xForm;
	  });
	}
	// Handle on death transform animation
	this.rBody.AddForce(Vector3.up * 200.0f);
	this.transform.DOScale(Vector3.zero, 1.0f).SetEase(Ease.InBounce);
	this.tt().ttAdd(0.75f, ()=>{
	  this.gameObject.SetActive(false);
	}); //using TeaTime.cs
	this.Stop();
  }

}

}
