using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

[RequireComponent (typeof (Rigidbody))]
public class cEmit_Bullet : MonoBehaviour, IEmit<Rigidbody>{ //IHint<T> providing cInput for T placeholder

  public delegate void EMIT_ONCOMPLETE()     ; //set up delegate
  public EMIT_ONCOMPLETE OnComplete_Delegate ; //delegate instance

  private Rigidbody rBody ;
  public  float     force = 10.0f;
  public cLevel.fx_Hit  eHit ; // enum for particle system to emit

#region iEmit implementation

  public void Init(){  
//    Debug.Log(this + " Particle INIT ");
  }
  public void Play(){
	Debug.Log(this + " Shots Fired! ");
	this.rBody.AddForce(this.transform.forward * this.force) ;
  }
  public void Stop(){
	Debug.Log(this + " Shots Stopped. ");
	this.rBody.velocity = Vector3.zero ; //reset Velocity
  }

  public void OnComplete(){
	if(OnComplete_Delegate != null){
	  OnComplete_Delegate();
	}
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

  public void Update(){}

  void OnCollisionEnter(Collision collision) {
	if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
	  __gCONSTANT._LEVEL.Emit_Hit(eHit, this.transform.position, Quaternion.identity, ()=>{
        return true;
	  });
	}
	this.Stop();
  }

}

}
