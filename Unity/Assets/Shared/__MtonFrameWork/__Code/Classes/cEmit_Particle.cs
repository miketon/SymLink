using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

public class cEmit_Particle : MonoBehaviour, IEmit<ParticleSystem>{ //IHint<T> providing cInput for T placeholder

  public delegate void EMIT_ONCOMPLETE()     ; //set up delegate
  public EMIT_ONCOMPLETE OnComplete_Delegate ; //delegate instance

  private ParticleSystem pSystem ;
  public  bool bChildren = true  ; //will play and stop children

#region iEmit implementation

  public void Init(){  
//    Debug.Log(this + " Particle INIT ");
  }
  public void Play(){
    if(this.pSystem != null){
	  this.pSystem.Clear(bChildren) ; //true == include children
	  this.pSystem.Play(bChildren);
	  this.tt().ttAdd(this.pSystem.duration, ()=>{
	    this.Stop();
	  }); //using TeaTime.cs
	}
  }
  public void Stop(){
//	Debug.Log(this + "Particle FX Stopping");
	if(this.pSystem != null){
	  this.pSystem.Stop(bChildren)  ; //Clearing visually gets rid of system...do I need Stop???
	  this.OnComplete();
	}
  }

  public void OnComplete(){
//    Debug.Log(this + "Particle FX Complete");
	if(OnComplete_Delegate != null){
	  OnComplete_Delegate();
	}
  }

#endregion

  public virtual void Awake(){
	__gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._SPFX) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	this.pSystem = this.gameObject.GetComponent<ParticleSystem>();
	if(this.pSystem != null){
	  this.Init();
	}
	else{
	  Debug.LogWarning(this + " PARTICLE SYSTEM COMPONENT DOESN'T EXIST ");
	}
  }

  public virtual void Start(){ }
  private void OnEnable() { this.Play(); }
  private void OnDisable(){ this.Stop(); }

  public void Update(){
//	if(Input.GetKeyDown(KeyCode.P)){
//	  Debug.Log("Pressing P");
//	  this.Play();
//	}
  }

}

}
