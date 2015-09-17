using UnityEngine        ;
using System.Collections ;
using System             ; //Must use for [Serializable] attr
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{
  public class cSpawn : MonoBehaviour {

    public delegate void OnEMIT(Transform IN_XFORM, cLevel.e_Bllt IN_OBJ) ; //set up delegate
    public delegate void OnRAPD(bool bRapid) ; //set up delegate
	public OnEMIT OnEmitDelegate            ; //delegate instance
	public OnRAPD OnRapdDelegate            ; //delegate instance

#region Delegate private Functions 

	private void doEmit(Transform IN_XFORM, cLevel.e_Bllt IN_OBJ){ //on Bullet Emission (projectile)
	  if(OnEmitDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnEmitDelegate(IN_XFORM, IN_OBJ);
      }
	}

	private void doRapd(bool bRapid){ //on Power Up Emission (rapid)
	  if(OnRapdDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnRapdDelegate(bRapid);
      }
	}

#endregion

#region SINGLESHOT ---

    public virtual void doSinglFire(bool bAttk, bool IN_FACEFORWARD=true){
      if(bAttk){
        if(this.sEM.firePnts.Length > 0){ // Firing Points exist
          if(this.sEM.eBlt.Length > 0){   // Bullets exist
		    int           indexBL = this.sBL_mod.iIndex                   ; //which Bullet Object to launch
			cLevel.e_Bllt oBullet = this.sEM.eBlt[indexBL]                ;
		    int           indexFP = this.sFP_mod.iIndex                   ; //which Firing Point to emit from
		    Transform     firePnt = this.sEM.firePnts[indexFP]            ; 
            Quaternion    fireRot = firePnt.rotation                      ;
			Quaternion    initRot = firePnt.rotation;
            if(IN_FACEFORWARD == false){                                    //Brute force guessing; Understanding of matrix not high enough
              Vector3 vRot = firePnt.rotation.eulerAngles                 ;
              vRot         = new Vector3(vRot.x, vRot.y + 180.0f, vRot.z) ; //MAGIC NUMBER : Why y = 180.0f ??? Likely related to parent -x scale
              fireRot      = Quaternion.Euler(vRot)                       ;
            }
			firePnt.rotation = fireRot                                    ;
            firePnt.gameObject.SetActive(true)                            ;
		    this.doEmit(firePnt, oBullet)                                 ;
			firePnt.rotation = initRot;

            this.sFP_mod.doMod()                                          ; //modulate to next firing Point
            this.sBL_mod.doMod()                                          ; //modulate to next bullet
          } 
	    }
	  }
	}

#endregion

#region RAPIDFIRE ---

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
	private bool onrapid = false ;
	public bool  onRapid{
	  get{
	    return onrapid;
	  }
	  set{
	    if(value!=onrapid){
		  onrapid = value;
	      this.doRapd(value); //trigger delegate
		}
	  }
	}

    public virtual void doRapidFire(bool bRapid){
	  this.onRapid = bRapid;
      if(this.onRapid == true){
	    StartCoroutine(WhileRapidFire());
      }
    }
	
	public bool bFaceRight = true;
    public IEnumerator WhileRapidFire(){
      while(this.onRapid == true){
        //          an.hState = cAnimn.eStateH.Plnt;
        if(this.mt_TimeStep(this.sEM.fireRate)){
          //	      Debug.Log ("Rapid Fire : " + Time.time); //HACK : time print doesn't match fireRate why???
		  this.doSinglFire(true, this.bFaceRight);
        }
        else{
		  this.doSinglFire(false, this.bFaceRight);
        }
        yield return null;
      }
    }

    private float stepDrtn = 0.0f;
    private bool mt_TimeStep(float stepIncm){
      if(Time.time > stepDrtn){
        stepDrtn  = Time.time + stepIncm ;
        return true                      ;    
      }
      else{
        return false                     ;
      }
    }
	
#endregion

#region BURSTSHOT ---

  public virtual void doRadiusBurst(bool bAttk, bool IN_FACEFORWARD=true){
    int IN_SPAWN = 3;
	if(bAttk){
        if(this.sEM.firePnts.Length > 0){ // Firing Points exist
          if(this.sEM.eBlt.Length > 0){   // Bullets exist
		    int           indexBL = this.sBL_mod.iIndex                   ; //which Bullet Object to launch
			cLevel.e_Bllt oBullet = this.sEM.eBlt[indexBL]                ;
		    int           indexFP = this.sFP_mod.iIndex                   ; //which Firing Point to emit from
		    Transform     firePnt = this.sEM.firePnts[indexFP]            ; 

			Vector3 initPos = firePnt.position;
			firePnt.position = this.doRadiusPos(firePnt.position); // Center Burst

            firePnt.gameObject.SetActive(true)                            ;
		    this.doEmit(firePnt, oBullet)                                 ;
			firePnt.position = initPos;
//			firePnt.rotation = initRot; //COMMENT OUT

            this.sFP_mod.doMod()                                          ; //modulate to next firing Point
            this.sBL_mod.doMod()                                          ; //modulate to next bullet
          } 
	    }
    }
  }

  public virtual Vector3 doRadiusPos(Vector3 IN_POS, float IN_RAD = 1.0f){
	return IN_POS + (UnityEngine.Random.insideUnitSphere * IN_RAD);
  }

#endregion

#region EmitterProperties and Modulation Structures

    public s_EmitProperties sEM = new s_EmitProperties();
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_EmitProperties{

        public float       fireRate ; //0.15f = default
        public Transform[] firePnts ; //firing point
		public bool        bModFP   ; //true == modulate through all available firing Points

        public cLevel.e_Bllt[]  eBlt   ; // enum for bullet type to emit
		public bool             bModBL ; // true == modulate through all available bullets
        public cLevel.e_Slams   eSlm   ; // enum for thomper/slam attack
        public cLevel.e_psFX    eGun   ; // enum for GunFlare particle system to emit

      }

    public s_ModulateProperties sFP_mod = new s_ModulateProperties(); // firing Points modulations
    public s_ModulateProperties sBL_mod = new s_ModulateProperties(); // bullet Type modulations
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_ModulateProperties{
        public  bool bMod    ; // modulate between firing points?
        public  int  iIndex  ; // firing point index
        public  int  iLength ;

        public void doMod(){
          if(this.bMod){
            this.iIndex++                          ;
            this.iIndex = this.iIndex%this.iLength ;
          }
        }

        public s_ModulateProperties(bool bMod=false, int iIndex=0, int iLength=1){
          this.bMod    = bMod    ;
          this.iIndex  = iIndex  ;
          this.iLength = iLength ;
        }
      }

	// copy source properties
	public void Init(s_EmitProperties IN_SRC){
	  this.sEM.fireRate = IN_SRC.fireRate ;
	  this.sEM.firePnts = IN_SRC.firePnts ;
	  this.sEM.eBlt     = IN_SRC.eBlt     ;
	  this.sEM.eGun     = IN_SRC.eGun     ;
      this.sEM.bModFP   = IN_SRC.bModFP   ; // modulating firing point
	  this.sEM.bModBL   = IN_SRC.bModBL   ; // modulating bullets

	  this.Init();
	}
	
	// init modulation properties
	public void Init(){
	  if(this.sEM.firePnts==null){ // if not initialized, go ahead and init
	    this.sEM.firePnts    = new Transform[1] ;
		this.sEM.firePnts[0] = this.transform   ;
	  }
	  if(this.sEM.eBlt==null){
	    this.sEM.eBlt    = new cLevel.e_Bllt[1]     ;
		this.sEM.eBlt[0] = cLevel.e_Bllt.Projctl_00 ;
	  }
	  //set mod obj iLength based on emitter list length
      this.sFP_mod.iLength = this.sEM.firePnts.Length ;
      this.sBL_mod.iLength = this.sEM.eBlt.Length     ;
	  this.sFP_mod.bMod    = this.sEM.bModFP          ;
	  this.sBL_mod.bMod    = this.sEM.bModBL          ;
	}

#endregion

  }

}
