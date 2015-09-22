using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;

namespace MTON.Class{

	// Animation Listener; Keep stateless
	public class cAnimn : MonoBehaviour, IAnimn{ 

#region cAnimn Delegates

		// Delegate types
		public delegate void  DL_VDIR(Vector3 vDir  ) ; // Vector3 type
		public delegate void  DL_bVal(bool    bEvnt ) ; // Boolean type
		public delegate void  DL_fVal(float   fValue) ; // Float   type
		public delegate void  DL_iVal(int     iValue) ; // Int     type

        public DL_VDIR OnMoveDelegate              ; // Movin
		public DL_bVal OnStllDelegate              ; // Idle
        public DL_VDIR OnFaceDelegate              ; // Facing Dir

        public DL_fVal OnAimgDelegate              ; // Aiming Float

		// hState
		public DL_bVal OnIdlHDelegate            ; // Idle
		public DL_bVal OnWalkDelegate            ; // Dash
		public DL_bVal OnFootDelegate            ; // Foot Step
		public DL_bVal OnDashDelegate            ; // Dash
		public DL_bVal OnPlntDelegate            ; // Plnt; OnGround

		// vState
        public DL_fVal OnVelYDelegate            ; // Velocity Y Float
        public DL_bVal OnGrndDelegate            ; // OnGround
        public DL_bVal OnCeilDelegate            ; // OnCeiling
        public DL_bVal OnIdlVDelegate            ; // Idle
        public DL_bVal OnRiseDelegate            ; // Rise
        public DL_bVal OnApexDelegate            ; // Apex
        public DL_bVal OnFallDelegate            ; // Fall
        public DL_bVal OnDiveDelegate            ; // Dive

		// dState
        public DL_bVal OnDuckDelegate            ; // Duck
        public DL_bVal OnJumpDelegate            ; // Jump
        public DL_bVal OnJmpADelegate            ; // Jump Air
        public DL_bVal OnFlapDelegate            ; // Flap

		// seek/target state : AI
        public DL_bVal OnSeekIdleDelegate        ; // Idle no target in range
        public DL_bVal OnSeekAwareDelegate       ; // Aware of target in range
        public DL_bVal OnSeekAlertDelegate       ; // Alert! target in range take action
        public DL_bVal OnSeekFollowDelegate      ; // true = follow; false = flee; else idle

		// combat Attk States
        public DL_bVal OnAttkDelegate            ; // Attack
	    public DL_bVal OnFireDelegate            ; // Fire  : Ranged Attack
	    public DL_bVal OnAirFDelegate            ; // Fire  : Ranged Attack in Air
	    public DL_bVal OnMleeDelegate            ; // Melee : Close  Attack
	    public DL_bVal OnAirMDelegate            ; // Melee : Close  Attack in Air
	    public DL_bVal OnPowrDelegate            ; // Power : Power  Attack
	    public DL_bVal OnAirPDelegate            ; // Power : Power  Attack in Air

		// combat React States
        public DL_bVal OnGardDelegate            ; // Guard
        public DL_bVal OnHitdDelegate            ; // Hitd

		// lState - life State
        public DL_bVal OnSpwnDelegate            ; // Spawn
        public DL_bVal OnActvDelegate            ; // Active
        public DL_bVal OnAlivDelegate            ; // Alive
		public DL_bVal OnDactDelegate            ; // Deactived
        public DL_bVal OnDeadDelegate            ; // Dead

		// TState - Trigger State (specials, Boss Attack)
		public DL_iVal OnTrigDelegate            ; // Special/Boss Attack Trigger

		// PState - Pose State (celebrate, fidget..etc)
		public DL_iVal OnPoseDelegate            ; // Pose Trigger

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

		public enum eStateM{ // overall move state : if curPos == prevPos =>(){ //I am Still; else I am moving }
			Idle,
			Move,
			Stll
		}

		public enum eStateV{ // vertical state
			Idle,
			Rise,
			Apex,
			Fall,
			Dive
		}

		public enum eStateH{ // horizontal state
			Idle,
			Walk,
			Dash,
			Plnt, //Planted
		}

		public enum eStateF{ // facing state
			Idle, // face Idle
			Left, // face Left
			Rght  // face Right
		}

		public enum eStateB{ // useful for onGround/Crouch/Footstep
			Idle,
			UP  , //down
			DN  , //up
			HL  , //hold
			PW  , //power up
		}

		public enum eStateT{ // targeting system state : AI awareness
			Idle,
			Awre , // Aware
			Alrt , // Alert
			Folw , // Follow
			Flee , // Flee
		}

#endregion

#region Enum Define : Custom

		// STATE : MOVE (am I moving or still)
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateM mstate;
		public  eStateM mState{
			get{
				return mstate;
			}
			set{
				if(value != mstate){
					mstate = value ;
					if(value == eStateM.Stll){
						this.setStll(true);
					}
					else{
						this.setStll(false);
					}
//					Debug.Log(this + " vState updated : " + value);
				}
			}
		}

		// STATE : VERTICAL
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateV vstate;
		public  eStateV vState{
			get{
				return vstate;
			}
			set{
				if(value != vstate){
					vstate = value ;
					if(value == eStateV.Idle){
						this.setIdlV(true);
					}
					else if(value == eStateV.Fall || value == eStateV.Apex){
						this.setRise(false);
						this.setFall(true );
					}
					else if(value == eStateV.Rise){
						this.setRise(true );
						this.setFall(false);
						this.setDive(false);
					}
					else if(value == eStateV.Dive){
						this.setDive(true);
					}
//					Debug.Log(this + " vState updated : " + value);
				}
			}
		}

		// STATE : HORIZONTAL
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateH hstate;
		public  eStateH hState{
			get{
				return hstate;
			}
			set{ // NOTE: INTERESTING !!! NO DELTA FILTER. Cache at the delegate level?
				if(value == eStateH.Walk){ //continously check for walk
				  this.setPlnt(false) ;    //Planted == no; INTERESTING, must reset continously else slide
				  this.setIdlH(false) ;    //explicitly set to false so idle based events are updated correctly
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
				    doMove(Vector3.zero);
				    if(value == eStateH.Idle){
					  this.setIdlH(true)  ;
					  this.setPlnt(false) ; //releases bPlanted
					}
					else if(value == eStateH.Plnt){
					  if(this.grndST == eStateB.DN){ //onGround is true
					    setPlnt(true) ;               //Planted == yes
					  }
					}
				  }
				}
			}
		}

		// STATE : FACING
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateF fstate;
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
//					else{
//					  doFace(Vector3.zero);
//					}
//					Debug.Log(this + " fState updated : " + value);
				}
			}
		}

		// STATE : AIMING FLOAT
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB aimgst ;
		public  eStateB aimgST{
			get{ return aimgst; }
			set{
				if(value != aimgst){
			        aimgst = value ;
                    if(value == eStateB.Idle){ 
						doAimg(0.0f) ;       // OnAim release reset to 0.0f; Controls mecanim aim layer
					}
				}
			}
		}

		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateT seekst ;
		public  eStateT seekST{
			get{ return seekst; }
			set{
//			    Debug.Log ("SEEK CHANGE");
				if(value != seekst){
			        seekst = value ;
                    if(value == eStateT.Awre){
						//doAware
						this.setSeekAware(true);
					}
					else if(value == eStateT.Alrt){
						//doAlert
						this.setSeekAlert(true);
					}
					else if(value == eStateT.Folw){
						//doFollow
					    this.setSeekFollow(true);
					}
					else if(value == eStateT.Flee){
						//doFlee
					    this.setSeekFollow(false);
					}
					else{
						//doIdle;
					    this.setSeekIdle(true);
					}
				}
			}
		}

		// STATE : LIFE
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateL lstate;
		public  eStateL lState{
			get{
				return lstate;
			}
			set{
				if(value != lstate){
				  lstate = value;
				  if(value == eStateL.Hitd){
				    this.setHitd(true);
					this.tt ("toggleHitFalse").ttAdd(0.5f, ()=>{
					  lState = eStateL.Idle ; //toggle back to idle after hit
					});
				  }
				  else if(value == eStateL.Dead){
					this.setDead(true);
				  }
				}
			}
		}

#endregion

#region Enum Define : Button/Bool
		// STATE : Jump
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB jumpst ;
		public  eStateB jumpST { // Interesting Double Duty : Jump = DN; AirJump = UP; else Idle
			get{ return jumpst; }
			set{
				if(value != jumpst){
					jumpst = value;
					if(value == eStateB.DN){
						this.setJump(true);
					}
				    else if(value == eStateB.UP){
						this.setJmpA(true);
					}
					else if(value == eStateB.Idle){
						this.setJump(false);
						this.setJmpA(false);
					}
				}
			}
		}

		// STATE : Attack
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB attkst ;
		public  eStateB attkST {
			get{ return attkst; }
			set{
				if(value != attkst){
					attkst = value;
					if(value == eStateB.DN){
						this.setAttk(true);
						if(this.grndST == eStateB.DN){
							this.setFire(true); //ground fire
						}
					    else if(this.grndST == eStateB.UP){ //in air
							this.setAirF(true); //air fire
						}
					}
					else if(value == eStateB.Idle){
						this.setAttk(false);
						if(this.grndST == eStateB.DN){
							this.setFire(false); //ground fire
						}
					    else if(this.grndST == eStateB.UP){ //in air
							this.setAirF(false); //air fire
						}
					}
				}
			}
		}

		// STATE : GROUND
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB grndst ;
		public  eStateB grndST {
			get{ return grndst; }
			set{
				if(value != grndst){
					grndst = value;
					if(value == eStateB.DN){
						this.setGrnd(true);
					}
					else{
						this.setGrnd(false);
					}
				}
			}
		}

		// STATE : DUCK/CROUCH
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB duckst ;
		public  eStateB duckST{
			get{ return duckst; }
			set{
				if(value != duckst){
					duckst = value ;
//					Debug.Log(this + " dState updated : " + value);
                    if(value == eStateB.DN){
						setDuck(true);
					}
					else{
						setDuck(false);
					}
				}
			}
		}

		// STATE : CEILING
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB ceilst ;
		public  eStateB ceilST {
			get{ return ceilst; }
			set{
				if(value != ceilst){
					ceilst = value;
					if(value == eStateB.DN){
						this.setCeil(true);
					}
					else{
						this.setCeil(false);
					}
				}
			}
		}

		// STATE : FOOT STEP
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB footst ;
		public  eStateB footST{
			get{ return footst; }
			set{
				if(value != footst){
					footst = value ;
                    if(value == eStateB.DN){
						setFoot(true);
					}
					else{
						setFoot(false);
					}
				}
			}
		}

		// STATE : Trigger => Special and Boss Attacks
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB trigst ;
		public  eStateB trigST{
			get{ return trigst; }
			set{
				if(value != trigst){
			        trigst = value ;
                    if(value == eStateB.DN){    
					  this.setTrig(1);
					}
					else if(value == eStateB.UP){ 
					  this.setTrig(2);
					}
					else if(value == eStateB.HL){ 
					  this.setTrig(3);
					}
					else if(value == eStateB.PW){ 
					  this.setTrig(4);
					}
					else{
					  this.setTrig(0);
					}
				}
			}
		}

		// STATE : POSING => Win, lose...etc
		[SerializeField] //else can accidentally assign to lowercase var vs. setter var
		private eStateB posest ;
		public  eStateB poseST{
			get{ return posest; }
			set{
				if(value != posest){
			        posest = value ;
                    if(value == eStateB.Idle){    //Default Idle
					  this.setPose(0);
					}
					else if(value == eStateB.UP){ //Win
					  this.setPose(1);
					}
					else if(value == eStateB.DN){ //Lose
					  this.setPose(-1);
					}
				}
			}
		}

#endregion

#region Delegate private bool Functions

		//transform functions
		public void doMove(Vector3 vMove){  //walk/run from io
		  if(this.OnMoveDelegate != null){
		    this.OnMoveDelegate(vMove);
		  }
		}

		public void setStll(bool bStill){    //move/still from position update
		  if(this.OnStllDelegate != null){
		    this.OnStllDelegate(bStill);
		  }
		}

		public void doFace(Vector3 vFace){
		  if(this.OnFaceDelegate != null){
			this.OnFaceDelegate(vFace);
		  }
		}

		public void doVelY(float fvelY){
		  if(this.OnVelYDelegate != null){
		    this.OnVelYDelegate(fvelY);
		  }
		}

		public void doAimg(float fAimg){
			if(this.OnAimgDelegate != null){
			  this.OnAimgDelegate(fAimg);
			}
		}

#endregion

#region Delegate private bool Functions

		private void setGrnd(bool bGrnd){ 
		  if(this.OnGrndDelegate != null){
//			Debug.Log ("cAnimn : setGrnd : " + bGrnd + " : " + this);
		    this.OnGrndDelegate(bGrnd);
		  }
		}

		private bool bplnt = false ;      //INTERESTING: caching at the delegate level, because setter/getter needs to continously check
		private void setPlnt(bool bPlnt){ //isPlanted ?
		  if(bPlnt != this.bplnt){
		    this.bplnt = bPlnt;
		    if(this.OnPlntDelegate != null){
		      this.OnPlntDelegate(bPlnt);
		    }
		  }
		}

		private void setIdlV(bool bIdlV){
		  if(this.OnIdlVDelegate != null){
		    this.OnIdlVDelegate(bIdlV);
		  }
		} 

		private bool bidlh = false ;      //INTERESTING: caching at the delegate level, because setter/getter needs to continously check
		private void setIdlH(bool bIdlH){
		  if(bIdlH != this.bidlh){
		    this.bidlh = bIdlH;
		    if(this.OnIdlHDelegate != null){
		      this.OnIdlHDelegate(bIdlH);
		    }
		  }
		} 

		private void setRise(bool bRise){
		  if(this.OnRiseDelegate != null){
		    this.OnRiseDelegate(bRise);
		  }
		}
		private void setFall(bool bFall){
		  if(this.OnFallDelegate != null){
		    this.OnFallDelegate(bFall);
		  }
		}
		private void setDive(bool bDive){
		  if(this.OnDiveDelegate != null){
		    this.OnDiveDelegate(bDive);
		  }
		}


		private void setDuck(bool bDuck){
		  if(this.OnDuckDelegate != null){
		    this.OnDuckDelegate(bDuck);
		  }
		}

		private void setJump(bool bJump){
		  if(this.OnJumpDelegate != null){
		    this.OnJumpDelegate(bJump);
		  }
		}

		private void setJmpA(bool bJump){ //Air Jump
		  if(this.OnJmpADelegate != null){
		    this.OnJmpADelegate(bJump);
		  }
		}

		private void setAttk(bool bAttk){
		  if(this.OnAttkDelegate != null){
		    this.OnAttkDelegate(bAttk);
		  }
		}

		private void setFire(bool bFire){
		  if(this.OnFireDelegate != null){
		    this.OnFireDelegate(bFire);
		  }
		}

		private void setAirF(bool bAirF){
		  if(this.OnAirFDelegate != null){
		    this.OnAirFDelegate(bAirF);
		  }
		}

		private void setMlee(bool bMlee){
		  if(this.OnMleeDelegate != null){
		    this.OnMleeDelegate(bMlee);
		  }
		}

		private void setAirM(bool bAirM){
		  if(this.OnAirMDelegate != null){
		    this.OnAirMDelegate(bAirM);
		  }
		}

		private void setPowr(bool bPowr){
		  if(this.OnPowrDelegate != null){
		    this.OnPowrDelegate(bPowr);
		  }
		}

		private void setAirP(bool bAirP){
		  if(this.OnAirPDelegate != null){
		    this.OnAirPDelegate(bAirP);
		  }
		}

		private void setFoot(bool bFoot){
			if(this.OnFootDelegate != null){
			  this.OnFootDelegate(bFoot);
			}
		}

		private void setCeil(bool bCeil){
			if(this.OnCeilDelegate != null){
			  this.OnCeilDelegate(bCeil);
			}
		}

		private void setHitd(bool bHit){ 
			if(this.OnHitdDelegate != null){
			  this.OnHitdDelegate(bHit);
			}
		}

		private void setSeekIdle(bool bIdle){
			if(this.OnSeekIdleDelegate!= null){
				this.OnSeekIdleDelegate(bIdle);
			}
		}

		private void setSeekAware(bool bAware){
			if(this.OnSeekAwareDelegate!= null){
			  this.OnSeekAwareDelegate(bAware);
			}
		}

		private void setSeekAlert(bool bAlert){
			if(this.OnSeekAlertDelegate != null){
			  this.OnSeekAlertDelegate(bAlert);
			}
		}

		private void setSeekFollow(bool bFollw){
			if(this.OnSeekFollowDelegate != null){
			  this.OnSeekFollowDelegate(bFollw);
			}
		}

#endregion

		private void setDead(bool bDead){
			if(this.OnDeadDelegate != null){
			  this.OnDeadDelegate(bDead);
			}
		}

#region Delegate private Functions : Special Trigger and Pose

		private void setTrig(int iTrig){
			if(this.OnTrigDelegate != null){
			  this.OnTrigDelegate(iTrig);
			}
		}

		private void setPose(int iPose){
			if(this.OnPoseDelegate != null){
			  this.OnPoseDelegate(iPose);
			}
		}

#endregion

	}

}
