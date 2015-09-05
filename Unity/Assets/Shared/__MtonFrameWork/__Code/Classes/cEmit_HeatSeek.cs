using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using MTON.codeObjects   ;
using DG.Tweening        ;

public class cEmit_HeatSeek : cEmit_Bullet {

	public Transform target  ;
	public oPlayer   _player ;

	public AnimationCurve bHindCurve;
	[SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private bool bhind; 
	public bool bHind{ // Am I behind player?
	  get{
	    return bhind;
	  }
	  set{
		if(value != bhind){
		  bhind = value  ;
		  doBHind(value) ;
		}
	  }
	}

	private void doBHind(bool bHind){
	  if(bHind){
	    this.transform.DOScale(this.inScl * 2.0f, 0.15f).SetEase(this.bHindCurve);
		this.mvC = this.mvB;
	  }
	  else{
	    this.transform.DOScale(this.inScl, 0.25f).SetEase(this.bHindCurve);
		this.mvC = this.mvF;
	  }
	}
//
//	public float rotationSpeed = 1.0f;
//    public float moveSpeed = 1.0f;
//	public float distLockd = 1.0f; //decrease rotation
//	public float dist = 1.0f;
//	public float rotMult = 1.0f;
//	public float posMult = 1.0f;

	public  s_MoveProperties mvF = new s_MoveProperties(); //move Front  Properties
	public  s_MoveProperties mvB = new s_MoveProperties(); //move Behind Properties
	private s_MoveProperties mvC = new s_MoveProperties(); //move Current Properties
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
	public struct s_MoveProperties{
		
	  public float rotationSpeed ;
      public float moveSpeed     ;
	  public float distLockd     ; //decrease rotation
	  public float dist          ;
	  public float rotMult       ;
	  public float posMult       ;

    }

	public cSight si;

	public override void Awake (){
	  base.Awake ();
	  this.rBody.isKinematic = true;
	}

	void Start(){
	  mvC.moveSpeed = UnityEngine.Random.Range(mvC.moveSpeed, mvC.moveSpeed * 5.5f);
	  this.mvC.rotationSpeed = UnityEngine.Random.Range(this.mvC.rotationSpeed, this.mvC.rotationSpeed * 1.5f);
	  target = MTON.Global.__gCONSTANT._LEVEL.mPlayer;
	  this._player = this.target.GetComponent<oPlayer>();
	  this.si = __gUtility.AddComponent_mton<cSight>(this.gameObject)  ; 
	}

	bool bPlayerBehind(oPlayer IN_PLAYER, Vector3 IN_kDIR){
	  bool retBHind = false;
	  if(this.si.doViewConeCheck(IN_PLAYER.transform)){ //within vision cone??
	    if(IN_PLAYER.bFaceRt){
		  if(IN_kDIR.x < 0.0f){
		    retBHind = true;
		  }
		  else{
		    retBHind = false;
	      }
	    }
	    else{
	      if(IN_kDIR.x > 0.0f){
		    retBHind = true;
		  }
		  else{
		    retBHind = false;
		  }
	    }
	  }
	  return retBHind;
	}

	void rotateTowards(Vector3 IN_DIR){

		float angle = Mathf.Atan2(IN_DIR.y, IN_DIR.x) * Mathf.Rad2Deg;
//		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.right);
		Quaternion newRotation = Quaternion.AngleAxis(angle, Vector3.forward) * Quaternion.Euler(new Vector3(0.0f, -90.0f, 0.0f));

		transform.rotation = Quaternion.Slerp(transform.rotation, newRotation, Time.deltaTime * this.mvC.rotationSpeed * mvC.rotMult);

	}

	// Update is called once per frame
	void Update () {
//		this.transform.rotation = Quaternion.Lerp(this.transform.rotation, Quaternion.LookRotation(this.target.position - this.transform.position), this.mvC.rotationSpeed * Time.deltaTime);
		if(this._player){
		  Vector3 v3Dir = transform.position - target.position;
		  this.rotateTowards(v3Dir);
		  this.bHind = bPlayerBehind(this._player, v3Dir);

 		  mvC.dist = v3Dir.magnitude;
		  if(mvC.dist < mvC.distLockd){
		    mvC.rotMult = 1.0f-(mvC.dist/mvC.distLockd);
		    mvC.posMult += 1.0f-(mvC.dist/mvC.distLockd);
		  }
		  else{
		    mvC.rotMult = 1.0f;
		    mvC.posMult = 1.0f;
		  }
		}

		//move Forward
		transform.position += transform.forward * this.mvC.moveSpeed * Time.deltaTime * mvC.posMult;
		transform.SetPosZ(0.0f);
	}


	public s_OnCompleteProperties sOC = new s_OnCompleteProperties();
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
    public struct s_OnCompleteProperties{

	  public bool bCompleteSpawn;
	  public cLevel.e_Enmy enemySpawnOnComplete;
	  public cLevel.fx_Hit enemySpawnFX;
	  public cLevel.e_Anim onCompleteFX;

    }

	public override void OnComplete (){
		base.OnComplete ();
		Debug.Log ("HEAT SEEKER COMPLETE ! " + this);
		if(this.sOC.bCompleteSpawn){
		if(this.bHind){
	      if(this.sOC.enemySpawnOnComplete != cLevel.e_Enmy.None){
		    __gCONSTANT._LEVEL.SpawnObj(this.sOC.enemySpawnOnComplete, this.transform.position, Quaternion.identity, (Transform SpawnedObj)=>{
		      float randomF = UnityEngine.Random.Range(1.0f, 3.0f) ;
              Vector3 PositionSpawn = SpawnedObj.position + Vector3.up * 0.5f * randomF   ; // lift slightly off ground to allow for spin and pop
			  SpawnedObj.position = PositionSpawn; // reuse for Spawn Effect
			  __gCONSTANT._LEVEL.fx_Dust(this.sOC.enemySpawnFX, PositionSpawn);
              return true                                                 ;
		    });
		  }
		}
		}
		__gCONSTANT._LEVEL.fx_Dust(this.sOC.onCompleteFX, this.transform.position);
	}
}
