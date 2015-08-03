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

	private void Init(){
	  //animation state delegates
	  if(anST == null){
	    anST = this.GetComponent<cAnimn>();
	  }
	  if(anST != null){
        anST.OnMoveDelegate += OnMove;
	    anST.OnGrndDelegate += OnGrnd;
        anST.OnDuckDelegate += OnDuck;
        anST.OnJumpDelegate += OnJump;
	  }
	}

    private void OnDisable(){
	  //animation state delegates
      anST.OnMoveDelegate -= OnMove;
	  anST.OnGrndDelegate -= OnGrnd;
      anST.OnDuckDelegate -= OnDuck;
      anST.OnJumpDelegate -= OnJump;
	}

	#region implement IAnimn_ID

    public string _kVertcl	;
    public string _kHorizn  ;
    public string _bGround	;
    public string _bCrouch	;
    public string _bJump    ;
    public string _bForwrd	;
    public string _bSpawnd  ;
    public string _bDeathd  ;

    public string _fCurve1  ; // name of custom curve to get from animator

	public int _kVertcl_ID { get; set; } //vertical   delta
    public int _kHorizn_ID { get; set; } //horizontal delta
    public int _bGround_ID { get; set; }
    public int _bCrouch_ID { get; set; }
    public int _bJump_ID   { get; set; }
    public int _bForwrd_ID { get; set; } //2d true == right; 3d true == forward
	public int _bSpawnd_ID { get; set; } 
    public int _bDeathd_ID { get; set; } 

	public int _fCurve1_ID { get; set; } 

	public void Awake(){
		this.animator_Hash_ID();
	}

	public void animator_Hash_ID(){ //HACK : if Animator fails to find string, it'll return a value of 0
//		Debug.Log ("Hashing : " + this);
		_kVertcl_ID = Animator.StringToHash(this._kVertcl);
		_kHorizn_ID = Animator.StringToHash(this._kHorizn);
		_bGround_ID = Animator.StringToHash(this._bGround);
		_bJump_ID   = Animator.StringToHash(this._bJump  );
		_bCrouch_ID = Animator.StringToHash(this._bCrouch);
		_bForwrd_ID = Animator.StringToHash(this._bForwrd);
		_bSpawnd_ID = Animator.StringToHash(this._bSpawnd);
		_bDeathd_ID = Animator.StringToHash(this._bDeathd);

		_fCurve1_ID = Animator.StringToHash(this._fCurve1);
	}

	#endregion

	#region Set Values

	public void OnGrnd(bool bGround){
	  if(_bGround_ID != 0){
	    anim.SetBool(_bGround_ID, bGround);
	  }
	}

//	public float getvaluemton = 420.0f;
//	public float getvalueiton = 420.0f;

	public void OnMove(Vector3 moveDir){
	  if(_kHorizn_ID != 0){
        anim.SetFloat(_kHorizn_ID, Mathf.Abs (moveDir.x));
//		this.getvaluemton = anim.GetFloat(_kHorizn_ID);
//		this.getvalueiton = anim.GetFloat(0); // DAMN : returns 0.0f if it can't find property
	  }
	}

	public void OnDuck(bool bCrouch){
	  if(_bCrouch_ID != 0){
	    anim.SetBool(_bCrouch_ID, bCrouch);
	  }
	}

	public void OnJump(bool bJump){
	  if(_bJump_ID != 0){
	    anim.SetTrigger(_bJump_ID);
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

	public bool GetFootStep(){
	  bool bFoot = false;
	  if(_fCurve1_ID != 0){
	    float fVal = anim.GetFloat(_fCurve1_ID);
		if(Mathf.Abs(fVal) >= 0.90f){
		  bFoot = true; //footstep is down
		}
		else{
		  bFoot = false; //footstep is in air
		}
	  }
	  return bFoot;
	}

	#endregion


}
