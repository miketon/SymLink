using UnityEngine;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using MTON.codeObjects   ;
using DG.Tweening;

public class cEmit_HeatSeek : cEmit_Bullet {

	public Transform target;
	public oPlayer _player;

	public AnimationCurve bHindCurve;
	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private bool bhind; 
	public bool bHind{ // Am I behind player?
	  get{
	    return bhind;
	  }
	  set{
		if(value != bhind){
		  bhind = value;
		  doBHind(value);
		}
	  }
	}

	private void doBHind(bool bHind){
	  if(bHind){
	    this.transform.DOScale(this.inScl * 2.0f, 0.15f).SetEase(this.bHindCurve);
	  }
	  else{
	    this.transform.DOScale(this.inScl, 0.25f).SetEase(this.bHindCurve);
	  }
	}

	public float rotationSpeed = 1.0f;
    public float moveSpeed = 1.0f;
	public float distLockd = 1.0f; //decrease rotation
	public float dist = 1.0f;
	public float rotMult = 1.0f;
	public float posMult = 1.0f;
	public Vector3 v3Dir;

	public override void Awake (){
	  base.Awake ();
	  this.rBody.isKinematic = true;
	}

	void Start(){
	  moveSpeed = UnityEngine.Random.Range(moveSpeed, moveSpeed * 5.5f);
	  this.rotationSpeed = UnityEngine.Random.Range(this.rotationSpeed, this.rotationSpeed * 1.5f);
	  target = MTON.Global.__gCONSTANT._LEVEL.mPlayer;
	  this._player = this.target.GetComponent<oPlayer>();
	}

	// Update is called once per frame
	void Update () {
//		this.transform.rotation = Quaternion.Lerp(this.transform.rotation, Quaternion.LookRotation(this.target.position - this.transform.position), this.rotationSpeed * Time.deltaTime);
		v3Dir = transform.position - target.position;
		if(this._player){
		  if(this._player.bFaceRt){
		    if(v3Dir.x < 0.0f){
			  this.bHind = true;
			}
		    else{
			  this.bHind = false;
			}
		  }
		  else{
		    if(v3Dir.x > 0.0f){
			  this.bHind = true;
			}
			else{
			  this.bHind = false;
			}
		  }
		}
		dist = v3Dir.magnitude;
		if(dist < distLockd){
		  rotMult = 1.0f-(dist/distLockd);
		  posMult += 1.0f-(dist/distLockd);
		}
		else{
		  rotMult = 1.0f;
		  posMult = 1.0f;
		}

        float angle = Mathf.Atan2(v3Dir.y, v3Dir.x) * Mathf.Rad2Deg;
//		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.right);
		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.forward) * Quaternion.Euler(new Vector3(0.0f, -90.0f, 0.0f));

		transform.rotation = Quaternion.Slerp(transform.rotation, newRotation, Time.deltaTime * this.rotationSpeed * rotMult);
		transform.position += transform.forward * this.moveSpeed * Time.deltaTime * posMult;
	}
}
