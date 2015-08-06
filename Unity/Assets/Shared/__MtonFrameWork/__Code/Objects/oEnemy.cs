using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oEnemy : oPlayer{

	private bool binput = false;
	public bool bInput{
			get{
				return binput;
			}
			set{
				binput = value;
				if(binput == true){
				  //direct input
				  io.OnDPAD_DIR_Delegate += doMove;
				  io.OnJumpDelegate      += doJump;
				  io.OnAttkDelegate      += doAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
				  io.OnActVDelegate      += doActV; //Attack Visual = hitFlash
				}
				else{
				  //direct input
				  io.OnDPAD_DIR_Delegate -= doMove;
				  io.OnJumpDelegate      -= doJump;
				  io.OnAttkDelegate      -= doAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
				  io.OnActVDelegate      -= doActV; //Attack Visual = hitFlash
				}
			}
	}
	public Transform player           ;
	public Color cRest = Color.green  ;
	public Color cAwre = Color.yellow ;
	public Color cActv = Color.red    ;

	public override void init_Components(){
	  base.init_Components();
	}

	public override void Start(){
	  base.Start();
	  this.bInput = false; // don't read input by default
	  rendr.material.color = cRest;
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	  if(this.player == null){
	    this.player = __gCONSTANT._LEVEL.mPlayer;
	  }
	}

	public virtual void AI_Actv(bool bActive){
	  if(bActive){
	    rendr.material.color = cAwre;
	  }
	  else{
	    rendr.material.color = cRest;
	  }
	}

	public float fRngAlert = 4.0f;
	public float fRngAttck = 2.0f;
	
	private void Update(){
	  this.doAI_Intel();
	}

	public float stopRadMult = 3.0f;

	private void doAI_Intel(){
	  float dist = this.doRangeCheck(this.xform, this.player, fRngAlert, (bool bRange)=>{
		if(bRange == true){
//		  Vector3 centerOffset = new Vector3(0.0f, rb.cHeight * 0.5f, 0.0f);
//		  Debug.DrawLine(this.xform.position + centerOffset, this.player.position + centerOffset, Color.yellow);
		  AI_Actv(true);
	      io.bInput = true;
		}
		else{
		  AI_Actv(false);
	      io.bInput = false;
		}
	    return true;
      });

	  if(Mathf.Abs(dist) < this.fRngAlert){  
	    this.doMove(-Vector3.right * Mathf.Sign(this.xform.position.x - this.player.position.x));
	    if(Mathf.Abs(dist) < this.fRngAttck){
	      rendr.material.color = cActv;
		  if(Mathf.Abs(dist) < (rb.cRadius * stopRadMult)){
			this.ai_ATTK();
		    this.ai_IDLE();
		  }
	    }
	  }
	  else{
		this.ai_IDLE();
	  }
		
	}

	public void ai_IDLE(){
	  this.doMove(Vector3.zero);
	}

	public float doRangeCheck<T>(Transform IN_SRC, Transform IN_TGT, float IN_DIST, Func<bool, T> funcToRun){
	  float dist = Vector3.Distance(IN_SRC.position, IN_TGT.position);
	  bool  bRng = false;
	  if(dist < IN_DIST){
	    bRng = true ;
	  }
	  funcToRun(bRng);
	  return dist;
	}
	
	public bool ai_ATTK(){
	   Debug.Log ("I am biting!");
	   Vector3 dCenter = this.xform.position + rb.cen;
	   RaycastHit hit;
	   if(this.bFaceRt == true){
	     Ray ray = new Ray(dCenter, xform.right);
	     Physics.Raycast(ray, out hit, 2.0f);
		 Debug.DrawRay(dCenter, xform.right, Color.yellow, 0.5f);
	   }
	   else{
	     Ray ray = new Ray(dCenter, -xform.right);
		 Physics.Raycast(ray, out hit, 2.0f);
		 Debug.DrawRay(dCenter, -xform.right, Color.yellow, 0.5f);
	   }
	   Collider rbHit = hit.collider;
	   if(rbHit != null){
	     Debug.Log ("Found to bite : " + rbHit);
	   }
	   else{
	     Debug.Log ("NO BITE : " + rbHit);
	   }
	   
	  return false;
	}

	public int damag = 1;

//    void OnCollisionEnter(Collision collision) {
//	  Debug.Log("Enemy ONHIT!! " + collision.gameObject);
//	  cHealth oDamage = collision.gameObject.GetComponent<cHealth>();
//	  if(oDamage != null){
//	    oDamage.onHitd(-this.damag);
//	  }
//	  if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
//	      __gCONSTANT._LEVEL.Emit_Hit(eHit, this.transform.position, Quaternion.identity, ()=>{
//          return true;
//	    });
//	  }
//	}

  }

}
