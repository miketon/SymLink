using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.codeObjects{

  public class oFloater: MonoBehaviour{
	
    public Transform dispObj         ; //HACK : Coupling the character dispObj => object with an Animator and render mesh
	public Transform player          ;
	public bool  bFollow = false     ; //true = follow; false = wave
	public Color cActv = Color.red   ;
	public Color cRest = Color.green ;

	public float fSpeed = 1.0f; //speed
	public float fAmplt = 1.0f; //amplitude
	public float fFreqn = 1.0f; //frequency

	private static LayerMask __layerPlayer  ;
	private bool bPlayerLeft = true ; //is the player to the left; move right if oFloater is in wave pattern mode
	private Transform xform;
	private Renderer rendr ;
    private cTween    tw   ;

	public float distThreshold = 3.0f;
	public float durTime = 1.0f;

	public virtual void Awake(){
	    __layerPlayer = LayerMask.GetMask (__gCONSTANT._PLAYER);
		xform = this.GetComponent<Transform>();
		rendr = this.dispObj.GetComponent<Renderer> ();
        tw = __gUtility.AddComponent_mton<cTween>(this.dispObj.gameObject)   ; //Tweening display obj vs. character controller
	}

	public virtual void Start(){
      __gUtility.CheckAndInitLayer(this.gameObject, __gCONSTANT._ENEMY) ; // HACK :level triggers/hint should ignore ground raycast/collision check!

	}

	public virtual void OnEnable(){
	  if(this.player == null){
	    Collider[] hitColliders = Physics.OverlapSphere(this.xform.position, 5.0f, __layerPlayer) ;
	    for(int i=0 ; i<hitColliders.Length; i++) {
		  this.player = hitColliders[i].transform;
		  Debug.Log(this + " FOUND PLAYER : " + this.player);
	    }
	  }
	}

	public virtual void OnDisable(){}

	public virtual void FixedUpdate(){
	  if(this.player != null){
	    float dist = Vector3.Distance(this.xform.position, this.player.position);
//	    Debug.Log("Dist : " + dist);
	    if(dist > distThreshold){ //Activate
		  AI_Actv(true);
		  if(bFollow){
			DoFollow();
		  }
	    }
	    else{ //Rest
	      AI_Actv(false);
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
