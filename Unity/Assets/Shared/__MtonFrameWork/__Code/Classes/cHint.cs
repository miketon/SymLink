using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

  public class cHint : MonoBehaviour, IHint<cInput>{ //IHint<T> providing cInput for T placeholder

  public delegate void DO_HINT(bool bHint) ; //set up delegate
  public DO_HINT DoHint_Delegate           ; //delegate instance

  public List<cInput>   collidedList = new List<cInput>() ; // HACK : Don't know how to add list to interface...
  public cLevel.fx_Hit  eHit                              ; // enum for particle system to emit

  public enum e_HintBoxType{
	Default     ,  //standard trigger enter + exit
    Distance    ,  //must be a certain distance before triggering again
	TimeElapsed    //eligible for retrigger after elapsed time
  }
  public e_HintBoxType hintBoxType;

  public  float fThreshold = 1.0f  ;
  public  cTween    tw             ;
  private Transform xform          ;

#region iHint implementation

  public virtual void OnHintEntr(cInput cINPT){ // Using IHint<cInput> to specify incoming data type
    if(cINPT != null){
	  if(this.hintBoxType == e_HintBoxType.Distance){
	    for(int i=0; i<collidedList.Count; i++){
		  if(cINPT == collidedList[i]){ // true == already collided, not eligible for collision until OnHintExit
		    return;
		  }
	    }
	    collidedList.Add(cINPT) ; // add an item to the end of the List

	    if(this.hintBoxType == e_HintBoxType.Distance){
	      OnHintExit(cINPT); //continue to check for exit on Distance
	    }

	    this.doHint(true, cINPT);
	  }
	  else{
	    this.doHint(true, cINPT);
	  }
	  // collision fx
	  if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
	    __gCONSTANT._LEVEL.Emit_Hit(eHit, this.xform.position, Quaternion.identity, ()=>{
		  return true;
		});
	  }
    }
  }

  public virtual void OnHintExit(cInput cINPT) { // Using IHint<cInput> to specify incoming data type
	StartCoroutine(__gUtility.WaitUntilDistant(this.xform, cINPT.transform, this.fThreshold, (()=>{
      for(int i=0; i<collidedList.Count; i++){
		if(cINPT == collidedList[i]){
//		  Debug.LogError(" Removing : " + cINPT);
		  collidedList.RemoveAt(i);
		}
	  }
	  this.doHint(false, cINPT) ;
      return true               ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
    })));

  }

#endregion

  public virtual void doHint(bool bHint, cInput cINPT){

	if(this.DoHint_Delegate !=null){
	  this.DoHint_Delegate(bHint);
	}
  }


  // Notes: Trigger events are only sent if one of the colliders also has a rigidbody attached. 
  // Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.
  void OnTriggerEnter(Collider other) {
//    Debug.Log("Triggering Enter : " + other.gameObject);
	  OnHintEntr(other.GetComponentEX<cInput>());
  }

  void OnTriggerExit(Collider other){
	if(this.hintBoxType == e_HintBoxType.TimeElapsed){ //TimeElapsed type
	  //TODO:Stub out time elapsed logic here
	  this.doHint(false, other.GetComponentEX<cInput>());
	}
	else if(this.hintBoxType == e_HintBoxType.Default){     //Default type 
	  this.doHint(false, other.GetComponentEX<cInput>()); //just do it
	}
  }

  public virtual void Awake(){
    xform = this.transform                                            ;
    __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._TRGGR) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
    tw = __gUtility.AddComponent_mton<cTween>(this.gameObject)        ; //Tweening 
  }

  public virtual void Start(){ }
  private void OnEnable(){
	//collidedList.RemoveAll(cInput); //The Predicate<T> is a delegate to a method that returns true if the object passed to it matches the conditions defined in the delegate
	collidedList.Clear(); 
  }
  private void OnDisable(){ }

}

}
