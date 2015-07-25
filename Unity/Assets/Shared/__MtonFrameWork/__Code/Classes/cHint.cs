using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

  public class cHint : MonoBehaviour, IHint<cInput>{ //IHint<T> providing cInput for T placeholder

  public List<cInput>   collidedList = new List<cInput>() ; // HACK : Don't know how to add list to interface...
  public cLevel.fx_Hit  eHit                              ; // enum for particle system to emit

#region iHint implementation

  public virtual void OnHintEntr(cInput cINPT){ // Using IHint<cInput> to specify incoming data type
    if(cINPT != null){
	  for(int i=0; i<collidedList.Count; i++){
		if(cINPT == collidedList[i]){ // true == already collided, not eligible for collision until OnHintExit
		  return;
		}
	  }
	  collidedList.Add(cINPT);                                  // add an item to the end of the List

      cINPT.bJump = true;
	  cINPT.bActV = true;
	  tw.doCrouch(0.33f, 0.5f);

	  if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
		__gCONSTANT._LEVEL.Emit_Hit(eHit, this.xform.position, Quaternion.identity, ()=>{
		  return true;
		});
	  }

	  StartCoroutine(__gUtility.WaitUntilDistant(this.xform, cINPT.transform, this.fThreshold, (()=>{
        cINPT.bJump = false                                                          ;
		OnHintExit(cINPT)    ;
		for(int i=0; i<collidedList.Count; i++){
		  if(cINPT == collidedList[i]){
//		    Debug.LogError(" Removing : " + cINPT);
			collidedList.RemoveAt(i);
		  }
	    }
        return true                ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
      })));
    }
  }

  public virtual void OnHintExit(cInput cINPT) { // Using IHint<cInput> to specify incoming data type
	cINPT.bActV = false ;
	tw.doCrouch(1.0f)   ;
  }

#endregion

  public  float fThreshold = 1.0f  ;
  private Transform xform          ;
  private cTween    tw             ;

  public bool Jump_Up = false ;
  public bool Jump_Fw = false ;
  public bool Move_Fw = false ;
  public bool Dir_Chg = false ;

  // Notes: Trigger events are only sent if one of the colliders also has a rigidbody attached. 
  // Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.
  void OnTriggerEnter(Collider other) {
//    Debug.Log("Triggering Enter : " + other.gameObject);
	  OnHintEntr(other.GetComponentEX<cInput>());
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
