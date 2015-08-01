using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cMcanm : MonoBehaviour, IAnimn_ID {

	public Animator anim ; // mecanim animator
	public cAnimn   anST ; // animation state

	private void OnEnable(){
	  //animation state delegates
	  if(anST != null){
        anST.OnMoveDelegate += OnMove;
	    anST.OnGrndDelegate += OnGrnd;
        anST.OnDuckDelegate += OnDuck;
	  }
	}

    private void OnDisable(){
	  //animation state delegates
      anST.OnMoveDelegate -= OnMove;
	  anST.OnGrndDelegate -= OnGrnd;
      anST.OnDuckDelegate -= OnDuck;
	}

	#region implement IAnimn_ID

    public string _kVertcl	;
    public string _kHorizn  ;
    public string _bGround	;
    public string _bCrouch	;
    public string _bForwrd	;

	public int _kVertcl_ID { get; set; } //vertical   delta
    public int _kHorizn_ID { get; set; } //horizontal delta
    public int _bGround_ID { get; set; }
    public int _bCrouch_ID { get; set; }
    public int _bForwrd_ID { get; set; } //2d true == right; 3d true == forward

	public void Awake(){
		this.animator_Hash_ID();
	}

	public void animator_Hash_ID(){
		Debug.Log ("Hashing : " + this);
		_kVertcl_ID = Animator.StringToHash(this._kVertcl);
		_kHorizn_ID = Animator.StringToHash(this._kHorizn);
		_bGround_ID = Animator.StringToHash(this._bGround);
		_bCrouch_ID = Animator.StringToHash(this._bCrouch);
	}

	#endregion

	public void OnGrnd(bool bGround){
		anim.SetBool(_bGround_ID, bGround);
	}

	public void OnMove(Vector3 moveDir){
		anim.SetFloat(_kHorizn_ID, Mathf.Abs (moveDir.x));
//		Debug.Log ("I am moving: " + moveDir.x);
	}
	public void OnDuck(bool bCrouch){
		anim.SetBool(_bCrouch_ID, bCrouch);
//		Debug.Log ("I am crouching : " + bCrouch);
	}


}
