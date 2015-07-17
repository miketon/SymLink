using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic ; // Dictioinary
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using MTON.Interface     ;
using MTON.Global        ;
using MTON.codeObjects   ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

  public class cHint : MonoBehaviour, IHint{

#region iHint implementation
  private bool bactivehint = true   ;
  public  bool bActiveHint{
			get{
				return bactivehint;
			}
			set{
				if(value != bactivehint){
					bactivehint = value;
				}
			}
		}

//  public virtual void OnHintStart<T>(T IN_GO) where T:cInput{
//  public virtual void OnHintStart<T>(T IN_GO) where T:ScriptableObject{
//  public virtual void OnHintStart<cInput>(cInput IN_GO){
//  public virtual void OnHintStart<GameObject>(GameObject IN_GO){
  public virtual void OnHintStart(GameObject IN_GO){
//    Renderer rendr = IN_GO.GetComponent<Renderer>();
//			IN_GO.bAttk = true;
			Debug.Log("ON HINT START : " + IN_GO.GetType());
			Debug.Log("ON HINT START : " + IN_GO.tag);
    Renderer rendr = IN_GO.gameObject.GetComponent<Renderer>();
    if(rendr != null){
      cExit = rendr.material.color ;
      rendr.material.color = cEntr ;
    }
  }

  public virtual void OnHintCheck(GameObject IN_GO){ //the check logicfor
//    Debug.Log("On Hint Check: " + IN_GO);
	cINPT = IN_GO.GetComponent<cInput>();
    if(cINPT != null){
	  foreach(cInput cObject in collidedList){
		Debug.Log("Checking against List : " + cObject);
	    if(cINPT == cObject){
		  Debug.LogError(cObject + " Already Collided; Not Eligible for further collision ");
		  return;
		}
	  }
	  Debug.Log("NEW! Adding to List : " + cINPT);
	  collidedList.Add(cINPT);                                  // add an item to the end of the List

      cINPT.bJump = true;
	  GameObject dispObj = IN_GO.GetComponent<oPlayer>().dispObj.gameObject;
	  OnHintStart(dispObj);
//	  OnHintStart(cINPT);
      StartCoroutine(WaitUntilDistant(this.xform, dispObj.transform, (()=>{
        OnHintComplete(dispObj)    ;
		for(int i=0; i<collidedList.Count; i++){
		  if(cINPT == collidedList[i]){
		    Debug.LogError(" Removing : " + cINPT);
			collidedList.RemoveAt(i);
		  }
	    }
        return true                ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
      })));
    }
  }

  public virtual void OnHintComplete(GameObject IN_GO) {
    Renderer rendr = IN_GO.GetComponent<Renderer>();
    if(rendr != null){
      rendr.material.color = cExit ;
    }
  }
#endregion

		private List<cInput> collidedList = new List<cInput>();             // declaration
		//  gEntities.Add(theItem);                                  // add an item to the end of the List
		//  gEntities[i] = newItem;                                  // change the value in the List at position i
        //  cInput thisItem = List[i];                               // retrieve the item at position i
		//  gEntities.RemoveAt(i);                                   // remove the item from position i
        //  numList = nums.ToList(); // convert an array to list

  
  public  float fThreshold = 1.0f   ;
  public  Color cEntr = Color.blue  ;
  private Color cExit = Color.white ;
  private cInput    cINPT           ;
  private Transform xform           ;

  public bool Jump_Up = false ;
  public bool Jump_Fw = false ;
  public bool Move_Fw = false ;
  public bool Dir_Chg = false ;

  // Notes: Trigger events are only sent if one of the colliders also has a rigidbody attached. 
  // Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.
  void OnTriggerEnter(Collider other) {
//    Debug.Log("Triggering Enter : " + other.gameObject);
//    if(bActiveHint){
	  OnHintCheck(other.gameObject);
//    }
  }

  IEnumerator WaitUntilDistant<T>(Transform IN_xform_SRC, Transform IN_xform_TGT, Func<T> funcToRun){
//    bActiveHint       = false ;
    float distToOther = 0.0f  ;
	while(distToOther  < fThreshold){
      cINPT.bJump = false                                                          ;
//      distToOther = Vector3.Distance(IN_xform_SRC.position, IN_xform_TGT.position) ;
      distToOther = Mathf.Abs(IN_xform_SRC.position.x - IN_xform_TGT.position.x)   ; //vertical height too much delta change
      yield return null                                                            ;
    }
//    bActiveHint = true                               ;
	funcToRun()                                      ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
//    Debug.Log(" DeActivating HINT : " + bActiveHint) ;
  }

  public virtual void Awake(){
    xform = this.transform                                            ;
    __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._TRGGR) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
//	collidedList.RemoveAll(cInput);
  }

  public virtual void Start(){ }

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
