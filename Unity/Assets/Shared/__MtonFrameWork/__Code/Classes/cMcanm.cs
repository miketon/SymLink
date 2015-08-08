using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cMcanm : MonoBehaviour, IAnimn_ID {

	public Animator anim ; // mecanim animator
	public cAnimn   anST ; // animation state

	private void OnEnable(){ // NOTE : Fires before start
	  this.Init();           // Will miss delegates on 1st pass...but will get on re Enables???
	}

	private void Start(){    // NOTE : Fires after OnEnable
	  this.Init();           // Will catch what OnEnable will miss
	}

	public void Init(){
	  if(anim != null){
	    //animation state delegates
	    if(anST == null){
	      anST = this.GetComponent<cAnimn>();
	    }
	    if(anST != null){
		  //Vector3
          anST.OnMoveDelegate += OnMove;
		  //Float
		  anST.OnAimgDelegate += OnAimg;
		  //Bool
	      anST.OnGrndDelegate += OnGrnd;
          anST.OnDuckDelegate += OnDuck;
          anST.OnJumpDelegate += OnJump;
          anST.OnPlntDelegate += OnPlnt;
          anST.OnAttkDelegate += OnAttk;
	    }
	  }
	}

    private void OnDisable(){
	  if(anim != null){
	    //animation state delegates
		//Vector3
        anST.OnMoveDelegate -= OnMove;
		//Float
		anST.OnAimgDelegate -= OnAimg;
		//Bool
	    anST.OnGrndDelegate -= OnGrnd;
        anST.OnDuckDelegate -= OnDuck;
        anST.OnJumpDelegate -= OnJump;
        anST.OnPlntDelegate -= OnPlnt;
        anST.OnAttkDelegate -= OnAttk;
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
    public string _bAttk    ;
    public string _bForwrd	;
    public string _bSpawnd  ;
    public string _bDeathd  ;

    public string _fAudio0  ; // name of custom curve to get from animator

	public int _kVertcl_ID { get; set; } //vertical   delta
    public int _kHorizn_ID { get; set; } //horizontal delta
    public int _kAiming_ID { get; set; } //horizontal delta
    public int _bPlantd_ID { get; set; }
    public int _bGround_ID { get; set; }
    public int _bCrouch_ID { get; set; }
    public int _bJump_ID   { get; set; }
    public int _bAttk_ID   { get; set; }
    public int _bForwrd_ID { get; set; } //2d true == right; 3d true == forward
	public int _bSpawnd_ID { get; set; } 
    public int _bDeathd_ID { get; set; } 

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
		_bAttk_ID   = Animator.StringToHash(this._bAttk  );
		_bCrouch_ID = Animator.StringToHash(this._bCrouch);
		_bForwrd_ID = Animator.StringToHash(this._bForwrd);
		_bSpawnd_ID = Animator.StringToHash(this._bSpawnd);
		_bDeathd_ID = Animator.StringToHash(this._bDeathd);

		_fAudio0_ID = Animator.StringToHash(this._fAudio0);
	}

	#endregion

	#region Set Values

	public void OnGrnd(bool bGround){
	  if(_bGround_ID != 0){
	    anim.SetBool(_bGround_ID, bGround);
	  }
	}

	public void OnMove(Vector3 moveDir){
	  if(_kHorizn_ID != 0){
        anim.SetFloat(_kHorizn_ID, Mathf.Abs (moveDir.x)); // x move should be 0.0f to 1.0f
	  }

	}

	public void OnAimg(float IN_AIM){
	  if(_kAiming_ID != 0){
	    anim.SetFloat(_kAiming_ID, IN_AIM);                // aiming can be -1.0f to 1.0f
	    Debug.Log ("OnAimg : " + IN_AIM);
	  }
	}

	public void OnDuck(bool bCrouch){
	  if(_bCrouch_ID != 0){
	    anim.SetBool(_bCrouch_ID, bCrouch);
	  }
	}

	public void OnJump(bool bJump){
	  if(_bJump_ID != 0){
		if(bJump == true){ //need to check for trigger; else double tap effect
	      anim.SetTrigger(_bJump_ID);
		}
	  }
	}

    public void OnAttk(bool bAttk){
	  Debug.Log ("MECANIM : OnAttk " + bAttk);
	  if(_bAttk_ID != 0){
		if(bAttk == true){ //need to check for trigger; else double tap effect
	      anim.SetTrigger(_bAttk_ID);
	      Debug.Log ("MECANIM : OnAttk Triggered " + bAttk);
		}
	  }
	}

    public void OnPlnt(bool bPlnt){
	  if(_bPlantd_ID != 0){
	    anim.SetBool(_bPlantd_ID, bPlnt);
	  }
	}

    public void OnSpawn(bool bSpawn){
	  if(_bSpawnd_ID != 0 ){
	    anim.SetBool(_bSpawnd_ID, bSpawn);
	  }
	}

	public void OnDead(bool bDead){
	  if(_bDeathd_ID != 0){
	    anim.SetBool(_bDeathd_ID, bDead);
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
