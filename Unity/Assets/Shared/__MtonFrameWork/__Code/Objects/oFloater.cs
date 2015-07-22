using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oFloater: MonoBehaviour{
	
    public Transform dispObj         ; //HACK : Coupling the character dispObj => object with an Animator and render mesh
	public Transform player          ;
	public Color cActv = Color.red   ;
	public Color cRest = Color.green ;

	public float fSpeed = 1.0f; //speed
	public float fAmplt = 1.0f; //amplitude
	public float fFreqn = 1.0f; //frequency

	private static LayerMask __layerPlayer  ;
	public Vector3 playerDir;
	private Vector3 spawnPos;
	private Transform xform;
	private Renderer rendr ;
    private cTween    tw   ;

	public float distThreshold = 3.0f;
	public float durTime = 1.0f;

    public moveTypeMTON moveType = moveTypeMTON.Wave ;						// Should this GameObject inactivate or destroy when emission is done?
	public enum moveTypeMTON {
		Follow,
		Wave,
		None,
	}

	public virtual void Awake(){
	    __layerPlayer = LayerMask.GetMask (__gCONSTANT._PLAYER);
		xform = this.GetComponent<Transform>();
		rendr = this.dispObj.GetComponent<Renderer> ();
        tw = __gUtility.AddComponent_mton<cTween>(this.dispObj.gameObject)   ; //Tweening display obj vs. character controller
	}

	public virtual void Start(){
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!
	  this.playerDir = this.player.position - this.xform.position;
	  this.spawnPos  = this.xform.position; 
	}

	public virtual void OnEnable(){
	  if(this.player == null){
	    Collider[] hitColliders = Physics.OverlapSphere(this.xform.position, 8.0f, __layerPlayer) ;
	    for(int i=0 ; i<hitColliders.Length; i++) {
		  this.player = hitColliders[i].transform;
		  Debug.Log(this + " FOUND PLAYER : " + this.player);
	    }
	  }
	}

	public virtual void OnDisable(){}

	public virtual void FixedUpdate(){
	  if(this.player != null){
		if(this.moveType == moveTypeMTON.Wave){
		  DoWave(Mathf.Sign(this.playerDir.x), this.fSpeed);
		}
		else if (this.moveType == moveTypeMTON.Follow){
		  float dist = Vector3.Distance(this.xform.position, this.player.position);
//	      Debug.Log("Dist : " + dist);
	      if(dist > distThreshold){ //Activate
		    AI_Actv(true);
		    DoFollow();
		  }
	      else{ //Rest
	        AI_Actv(false);
	      }
		}
	  }
	}

	public virtual void AI_Actv(bool bActive){
	  if(bActive){
	    rendr.material.color = cActv;
	  }
	  else{
	    rendr.material.color = cRest;
	  }
	}

	public float yCos;
	
	void DoWave(float IN_xDir, float IN_speed){
	  float xVel = IN_xDir;
	  float yVel = Mathf.Cos(xform.position.x * this.fFreqn) * this.fAmplt; // + this.spawnPos.y;
	  this.xform.position = this.xform.position + (new Vector3(xVel, yVel, 0.0f) * IN_speed * Time.deltaTime);
	  float mXPos = this.xform.position.x%(9.0f+Mathf.Abs(this.spawnPos.x));
	  this.xform.SetPosX(mXPos);
	  float sXPos = 0.25f; // Mathf.Abs(this.spawnPos.x) + 0.25f;
	  if(mXPos < sXPos && mXPos > -sXPos){
		this.xform.position = this.spawnPos;
	  }
	}

	void DoFollow(){
//		Vector3 vDistn = this.xform.position - this.player.position ;
		this.transform.DOMove(this.player.position, durTime, false); //.SetEase(Ease.OutElastic);
//		this.transform.DOMove(this.player.position, 1.0f, false).SetEase(Ease.OutElastic);
//		Vector3 vOrtho = this.transform.MoveOrtho(-vDistn);
//		Debug.Log("vORtho " + vOrtho);
//		this.transform.DOBlendableMoveBy(vOrtho, 1.0f, true);
	}

    void OnTriggerEnter(Collider other) {
      Debug.Log("Triggering Enter : " + other.gameObject);
    }

  }

}
