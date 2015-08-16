using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oEnemy : oPlayer{

	public Transform player     ;
	private bool binput = false ;
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

#region base Overrides
	public override void Start(){
	  base.Start();
	  this.bInput = false; // don't read input by default
	  rendr.material.color = cRest;
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	  if(this.player == null){
	    this.player = __gCONSTANT._LEVEL.mPlayer;
	  }
	}

    private Vector3 vFacePrev = Vector3.zero;
    public override void doFace(Vector3 vFace){ // Adding a pause to the face left and right flip
	  base.doFace(vFace);
//	  Debug.Log ("DOFACE : " + vFace);
	  if(vFace != Vector3.zero){
	    float randomDur = 1.0f; //UnityEngine.Random.Range(0.75f, 1.5f);
	    if(vFace != this.vFacePrev){       ; // MUST : filters to trigger rest only on turn else, stutter turn on faceIdle
	      ai_REST(this.fIntel * randomDur) ;
		  this.vFacePrev = vFace           ;
		}
	  }
	}

	public void doMove_AI (Vector3 moveDir){
	  if(this.bIntel){ //Only on Intel can move
	    base.doMove (moveDir);
	  }
	}

#endregion
	
	private int iThought = 0;
	private void Update(){
	  if(this.bIntel){     //if intelligence active : do AI
	    this.doAI_Intel();
	  }

	  if(Input.GetKeyDown(KeyCode.P)){
//	    this.bInput = !this.bInput;
		this.bIntel = !this.bIntel;
		this.iThought++;
		this.ai_REST(1.0f, "tt_THINK", ()=>{
				  Debug.Log ("Thinking : " + this.iThought);
				  return true;
				});
	  }
	}

#region AI functions

	public float fRngAware = 10.0f ;
	public float fRngAlert = 6.0f  ;
	public float fRngAttck = 3.5f  ;
	public bool  bIntel = true     ; //at rest doesn't actively function
	public float fIntel = 1.0f     ; //How fast can AI switch between rest/active

	private void doAI_Intel(){
	  this.doRangeCheck(this.xform, this.player, this.fRngAware * rb.cRadius, (bool bRange, float fDist)=>{
		if(bRange){
//		  Vector3 centerOffset = new Vector3(0.0f, rb.cHeight * 0.5f, 0.0f);
//		  Debug.DrawLine(this.xform.position + centerOffset, this.player.position + centerOffset, Color.yellow);
		  AI_Actv(true);
		  this.ai_FOLLOW(fDist);
//	      io.bInput = true;
		}
		else{
		  AI_Actv(false);
		  this.ai_IDLE();
//	      io.bInput = false;
		}
	    return true;
      });
	}
	
	public void ai_FOLLOW(float IN_DIST){
	  this.doMove_AI(-Vector3.right * Mathf.Sign(this.xform.position.x - this.player.position.x));
	  this.an.doMove(Vector3.right);
	  if(Mathf.Abs(IN_DIST) < this.fRngAlert * rb.cRadius){     // Entering Alert Range
	    this.an.attkST = cAnimn.eStateB.Idle;                   // Cocking attack : force state change if true
	    rendr.material.color = cActv;
		if(Mathf.Abs(IN_DIST) < (this.fRngAttck * rb.cRadius)){ // Entering Attack Range
	      rendr.material.color = this.cAttk;
	      this.ai_ATTK();
		}
	  }
	}

	public void ai_IDLE(){
	  this.doMove_AI(Vector3.zero);
	}

	public bool ai_ATTK(){
	  ai_REST(this.fIntel * 1.5f);
	  GameObject oHit;
	  Vector3 dCenter = this.xform.position + rb.cen;
	  Vector3 attkDir = this.player.transform.position - this.xform.position;
	  oHit = this.doRayDir(dCenter, attkDir, this.fRngAttck * rb.cRadius);

	  if(oHit != null){
	    oPlayer pHit = oHit.GetComponent<oPlayer>();
		if(pHit != null){
		  pHit.doJump(true);
		  Debug.Log ("Attacking : " + pHit);
		  ai_BITE(oHit.transform.position);
          this.an.attkST = cAnimn.eStateB.DN;
		}
	  }
	  return false;
	}
	
    // AI REST *************************
	private void ai_REST(float IN_DUR=1.0f){
		this.ai_REST(IN_DUR, "tt_REST", ()=>{ return true; });
	}
	
	private void ai_REST(float IN_DUR, string IN_QUE){
		this.ai_REST(IN_DUR, IN_QUE, ()=>{ return true; });
	}

	private void ai_REST<T>(float IN_DUR, string IN_QUE, Func<T> funcToRun){
	  this.bIntel = false;
	  this.tt (IN_QUE).ttReset();
	  this.tt (IN_QUE).ttAdd(IN_DUR, ()=>{ 
				this.bIntel = true;
				funcToRun(); 
	  });
	}
    // AI REST *************************

#endregion

	public cLevel.fx_Hit eBit;

	private void ai_BITE(Vector3 IN_POS){
	  if(this.eBit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
	    __gCONSTANT._LEVEL.Emit_pFX(eBit, IN_POS, Quaternion.identity, ()=>{
          return true;
	    });
	  }
	}

	public void doRangeCheck<T>(Transform IN_SRC, Transform IN_TGT, float IN_DIST, Func<bool, float, T> funcToRun){
	  float dist = Vector3.Distance(IN_SRC.position, IN_TGT.position);
	  bool  bRng = false;
	  if(dist < IN_DIST){
	    bRng = true ;
	  }
	  funcToRun(bRng, dist);
	}

#region Utility
	public Color cRest = Color.white  ;
	public Color cAwre = Color.green  ;
	public Color cActv = Color.yellow ;
	public Color cAttk = Color.red    ;

	public virtual void AI_Actv(bool bActive){
	  if(bActive){
	    rendr.material.color = cAwre;
	  }
	  else{
	    rendr.material.color = cRest;
	  }
	}

	public GameObject doRayDir(Vector3 IN_POS, Vector3 IN_DIR, float IN_DIST = 2.0f){
	  RaycastHit hit;
	  Ray ray = new Ray(IN_POS, IN_DIR);
	  Physics.Raycast(ray, out hit, IN_DIST);
	  Debug.DrawRay(IN_POS, IN_DIR, Color.yellow, 0.75f);
	  if(hit.collider != null){
	    return hit.collider.gameObject;
	  }
	  else{
	    return null;
	  }
	}

//	public GameObject doRayDir(Vector3 IN_POS, Vector3 IN_DIR, float IN_RAD, float IN_DIST = 2.0f){
//	  RaycastHit hit;
//	  Ray ray = new Ray(IN_POS, IN_DIR);
//	  Physics.SphereCast(ray, IN_RAD, out hit, IN_DIST);
//	  Debug.DrawRay(IN_POS, IN_DIR, Color.yellow, 0.5f);
//	  Debug.DrawRay(IN_POS+Vector3.up*IN_RAD, IN_DIR, Color.yellow, 0.5f);
//	  Debug.DrawRay(IN_POS+-Vector3.up*IN_RAD, IN_DIR, Color.yellow, 0.5f);
//	  if(hit.collider != null){
//	    return hit.collider.gameObject;
//	  }
//	  else{
//	    return null;
//	  }
//	}

#endregion

//	  public int damag = 1;
//    void OnCollisionEnter(Collision collision) {
//	  Debug.Log("Enemy ONHIT!! " + collision.gameObject);
//	  cHealth oDamage = collision.gameObject.GetComponent<cHealth>();
//	  if(oDamage != null){
//	    oDamage.onHitd(-this.damag);
//	  }
//	  if(eHit != cLevel.fx_Hit.None){ // set to -1 to prevent emission
//	      __gCONSTANT._LEVEL.Emit_pFX(eHit, this.transform.position, Quaternion.identity, ()=>{
//          return true;
//	    });
//	  }
//	}

  }

}
