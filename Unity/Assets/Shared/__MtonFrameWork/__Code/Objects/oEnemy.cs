using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oEnemy : oPlayer{

    public override void Start(){ //Overriding Player Layer Setting
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
    }

#region AI prop

	public  Transform player    ;
	private bool binput = false ; //if input==true, this is not a player
	public  bool bInput{
			get{
				return binput;
			}
			set{
				binput = value;
				if(binput == true){
				  //re-add player specific items
				  this.io = __gUtility.AddComponent_mton<cInput>(this.gameObject);
//				  this.rd = __gUtility.AddComponent_mton<cRadar>(this.gameObject) ; // Commented out because enemy never needs radar

				  //direct input
				  io.OnDPAD_DIR_Delegate += doMove;
				  io.OnJumpDelegate      += setJump;
				  io.OnAttkDelegate      += setAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
				  io.OnActVDelegate      += setActV; //Attack Visual = hitFlash
				  io.OnPowrDelegate      += setPowr;
				}
				else{
				  //direct input
				  io.OnDPAD_DIR_Delegate -= doMove;
				  io.OnJumpDelegate      -= setJump;
				  io.OnAttkDelegate      -= setAttk; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
				  io.OnActVDelegate      -= setActV; //Attack Visual = hitFlash
				  io.OnPowrDelegate      -= setPowr;

				  //remove player specific items
//				  Component.Destroy(this.io); //removing input
				  this.io = null;
				  Component.Destroy(this.rd); //removing radar
				  this.rd = null; 
				}
			}
	}

#endregion

#region base Overrides

	public override void InitDelegates (){
	  base.InitDelegates ();
	  an.OnSeekIdleDelegate  += ai_IDLE;
	  an.OnSeekAwareDelegate += ai_AWRE;
	  an.OnSeekAlertDelegate += ai_ALRT;

	  this.bInput = false; // don't read input by default
	  rendr.material.color = sAI.cIdle;
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	  if(this.player == null){
	    this.player = __gCONSTANT._LEVEL.mPlayer;
	  }
	}

	public override void DisableDelegates (){
	  base.DisableDelegates ();
	  an.OnSeekIdleDelegate  -= ai_IDLE;
	  an.OnSeekAwareDelegate -= ai_AWRE;
	  an.OnSeekAlertDelegate -= ai_ALRT;
	}

    private Vector3 vFacePrev = Vector3.zero;
    public override void doFace(Vector3 vFace){ // Adding a pause to the face left and right flip
	  base.doFace(vFace);
//	  Debug.Log ("DOFACE : " + vFace);
	  if(vFace != Vector3.zero){
	    float randomDur = 1.0f; //UnityEngine.Random.Range(0.75f, 1.5f);
	    if(vFace != this.vFacePrev){       ; // MUST : filters to trigger rest only on turn else, stutter turn on faceIdle
	      ai_REST(this.sAI.fIntel * randomDur) ;
		  this.vFacePrev = vFace           ;
		}
	  }
	}

	public virtual void doMove_AI(Vector3 moveDir){
	  if(this.sAI.bIntel){ //Only on Intel can move
	    base.doMove (moveDir)   ;
	    this.an.doMove(moveDir) ;
	  }
	}

#endregion
	
	private int iThought = 0;
	public virtual void Update(){
	  if(this.an != null){
	  if(this.sAI.bIntel){     //if intelligence active : do AI
	    this.doAI_Intel();
	  }

	  if(Input.GetKeyDown(KeyCode.P)){
//	    this.bInput = !this.bInput;
		this.sAI.bIntel = !this.sAI.bIntel;
		this.iThought++;
		this.ai_REST(1.0f, "tt_THINK", ()=>{
				  Debug.Log ("Thinking : " + this.iThought);
				  return true;
				});
	  }
	  }
	}

#region AI functions

	public s_Ai_Properties sAI = new s_Ai_Properties();
	[Serializable] //MUST : add so that this custom data type can be displayed in the inspector
    public struct s_Ai_Properties{

	  public bool  bIntel    ; //default = true  ; //at rest doesn't actively function
	  public float fIntel    ; //defalut = 1.0f  ; //How fast can AI switch between rest/active
	  public float fRngAware ; //default = 10.0f ;
	  public float fRngAlert ; //default = 6.0f  ;
	  public float fRngAttck ; //default = 3.5f  ;

	  public Color cIdle ; //default = Color.white  ;
	  public Color cAwre ; //default = Color.green  ;
	  public Color cAlrt ; //default = Color.yellow ;
	  public Color cAttk ; //default = Color.red    ;

	}

	protected void doAI_Intel(){
	  this.transform.doRangeCheck(this.player, this.sAI.fRngAware * rb.cRadius, (bool bRange, float fDist)=>{
		if(bRange){
		  Vector3 centerOffset = new Vector3(0.0f, rb.cHeight * 0.5f, 0.0f);
		  Debug.DrawLine(this.xform.position + centerOffset, this.player.position + centerOffset, Color.yellow);
		  this.ai_FOLLOW(fDist);
		}
		else{
		  this.an.seekST = cAnimn.eStateT.Idle;
		}
	    return true;
      });
	}
	
   public virtual void ai_FOLLOW(float IN_DIST){
	  this.doMove_AI(-Vector3.right * Mathf.Sign(this.xform.position.x - this.player.position.x));
	  if(Mathf.Abs(IN_DIST) < this.sAI.fRngAlert * rb.cRadius){     // Entering Alert Range
	    this.an.seekST = cAnimn.eStateT.Alrt;
	    this.an.attkST = cAnimn.eStateB.Idle;                       // Cocking attack : force state change if true
	    rendr.material.color = sAI.cAlrt;
		if(Mathf.Abs(IN_DIST) < (this.sAI.fRngAttck * rb.cRadius)){ // Entering Attack Range
	      this.an.seekST = cAnimn.eStateT.Folw;
	      rendr.material.color = this.sAI.cAttk;
	      this.ai_ATTK();
		}
	  }
	  else{
	    this.an.seekST = cAnimn.eStateT.Awre;
	  }
	}
	
	public virtual void ai_IDLE(bool bIdle){
	  this.doMove_AI(Vector3.zero);
	  this.an.attkST = cAnimn.eStateB.Idle;
	  rendr.material.color = this.sAI.cIdle;
	}

	public virtual  bool ai_ATTK(){
	  ai_REST(this.sAI.fIntel * 1.5f);
	  GameObject oHit;
	  Vector3 dCenter = this.xform.position + rb.cen;
	  Vector3 attkDir = this.player.transform.position - this.xform.position;
	  oHit = this.transform.doRayHit(dCenter, attkDir, this.sAI.fRngAttck * rb.cRadius);

	  if(oHit != null){
//	    oPlayer pHit = oHit.GetComponent<oPlayer>();
	    cHealth pHit = oHit.GetComponent<cHealth>();
		if(pHit != null){
//		  pHit.doHitd(0, attkDir);
		  pHit.onHitd(-5, attkDir);
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
	  this.sAI.bIntel = false;
	  this.tt (IN_QUE).ttReset();
	  this.tt (IN_QUE).ttAdd(IN_DUR, ()=>{ 
				this.sAI.bIntel = true;
				funcToRun(); 
	  });
	}
    // AI REST *************************

#endregion

	public cLevel.e_psFX eBit;

	private void ai_BITE(Vector3 IN_POS){
	  if(this.eBit != cLevel.e_psFX.None){ // set to -1 to prevent emission
	    __gCONSTANT._LEVEL.Emit_pFX(eBit, IN_POS, Quaternion.identity, (Transform xForm)=>{
          return xForm;
	    });
	  }
	}

#region Utility

	public virtual void ai_AWRE(bool bAware){
	  if(bAware){
	    rendr.material.color = sAI.cAwre;
	  }
	  else{
	    rendr.material.color = sAI.cIdle;
	  }
	}

	public virtual void ai_ALRT(bool bAlert){
	  if(bAlert){
	    rendr.material.color = sAI.cAlrt;
	  }
	  else{
	    rendr.material.color = sAI.cAwre;
	  }
	}

#endregion

  }

}
