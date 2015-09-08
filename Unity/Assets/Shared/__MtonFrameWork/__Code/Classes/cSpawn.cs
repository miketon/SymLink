using UnityEngine        ;
using System.Collections ;
using System             ; //Must use for [Serializable] attr
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{
  public class cSpawn : MonoBehaviour {

    public delegate void OnEMIT(Transform IN_XFORM, int IN_OBJ) ; //set up delegate
    public delegate void OnRAPD(bool bRapd) ; //set up delegate
	public OnEMIT OnEmitDelegate            ; //delegate instance
	public OnRAPD OnRapdDelegate            ; //delegate instance

	public virtual void doEmit(Transform IN_XFORM, int IN_OBJ){ //on Bullet Emission (projectile)
	  if(OnEmitDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnEmitDelegate(IN_XFORM, IN_OBJ);
      }
	}

	public virtual void doRapd(bool bRapd){ //on Power Up Emission (rapid)
	  if(OnRapdDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnRapdDelegate(bRapd);
      }
	}

#region SINGLESHOT ---

    public virtual void doSinglFire(bool bAttk, bool IN_FACEFORWARD=true){
      if(bAttk){
        if(this.sEM.firePnts.Length > 0){ // Firing Points exist
          if(this.sEM.eBlt.Length > 0){   // Bullets exist
		    int        indexBL = this.sBL_mod.iIndex                      ; //which Bullet Object to launch
		    int        indexFP = this.sFP_mod.iIndex                      ; //which Firing Point to emit from
		    Transform  firePnt = this.sEM.firePnts[indexFP]               ; 
            Quaternion fireRot = firePnt.rotation                         ;
            if(IN_FACEFORWARD == false){                                    //Brute force guessing; Understanding of matrix not high enough
              Vector3 vRot = firePnt.rotation.eulerAngles                 ;
              vRot         = new Vector3(vRot.x, vRot.y + 180.0f, vRot.z) ; //MAGIC NUMBER : Why y = 180.0f ??? Likely related to parent -x scale
              fireRot      = Quaternion.Euler(vRot)                       ;
            }
            firePnt.gameObject.SetActive(true)                            ;
		    this.doEmit(firePnt, indexBL)                                 ;

            this.sFP_mod.doMod()                                          ; //modulate to next firing Point
            this.sBL_mod.doMod()                                          ; //modulate to next bullet
          } 
	    }
	  }
	}

#endregion

#region RAPIDFIRE ---

	private bool brapd         = false ;
    public virtual void doRapidFire(bool bRapd, bool IN_BGROUND=true){
	  this.doRapd(bRapd); //trigger delegate
	  this.brapd = bRapd;
      if(bRapd == true){
        StartCoroutine(WhileRapidFire());
      }
    }

    public IEnumerator WhileRapidFire(){
      while(this.brapd == true){
        //          an.hState = cAnimn.eStateH.Plnt;
        if(this.mt_TimeStep(this.sEM.fireRate)){
          //	      Debug.Log ("Rapid Fire : " + Time.time); //HACK : time print doesn't match fireRate why???
          this.doSinglFire(true);
        }
        else{
          this.doSinglFire(false);
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

#region EmitterProperties and Modulation Structures

    public s_EmitProperties sEM = new s_EmitProperties();
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_EmitProperties{

        public float       fireRate ; //0.15f = default
        public Transform[] firePnts ; //firing point

        public cLevel.e_Bllt[]  eBlt ; // enum for bullet type to emit
        public cLevel.e_Slams   eSlm ; // enum for thomper/slam attack
        public cLevel.fx_Hit    eGun ; // enum for GunFlare particle system to emit

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

	public void Init(){
	  if(this.sEM.firePnts==null){ // if not initialized, go ahead and init
	    this.sEM.firePnts = new Transform[1];
		this.sEM.firePnts[0] = this.transform;
	  }
	  if(this.sEM.eBlt==null){
	    this.sEM.eBlt = new cLevel.e_Bllt[1];
		this.sEM.eBlt[0] = cLevel.e_Bllt.Projctl_00;
	  }
	  //set mod obj iLength based on emitter list length
      this.sFP_mod.iLength = this.sEM.firePnts.Length ;
      this.sBL_mod.iLength = this.sEM.eBlt.Length     ;
	}
		
    // Use this for initialization
    void Start () {
	  Init();
    }

	void Awake(){
	  Init();
	}

	void OnEnable(){
	  Init();
	}

#endregion

  }

}
