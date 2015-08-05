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
		  if(Mathf.Abs(dist) < (rb.cRadius * 3.5f)){
		    this.doIdle();
		  }
	    }
	  }
	  else{
		this.doIdle();
	  }
		
	}

	public void doIdle(){
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

  }

}
