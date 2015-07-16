using UnityEngine        ;
using System.Collections ;
using System             ; //NOTE : ??? must import to use anonymous function
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

  public virtual void OnHintStart(GameObject IN_GO){
    Renderer rendr = IN_GO.GetComponent<Renderer>();
    if(rendr != null){
      cExit = rendr.material.color ;
      rendr.material.color = cEntr ;
    }
  }

  public virtual void OnHintCheck(GameObject IN_GO){ //the check logicfor
    Debug.Log("On Hint Check: " + IN_GO);
	cINPT = IN_GO.GetComponent<cInput>();
    if(cINPT != null){
      cINPT.bJump = true;
	  GameObject dispObj = IN_GO.GetComponent<oPlayer>().dispObj.gameObject;
	  OnHintStart(dispObj);
      StartCoroutine(WaitUntilDistant(this.xform, dispObj.transform, (()=>{
        OnHintComplete(dispObj)    ;
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
    if(bActiveHint){
	  OnHintCheck(other.gameObject);
    }
  }

  IEnumerator WaitUntilDistant<T>(Transform IN_xform_SRC, Transform IN_xform_TGT, Func<T> funcToRun){
    bActiveHint       = false ;
    float distToOther = 0.0f  ;
	while(distToOther  < fThreshold){
      cINPT.bJump = false                                                          ;
//      distToOther = Vector3.Distance(IN_xform_SRC.position, IN_xform_TGT.position) ;
      distToOther = Mathf.Abs(IN_xform_SRC.position.x - IN_xform_TGT.position.x)   ; //vertical height too much delta change
      yield return null                                                            ;
    }
    bActiveHint = true                               ;
	funcToRun()                                      ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
//    Debug.Log(" DeActivating HINT : " + bActiveHint) ;
  }

  public virtual void Awake(){
    xform = this.transform                                            ;
    __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._TRGGR) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
  }

  public virtual void Start(){ }

}

}
