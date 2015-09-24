using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cMcanm : MonoBehaviour, IAnimn_ID {

	// mecanim animator
	private Animator _anim;
	public Animator anim {
	  get{ return this._anim; }
	  set{
	    if(value != this._anim){
		  this._anim = value;
		  if(value != null){ //initialize on valid anim assignment
		    this.Init();  
		  }
		}
	  }
	}
	public cAnimn   anST ; // animation state

	public void Init(){
	  if(anim != null){
	    //animation state delegates
	    if(anST == null){
	      anST = this.GetComponent<cAnimn>();
		}

		if(anST != null){ // must do as separate if check
		  //Vector3
          anST.OnMoveDelegate += OnMove;
		  //Float
		  anST.OnVelYDelegate += OnVelY;
		  anST.OnAimgDelegate += OnAimg;
		  //Bool
	      anST.OnGrndDelegate += SetGrnd;
          anST.OnDuckDelegate += SetDuck;
          anST.OnJumpDelegate += SetJump;
          anST.OnJmpADelegate += SetJmpA;
          anST.OnPlntDelegate += SetPlnt;
          anST.OnAttkDelegate += SetAttk;
		  anST.OnHitdDelegate += this.SetHitd;
		  
		  anST.OnTrigDelegate += OnTrig;
		  anST.OnPoseDelegate += OnPose;
	    }
	  }
	}

    private void OnDisable(){
	  if(anim != null){
	    //animation state delegates
		//Vector3
        anST.OnMoveDelegate -= OnMove;
		//Float
		anST.OnVelYDelegate -= OnVelY;
		anST.OnAimgDelegate -= OnAimg;
		//Bool
	    anST.OnGrndDelegate -= SetGrnd;
        anST.OnDuckDelegate -= SetDuck;
        anST.OnJumpDelegate -= SetJump;
        anST.OnJmpADelegate -= SetJmpA;
        anST.OnPlntDelegate -= SetPlnt;
        anST.OnAttkDelegate -= SetAttk;
		anST.OnHitdDelegate -= this.SetHitd;

		anST.OnTrigDelegate -= OnTrig;
		anST.OnPoseDelegate -= OnPose;
	  }
	}

	#region implement IAnimn_ID

    public string _kVertcl	;
    public string _kHorizn  ;
    public string _kAiming  ;
    public string _bPlantd  ;
    public string _bGround	;
    public string _bCrouch	;
    public string _bJump    ;
    public string _bJmpA    ;
    public string _bAttk    ;
    public string _bHitd    ;
    public string _bForwrd	;
    public string _bSpawnd  ;
    public string _bDeathd  ;
    public string _bPoseID  ;
    public string _bPoseWN  ;
    public string _bPoseLS  ;

    public string _tSpec_0 ;
    public string _tSpec_1 ;
    public string _tSpec_2 ;
    public string _tSpec_3 ;

    public string _fAudio0  ; // name of custom curve to get from animator

	public int _kVertcl_ID { get; set; } //vertical   delta
    public int _kHorizn_ID { get; set; } //horizontal delta
    public int _kAiming_ID { get; set; } //horizontal delta
    public int _bPlantd_ID { get; set; }
    public int _bGround_ID { get; set; }
    public int _bCrouch_ID { get; set; }
    public int _bJump_ID   { get; set; }
    public int _bJmpA_ID   { get; set; } //air jump
    public int _bAttk_ID   { get; set; }
    public int _bHitd_ID   { get; set; }
    public int _bForwrd_ID { get; set; } //2d true == right; 3d true == forward
	public int _bSpawnd_ID { get; set; } 
    public int _bDeathd_ID { get; set; } 

    public int _tSpec_0_ID { get; set; }  //Trigger Special 1-4 (for Boss and Special Attack)
    public int _tSpec_1_ID { get; set; } 
    public int _tSpec_2_ID { get; set; } 
    public int _tSpec_3_ID { get; set; } 

	// Pose
    public int _bPoseID_ID { get; set; } //Idle
    public int _bPoseWN_ID { get; set; } //Win
    public int _bPoseLS_ID { get; set; } //Lose

	public int _fAudio0_ID { get; set; } 

	public void Awake(){
		this.animator_Hash_ID();
	}

	public void animator_Hash_ID(){ //HACK : if Animator fails to find string, it'll return a value of 0
//		Debug.Log ("Hashing : " + this);
		_kVertcl_ID = Animator.StringToHash(this._kVertcl);
		_kHorizn_ID = Animator.StringToHash(this._kHorizn);
		_kAiming_ID = Animator.StringToHash(this._kAiming);
		_bGround_ID = Animator.StringToHash(this._bGround);
		_bPlantd_ID = Animator.StringToHash(this._bPlantd);
		_bJump_ID   = Animator.StringToHash(this._bJump  );
		_bJmpA_ID   = Animator.StringToHash(this._bJmpA  );
		_bAttk_ID   = Animator.StringToHash(this._bAttk  );
		_bHitd_ID   = Animator.StringToHash(this._bHitd  );
		_bCrouch_ID = Animator.StringToHash(this._bCrouch);
		_bForwrd_ID = Animator.StringToHash(this._bForwrd);
		_bSpawnd_ID = Animator.StringToHash(this._bSpawnd);
		_bDeathd_ID = Animator.StringToHash(this._bDeathd);

		// Trigger Special
		_tSpec_0_ID = Animator.StringToHash(this._tSpec_0);
		_tSpec_1_ID = Animator.StringToHash(this._tSpec_1);
		_tSpec_2_ID = Animator.StringToHash(this._tSpec_2);
		_tSpec_3_ID = Animator.StringToHash(this._tSpec_3);

		// Pose
		_bPoseID_ID = Animator.StringToHash(this._bPoseID); // Idle
		_bPoseWN_ID = Animator.StringToHash(this._bPoseWN); // Win
		_bPoseLS_ID = Animator.StringToHash(this._bPoseLS); // Lose

		_fAudio0_ID = Animator.StringToHash(this._fAudio0);
	}

	#endregion

	#region Set Values

	public void OnVelY(float fVel_Y){
      if(_kVertcl_ID != 0){
	    anim.SetFloat(_kVertcl_ID, fVel_Y);
	  }
	}

	public void OnMove(Vector3 moveDir){
	  if(_kHorizn_ID != 0){
//		Debug.Log ("Enemy Mecanim OnMove : "  + moveDir);
        anim.SetFloat(_kHorizn_ID, Mathf.Abs (moveDir.x)); // x move should be 0.0f to 1.0f
	  }
	}

	public void OnAimg(float IN_AIM){
	  if(_kAiming_ID != 0){
	    anim.SetFloat(_kAiming_ID, IN_AIM);                // aiming can be -1.0f to 1.0f
//	    Debug.Log ("OnAimg : " + IN_AIM);
	  }
	}

	public void SetGrnd(bool bGround){
	  if(_bGround_ID != 0){
	    anim.SetBool(_bGround_ID, bGround);
	  }
	}

	public void SetDuck(bool bCrouch){
	  if(_bCrouch_ID != 0){
	    anim.SetBool(_bCrouch_ID, bCrouch);
	  }
	}

	public void SetJump(bool bJump){
	  if(_bJump_ID != 0){
		if(bJump == true){ //need to check for trigger; else double tap effect
	      anim.SetTrigger(_bJump_ID);
		}
	  }
	}

    public void SetJmpA(bool bJump){
	  if(_bJmpA_ID != 0){
		if(bJump == true){ //need to check for trigger; else double tap effect
	      anim.SetTrigger(_bJmpA_ID);
		}
	  }
	}

    public void SetAttk(bool bAttk){
	  if(_bAttk_ID != 0){
		if(bAttk == true){ //need to check for trigger; else double tap effect
	      anim.SetTrigger(_bAttk_ID);
		}
	  }
	}

	public void SetHitd(bool bHitd){
	  if(_bHitd_ID != 0){
		if(bHitd == true){ //need to check for trigger; else double tap effect
	      anim.SetTrigger(_bHitd_ID);
		}
	  }
	}

    public void SetPlnt(bool bPlnt){
	  if(_bPlantd_ID != 0){
	    anim.SetBool(_bPlantd_ID, bPlnt);
	  }
	}

    public void OnSpawn(bool bSpawn){
	  if(_bSpawnd_ID != 0 ){
	    anim.SetBool(_bSpawnd_ID, bSpawn);
	  }
	}

	public void SetDead(bool bDead){
	  if(_bDeathd_ID != 0){
	    anim.SetBool(_bDeathd_ID, bDead);
	  }
	}

	public void OnTrig(int iTrig){
	  Debug.Log (this + " ONTRIGGGGER " + iTrig);
	  if(iTrig == 0){
	    if(_tSpec_0_ID != 0){
		  anim.SetTrigger(_tSpec_0_ID);
		}
	  }
	  else if(iTrig == 1){
		if(_tSpec_1_ID != 1){
		  anim.SetTrigger(_tSpec_1_ID);
		}
	  }
	  else if(iTrig == 2){
		if(_tSpec_2_ID != 2){
	      anim.SetTrigger(_tSpec_2_ID);
		}
	  }
	  else if(iTrig == 3){
		if(_tSpec_3_ID != 3){
		  anim.SetTrigger(_tSpec_3_ID);
		}
	  }
	}

	public void OnPose(int iPose){                 // Trigger based on int
	  if(iPose == 0){                             // 0 = Idle pose 
	    if(this._bPoseID_ID != 0){
	      anim.SetTrigger(this._bPoseID_ID);
		}
      }
	  else if(iPose == 1){                       // 1 = Win pose 
	    if(this._bPoseWN_ID != 0){
	      anim.SetTrigger(this._bPoseWN_ID);
		}
	  }
	  else if(iPose ==-1){                       //-1 = Lose pose 
	    if(this._bPoseLS_ID != 0){
	      anim.SetTrigger(this._bPoseLS_ID);
		}
	  }
	}

    #endregion

	#region Get Values

	public bool GetCurvefBool(int IN_curveID, float IN_threshold = 0.90f){ //Convert float to bool; good for getting footsteps
	  if(IN_curveID != 0){
	    float fVal = Mathf.Abs(anim.GetFloat(IN_curveID));
	    if(fVal >= IN_threshold){
	      return true ; //footstep is down
	    }
	  }
	  return false  ;//footstep is in air
	}

	public float GetCurveFloat(int IN_curveID){
	  if(IN_curveID != 0){
	    return anim.GetFloat(IN_curveID);
	  }
	  return 0.0f;
	}

	#endregion


}
