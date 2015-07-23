using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

public class cEmit_Particle : MonoBehaviour, IEmit<ParticleSystem>{ //IHint<T> providing cInput for T placeholder

  private ParticleSystem pSystem ;

#region iEmit implementation

  public void OnInit(ParticleSystem IN_p){

  }
  public void OnPlay(ParticleSystem IN_p){

  }
  public void OnStop(ParticleSystem IN_p){

  }

#endregion

  public virtual void Awake(){
	__gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._SPFX) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	this.pSystem = this.gameObject.GetComponent<ParticleSystem>();
	if(this.pSystem != null){
	  this.OnInit(pSystem);
	}
	else{
	  Debug.LogWarning(this + " PARTICLE SYSTEM COMPONENT DOESN'T EXIST ");
	}
  }

  public virtual void Start(){ }
  private void OnEnable() { }
  private void OnDisable(){ }

}

}
