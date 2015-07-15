using UnityEngine        ;
using System.Collections ;
using System             ; //NOTE : ??? must import to use anonymous function
using MTON.Interface     ;
using MTON.Global        ;
using MTON.codeObjects   ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

  public class cLevel_AI_Hint : cLevel{

	public  Color cEntr = Color.blue  ;
  private Color cExit = Color.white ;
  private cInput    cINPT           ;
  private Transform xform           ;
  private bool bActiveHint = true   ;

  public float fActive = 0.0f ;
  public bool Jump_Up = false ;
  public bool Jump_Fw = false ;
  public bool Move_Fw = false ;
  public bool Dir_Chg = false ;

  // Notes: Trigger events are only sent if one of the colliders also has a rigidbody attached. 
  // Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.
  void OnTriggerEnter(Collider other) {
    Debug.Log("Triggering Enter : " + other.gameObject);
    if(bActiveHint){
      cINPT = other.gameObject.GetComponent<cInput>();
      if(cINPT != null){
        float distToOther = Vector3.Distance(other.transform.position, xform.position);
        Debug.Log("Distance : " + distToOther + " fActive : " + fActive);
        if(distToOther > fActive){
          cINPT.bJump = true;
          GameObject dispObj = other.gameObject.GetComponent<oPlayer>().dispObj.gameObject;
          StartCoroutine(WaitUntilDistant(this.xform, dispObj.transform, (()=>{
                  Debug.Log("Lambda Rules!") ;
                  onCompleteHint(dispObj)    ;
                  return true                ; // NOTE : anonymous method of type `System.Func<T>' must return a value ; else error
          })));
        }
        onStartHint(other.gameObject.GetComponent<oPlayer>().dispObj.gameObject);
      }
    }
  }

  IEnumerator WaitUntilDistant<T>(Transform IN_xform_SRC, Transform IN_xform_TGT, Func<T> funcToRun){
    bActiveHint       = false ;
    float distToOther = 0.0f  ;
    while(distToOther  < 1.0f){
      cINPT.bJump = false                                                          ;
      distToOther = Vector3.Distance(IN_xform_SRC.position, IN_xform_TGT.position) ;
      yield return null                                                            ;
    }
    bActiveHint = true                               ;
    funcToRun()                                      ;
    Debug.Log(" DeActivating HINT : " + bActiveHint) ;
  }

  void onStartHint(GameObject IN_GO){
    Renderer rendr = IN_GO.GetComponent<Renderer>();
    if(rendr != null){
      cExit = rendr.material.color ;
      rendr.material.color = cEntr ;
    }
  }

  void onCompleteHint(GameObject IN_GO) {
    Renderer rendr = IN_GO.GetComponent<Renderer>();
    if(rendr != null){
      rendr.material.color = cExit ;
    }
  }

  public override void Awake(){
    base.Awake()                                                      ;
    xform = this.transform                                            ;
    __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._TRGGR) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
  }

  public override void Start(){
    base.Start();
  }

  }

}
