using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.codeObjects{
  public class oEmitter : MonoBehaviour {

    public delegate void OnEMIT(bool bEmit) ; //set up delegate
	public OnEMIT OnEmitDelegate            ; //delegate instance
	public OnEMIT OnFlarDelegate            ; //delegate instance
	public OnEMIT OnRapdDelegate            ; //delegate instance

    //	public virtual void OnEnable(){
    //        io.OnAttkDelegate      += doAttk ; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
    //	}
    //	public virtual void OnDisable(){
    //        io.OnAttkDelegate      -= doAttk ; //NOTE: Interesting that doAttk executes, then io.OnAttkDelegate executes???
    //	}

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

#endregion

	public virtual void doEmit(bool bEmit){ //on Bullet Emission (projectile)
	  if(OnEmitDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnEmitDelegate(bEmit);
      }
	}

	public virtual void doFlar(bool bFlar){ //on Firing Point Emission (flare)
	  if(OnFlarDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnFlarDelegate(bFlar);
      }
	}

	public virtual void doRapd(bool bRapd){ //on Power Up Emission (rapid)
	  if(OnRapdDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
	    OnRapdDelegate(bRapd);
      }
	}

    public virtual void doAttk(bool bAttk, bool IN_FACEFORWARD=true){
	  this.doEmit(bAttk); // trigger delegate
      if(bAttk){
        Debug.Log ("DO ATTACK : " + this);
        if(this.sEM.firePnts.Length > 0){
          //            an.attkST          = cAnimn.eStateB.DN                    ;
          Transform firePnt  = this.sEM.firePnts[this.sFP_mod.iIndex] ; 
          firePnt.gameObject.SetActive(true)                          ;
          Quaternion fireRot = firePnt.rotation                       ;
          if(IN_FACEFORWARD == false){                                    //Brute force guessing; Understanding of matrix not high enough
            Vector3 vRot = firePnt.rotation.eulerAngles                 ;
            vRot         = new Vector3(vRot.x, vRot.y + 180.0f, vRot.z) ; //MAGIC NUMBER : Why y = 180.0f ??? Likely related to parent -x scale
            fireRot      = Quaternion.Euler(vRot)                       ;
          }
          if(this.sEM.eBlt.Length > 0){
            if(this.sEM.eBlt[this.sBL_mod.iIndex] != cLevel.e_Bllt.None){ //Firing actual bullets
              __gCONSTANT._LEVEL.Emit_Bullet(this.sEM.eBlt[this.sBL_mod.iIndex], firePnt.position, fireRot, (Transform xForm)=>{
                  cEmit_Bullet cBullet = xForm.gameObject.GetComponent<cEmit_Bullet>() ;
                  if(cBullet){
                    cBullet.OnComplete();
                  }
                  return xForm ;
              })               ;
            }
          }
          if(this.sEM.eGun != cLevel.fx_Hit.None){ // Flare : set to -1 to prevent emission
            __gCONSTANT._LEVEL.Emit_pFX(this.sEM.eGun, firePnt.position, Quaternion.identity, (Transform xForm)=>{
                firePnt.gameObject.SetActive(false)                                  ;
                return xForm ;
            })               ;
          }
        }
        this.sFP_mod.doMod();
        this.sBL_mod.doMod();
      }
      else{
        if(this.brapd){ 
          //            an.attkST = cAnimn.eStateB.PW   ; //Power up attack
        }
        else{
          //            an.attkST = cAnimn.eStateB.Idle ;
        }
      }
    }

#region RAPIDFIRE ---

	private bool brapd         = false ;
    private bool bDpdX         = true  ;
    private bool bDpdY         = false ;

    public virtual void doRapidFire(bool bRapd, bool IN_BGROUND=true){
	  this.brapd = bRapd;
	  this.doRapd(bRapd); //trigger delegate
      if(bRapd == true){
        StartCoroutine(WhileRapidFire());
        this.bDpdX = false; //dPad x ignore
        this.bDpdY = true ; //dPad y listen
//        if(IN_BGROUND == true){
//          __gCONSTANT._LEVEL.fx_Dust(this.sEM.eDld, this.transform.position, true);
//        }
      }
      else{
        this.bDpdX = true  ; //dPad x listen
        this.bDpdY = false ; //dPad x ignore
      }
    }

    public IEnumerator WhileRapidFire(){
      while(this.brapd == true){
        //          an.hState = cAnimn.eStateH.Plnt;
        if(this.mt_TimeStep(this.sEM.fireRate)){
          //	      Debug.Log ("Rapid Fire : " + Time.time); //HACK : time print doesn't match fireRate why???
          this.doAttk(true);
        }
        else{
          this.doAttk(false);
        }
        yield return null;
      }
      //		Debug.Log ("NO MORE RAPID FIRE"); //Only called once after while loop is complete
      //        an.doAimg(0.0f)                 ; //reset gun to face forward
      //        an.attkST = cAnimn.eStateB.Idle ; //release attack from powerup
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

	public void Init(){
	  //set mod obj iLength based on emmitter list length
      this.sFP_mod.iLength = this.sEM.firePnts.Length ;
      this.sBL_mod.iLength = this.sEM.eBlt.Length     ;
	}
		
    // Use this for initialization
    void Start () {
	  Init();
    }

    // Update is called once per frame
    void Update () {
      if(Input.GetKeyDown(KeyCode.Space)){
        this.doAttk(true);
		this.doRapidFire(true);
      }
	  else if(Input.GetKeyUp(KeyCode.Space)){
		this.doRapidFire(false);
	  }
    }

  }
}
