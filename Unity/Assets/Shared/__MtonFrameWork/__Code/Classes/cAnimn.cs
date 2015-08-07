using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;

namespace MTON.Class{

	// Animation Listener; Keep stateless
	public class cAnimn : MonoBehaviour, IAnimn{ 

		public cHealth ht;

#region cAnimn Delegates

		// hState
		public delegate void  DL_VDIR(Vector3 vDir) ; //set up delegate
		public delegate void  DL_Anim(bool bEvnt)   ; //set up delegate
		public delegate void  DL_Valu(int iValue)   ; //set up delegate

        public DL_VDIR OnMoveDelegate              ; //delegate instance
        public DL_VDIR OnFaceDelegate              ; //delegate instance

		public DL_Anim OnWalkDelegate            ; // Dash
		public DL_Anim OnFootDelegate            ; // Foot Step
		public DL_Anim OnDashDelegate            ; // Dash

		// lState - life State
        public DL_Anim OnSpwnDelegate            ; // Spawn
        public DL_Anim OnActvDelegate            ; // Active
        public DL_Anim OnAlivDelegate            ; // Alive
		public DL_Anim OnDactDelegate            ; // Deactived
        public DL_Anim OnDeadDelegate            ; // Dead

		// vState
        public DL_Anim OnGrndDelegate            ; // OnGround
        public DL_Anim OnCeilDelegate            ; // OnCeiling
        public DL_Anim OnIdleDelegate            ; // Idle
        public DL_Anim OnRiseDelegate            ; // Rise
        public DL_Anim OnApexDelegate            ; // Apex
        public DL_Anim OnFallDelegate            ; // Fall

		// dState
        public DL_Anim OnDuckDelegate            ; // Duck
        public DL_Anim OnJumpDelegate            ; // Jump
        public DL_Anim OnFlapDelegate            ; // Flap

		// combat States
        public DL_Anim OnAttkDelegate            ; // Attack
	    public DL_Anim OnFireDelegate            ; // Fire  : Ranged Attack
	    public DL_Anim OnAirFDelegate            ; // Fire  : Ranged Attack in Air
	    public DL_Anim OnMleeDelegate            ; // Melee : Close  Attack
	    public DL_Anim OnAirMDelegate            ; // Melee : Close  Attack in Air
	    public DL_Anim OnPowrDelegate            ; // Power : Power  Attack
	    public DL_Anim OnAirPDelegate            ; // Power : Power  Attack in Air
        public DL_Anim OnGardDelegate            ; // Guard

        public DL_Anim OnHitdDelegate            ; // Hitd

#endregion

#region cAnimn enum

		public enum eStateL{ // life state
			Idle,
			Spwn,
			Actv,
			Dact,
		    Hitd,
			Aliv,
			Dead
		}

		public enum eStateV{ // vertical state
			Idle,
			Rise,
			Apex,
			Fall
		}

		public enum eStateH{ // horizontal state
			Idle,
			Walk,
			Dash
		}

		public enum eStateF{ // facing state
			Idle, // face Idle
			Left, // face Left
			Rght  // face Right
		}

		public enum eStateB{ // useful for onGround/Crouch/Footstep
			UP  , //down
			DN  , //up
			HL  , //hold
			PW  , //power up
		}

#endregion

#region Enum Define : Custom
		// STATE : LIFE
		public  eStateL lstate;
		public  eStateL lState{
			get{
				return lstate;
			}
			set{
				if(value != lstate){
				  lstate = value;
				  if(value == eStateL.Hitd){
				    this.doHitd(true);
					this.tt ("toggleHitFalse").ttAdd(0.5f, ()=>{
					  lState = eStateL.Idle ; //toggle back to idle after hit
					});
				  }
				  else if(value == eStateL.Dead){
					this.doDead(true);
				  }
				}
			}
		}

		// STATE : VERTICAL
		public  eStateV vstate;
		public  eStateV vState{
			get{
				return vstate;
			}
			set{
				if(value != vstate){
					vstate = value ;
					if(value == eStateV.Idle){
						this.doIdle(true);
					}
					else if(value == eStateV.Fall || value == eStateV.Apex){
						this.doRise(false);
						this.doFall(true );
					}
					else if(value == eStateV.Rise){
						this.doRise(true );
						this.doFall(false);
					}
//					Debug.Log(this + " vState updated : " + value);
				}
			}
		}

		// STATE : HORIZONTAL
		public  eStateH hstate;
		public  eStateH hState{
			get{
				return hstate;
			}
			set{ // NOTE: INTERESTING !!!
				if(value == eStateH.Walk){ //continously check for walk
				  hstate = value ;
				  if(fState == eStateF.Rght){
				    doMove(Vector3.right);
				  }
				  else if(fState == eStateF.Left){
				    doMove(Vector3.left);
				  }
				}
				else{
				  if(value != hstate){ //check for others only on change
					hstate = value ;
//					Debug.Log(this + " hState updated : " + value);
				    doMove(Vector3.zero);
				  }
				}
			}
		}

		// STATE : FACING
		public  eStateF fstate;
		public  eStateF fState{
			get{
				return fstate;
			}
			set{
				if(value != fstate){
					fstate = value ;
					if(value == eStateF.Rght){
					  doFace(Vector3.right);
					}
					else if(value == eStateF.Left){
					  doFace(Vector3.left);
					}
					else{
					  doFace(Vector3.zero);
					}
//					Debug.Log(this + " fState updated : " + value);
				}
			}
		}
#endregion

#region Enum Define : Button/Bool
		// STATE : Jump
		public  eStateB jumpst ;
		public  eStateB jumpST {
			get{ return jumpst; }
			set{
				if(value != jumpst){
					jumpst = value;
					if(value == eStateB.DN){
						this.doJump(true);
					}
					else if(value == eStateB.UP){
						this.doJump(false);
					}
				}
			}
		}

		// STATE : Attack
		public  eStateB attkst ;
		public  eStateB attkST {
			get{ return attkst; }
			set{
				if(value != attkst){
					attkst = value;
					if(value == eStateB.DN){
						this.doAttk(true);
						if(this.grndST == eStateB.DN){
							this.doFire(true); //ground fire
						}
					    else if(this.grndST == eStateB.UP){ //in air
							this.doAirF(true); //air fire
						}
					}
					else if(value == eStateB.UP){
						this.doAttk(false);
						if(this.grndST == eStateB.DN){
							this.doFire(false); //ground fire
						}
					    else if(this.grndST == eStateB.UP){ //in air
							this.doAirF(false); //air fire
						}
					}
				}
			}
		}

		// STATE : GROUND
		public  eStateB grndst ;
		public  eStateB grndST {
			get{ return grndst; }
			set{
				if(value != grndst){
					grndst = value;
					if(value == eStateB.DN){
						this.doGrnd(true);
					}
					else{
						this.doGrnd(false);
					}
				}
			}
		}

		// STATE : DUCK/CROUCH
		public  eStateB duckst ;
		public  eStateB duckST{
			get{ return duckst; }
			set{
				if(value != duckst){
					duckst = value ;
//					Debug.Log(this + " dState updated : " + value);
                    if(value == eStateB.DN){
						doDuck(true);
					}
					else{
						doDuck(false);
					}
				}
			}
		}

		// STATE : CEILING
		public  eStateB ceilst ;
		public  eStateB ceilST {
			get{ return ceilst; }
			set{
				if(value != ceilst){
					ceilst = value;
					if(value == eStateB.DN){
						this.doCeil(true);
					}
					else{
						this.doCeil(false);
					}
				}
			}
		}

		// STATE : FOOT STEP
		public  eStateB footst ;
		public  eStateB footST{
			get{ return footst; }
			set{
				if(value != footst){
					footst = value ;
                    if(value == eStateB.DN){
						doFoot(true);
					}
					else{
						doFoot(false);
					}
				}
			}
		}

#endregion

#region Delegate Functions

		//transform functions
		private void doMove(Vector3 vMove){  //walk/run
		  if(this.OnMoveDelegate != null){
		    this.OnMoveDelegate(vMove);
		  }
		}
		private void doFace(Vector3 vFace){
		  if(this.OnFaceDelegate != null){
			this.OnFaceDelegate(vFace);
		  }
		}

		private void doGrnd(bool bGrnd){
		  if(this.OnGrndDelegate != null){
//			Debug.Log ("cAnimn : doGrnd : " + bGrnd + " : " + this);
		    this.OnGrndDelegate(bGrnd);
		  }
		}

		private void doIdle(bool bIdle){
		  if(this.OnIdleDelegate != null){
		    this.OnIdleDelegate(bIdle);
		  }
		} 

		private void doRise(bool bRise){
		  if(this.OnRiseDelegate != null){
		    this.OnRiseDelegate(bRise);
		  }
		}
		private void doFall(bool bFall){
		  if(this.OnFallDelegate != null){
		    this.OnFallDelegate(bFall);
		  }
		}

		private void doDuck(bool bDuck){
		  if(this.OnDuckDelegate != null){
		    this.OnDuckDelegate(bDuck);
		  }
		}

		private void doJump(bool bJump){
		  if(this.OnJumpDelegate != null){
		    this.OnJumpDelegate(bJump);
		  }
		}

		private void doAttk(bool bAttk){
		  if(this.OnAttkDelegate != null){
		    this.OnAttkDelegate(bAttk);
		  }
		}

		private void doFire(bool bFire){
		  if(this.OnFireDelegate != null){
		    this.OnFireDelegate(bFire);
		  }
		}

		private void doAirF(bool bAirF){
		  if(this.OnAirFDelegate != null){
		    this.OnAirFDelegate(bAirF);
		  }
		}

		private void doMlee(bool bMlee){
		  if(this.OnMleeDelegate != null){
		    this.OnMleeDelegate(bMlee);
		  }
		}

		private void doAirM(bool bAirM){
		  if(this.OnAirMDelegate != null){
		    this.OnAirMDelegate(bAirM);
		  }
		}

		private void doPowr(bool bPowr){
		  if(this.OnPowrDelegate != null){
		    this.OnPowrDelegate(bPowr);
		  }
		}

		private void doAirP(bool bAirP){
		  if(this.OnAirPDelegate != null){
		    this.OnAirPDelegate(bAirP);
		  }
		}

		private void doFoot(bool bFoot){
			if(this.OnFootDelegate != null){
			  this.OnFootDelegate(bFoot);
			}
		}

		private void doCeil(bool bCeil){
			if(this.OnCeilDelegate != null){
			  this.OnCeilDelegate(bCeil);
			}
		}

		private void doHitd(bool bHit){ 
			if(this.OnHitdDelegate != null){
			  this.OnHitdDelegate(bHit);
			}
		}

#endregion

		private void doDead(bool bDead){
			if(this.OnDeadDelegate != null){
			  this.OnDeadDelegate(bDead);
			}
		}

	}

}
