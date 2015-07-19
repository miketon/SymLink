using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictioinary
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using MTON.codeObjects   ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

  public class cHint : MonoBehaviour, IHint<cInput>{ //IHint<T> providing cInput for T placeholder

#region iHint implementation

  public List<cInput> collidedList = new List<cInput>();      // declaration
  //  gEntities.Add(theItem);                                  // add an item to the end of the List
  //  gEntities[i] = newItem;                                  // change the value in the List at position i
  //  cInput thisItem = List[i];                               // retrieve the item at position i
  //  gEntities.RemoveAt(i);                                   // remove the item from position i
  //  numList = nums.ToList(); // convert an array to list

  public virtual void OnHintEntr(cInput cINPT){ // Using IHint<cInput> to specify incoming data type
    if(cINPT != null){
//	  foreach(cInput cObject in collidedList){
	  for(int i=0; i<collidedList.Count; i++){
		if(cINPT == collidedList[i]){ // true == already collided, not eligible for collision until OnHintExit
		  return;
		}
	  }
	  collidedList.Add(cINPT);                                  // add an item to the end of the List

      cINPT.bJump = true;
	  cINPT.bActV = true;
	  tw.doCrouch(0.33f, 0.5f);

	  StartCoroutine(WaitUntilDistant(this.xform, cINPT.transform, (()=>{
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
	cINPT.bActV = false;
	tw.doCrouch(1.0f);
  }

#endregion

  public  float fThreshold = 1.0f   ;
  private Transform xform           ;

  private cTween    tw    ;

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

  IEnumerator WaitUntilDistant<T>(Transform IN_xform_SRC, Transform IN_xform_TGT, Func<T> funcToRun){
    float distToOther = 0.0f  ;
	while(distToOther  < fThreshold){
//      distToOther = Vector3.Distance(IN_xform_SRC.position, IN_xform_TGT.position) ;
      distToOther = Mathf.Abs(IN_xform_SRC.position.x - IN_xform_TGT.position.x)   ; //vertical height too much delta change, so only check x
      yield return null                                                            ;
    }
	funcToRun()                                                                    ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
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

/* Dictionary Implementation

  //This is how you create a Dictionary. Notice how this takes
  //two generic terms. In this case you are using a string and a
  //gEntity as your two values.
  Dictionary<string, gEntity> gEntities = new Dictionary<string, gEntity>();

//This is the class you will be storing in the different collections. In order to use
//a collection's Sort() method, this class needs to implement the IComparable interface.
public class gEntity : IComparable<gEntity>
{
    public string name   ;
	public int    power  ;
    
	public gEntity(string IN_Name, int IN_Power){  // init
		name  = IN_Name  ;
		power = IN_Power ;
    }
    
    //This method is required by the IComparable interface. 
	public int CompareTo(gEntity other){

        if(other == null){
            return 1; // ??? 1 does not identify that other doesn't exist
        }
        
		return power - other.power; //Return the difference in power.
    }
}
*/

}
