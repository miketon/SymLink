using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;
using MTON.codeObjects   ;

namespace MTON.Class{

  public class cLevel_AI_Hint : cLevel{

	public  Color cEntr = Color.blue  ;
	private Color cExit = Color.white ;
	private Renderer rendr;
	private cInput   cINPT;

	public bool Jump_Up = false;
	public bool Jump_Fw = false;
	public bool Move_Fw = false;
	public bool Dir_Chg = false;

    // Notes: Trigger events are only sent if one of the colliders also has a rigidbody attached. 
	// Trigger events will be sent to disabled MonoBehaviours, to allow enabling Behaviours in response to collisions.
	void OnTriggerEnter(Collider other) {
	  Debug.Log("Triggering Enter : " + other.gameObject);
	  rendr = other.gameObject.GetComponent<oPlayer>().dispObj.gameObject.GetComponent<Renderer>();
	  if(rendr != null){
		cExit = rendr.material.color ;
	    rendr.material.color = cEntr ;
	  }
	  cINPT = other.gameObject.GetComponent<cInput>();
	  if(cINPT != null){
	    cINPT.bJump = true;
	  }
	}

    void OnTriggerExit(Collider other) {
	  Debug.Log("Triggering Exit : " + other.gameObject);
	  rendr = other.gameObject.GetComponent<oPlayer>().dispObj.gameObject.GetComponent<Renderer>();
	  if(rendr != null){
	    rendr.material.color = cExit ;
	  }
    }

	public override void Awake(){
	  base.Awake();
	  __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._TRGGR); // HACK :level triggers/hint should ignore ground raycast/collision check!
	}

	public override void Start(){
	  base.Start();
	}

  }

}
