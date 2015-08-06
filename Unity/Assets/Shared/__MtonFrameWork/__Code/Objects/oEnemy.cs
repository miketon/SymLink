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
	  GameObject oHit;
	  Vector3 dCenter = this.xform.position + rb.cen;
	  Vector3 attkDir = this.player.transform.position - this.xform.position;
	  oHit = this.doRayDir(dCenter, attkDir, 0.5f);

	  if(oHit != null){
	    oPlayer pHit = oHit.GetComponent<oPlayer>();
		if(pHit != null){
		  pHit.doJump(true);
		  Debug.Log ("Attacking : " + pHit);
		}
	  }
	  return false;
	}

	public GameObject doRayDir(Vector3 IN_POS, Vector3 IN_DIR){

	  RaycastHit hit;
	  Ray ray = new Ray(IN_POS, IN_DIR);
	  Physics.Raycast(ray, out hit, 2.0f);
	  Debug.DrawRay(IN_POS, IN_DIR, Color.yellow, 0.75f);
	  if(hit.collider != null){
	    return hit.collider.gameObject;
	  }
	  else{
	    return null;
	  }

	}

	public GameObject doRayDir(Vector3 IN_POS, Vector3 IN_DIR, float IN_RAD){
	  RaycastHit hit;
	  Ray ray = new Ray(IN_POS, IN_DIR);
	  Physics.SphereCast(ray, IN_RAD, out hit, 2.0f);
	  Debug.DrawRay(IN_POS, IN_DIR, Color.yellow, 0.5f);
	  Debug.DrawRay(IN_POS+Vector3.up*IN_RAD, IN_DIR, Color.yellow, 0.5f);
	  Debug.DrawRay(IN_POS+-Vector3.up*IN_RAD, IN_DIR, Color.yellow, 0.5f);
	  if(hit.collider != null){
	    return hit.collider.gameObject;
	  }
	  else{
	    return null;
	  }
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
