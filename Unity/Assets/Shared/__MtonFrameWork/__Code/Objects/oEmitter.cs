using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.codeObjects{
  public class oEmitter : MonoBehaviour {

    public cSpawn.s_EmitProperties sEM = new cSpawn.s_EmitProperties();

    public virtual void doAttk(bool bAttk, bool IN_FACEFORWARD=true){
      if(bAttk){
        Debug.Log ("DO ATTACK : " + this);
        if(this.em.sEM.firePnts.Length > 0){
          //            an.attkST          = cAnimn.eStateB.DN                    ;
          Transform firePnt  = this.em.sEM.firePnts[this.em.sFP_mod.iIndex] ; 
          firePnt.gameObject.SetActive(true)                          ;
          Quaternion fireRot = firePnt.rotation                       ;
          if(IN_FACEFORWARD == false){                                    //Brute force guessing; Understanding of matrix not high enough
            Vector3 vRot = firePnt.rotation.eulerAngles                 ;
            vRot         = new Vector3(vRot.x, vRot.y + 180.0f, vRot.z) ; //MAGIC NUMBER : Why y = 180.0f ??? Likely related to parent -x scale
            fireRot      = Quaternion.Euler(vRot)                       ;
          }
          if(this.em.sEM.eBlt.Length > 0){
            if(this.em.sEM.eBlt[this.em.sBL_mod.iIndex] != cLevel.e_Bllt.None){ //Firing actual bullets
              __gCONSTANT._LEVEL.Emit_Bullet(this.em.sEM.eBlt[this.em.sBL_mod.iIndex], firePnt.position, fireRot, (Transform xForm)=>{
                  cEmit_Bullet cBullet = xForm.gameObject.GetComponent<cEmit_Bullet>() ;
                  if(cBullet){
                    cBullet.OnComplete();
                  }
                  return xForm ;
              })               ;
            }
          }
          if(this.em.sEM.eGun != cLevel.fx_Hit.None){ // Flare : set to -1 to prevent emission
            __gCONSTANT._LEVEL.Emit_pFX(this.em.sEM.eGun, firePnt.position, Quaternion.identity, (Transform xForm)=>{
                firePnt.gameObject.SetActive(false)                                  ;
                return xForm ;
            })               ;
          }
        }
        this.em.sFP_mod.doMod();
        this.em.sBL_mod.doMod();
      }
    }

	private cSpawn em;

	void Start(){
	  this.Init();
	}

	void Init(){
	  if(!this.em){
	    em = __gUtility.AddComponent_mton<cSpawn>(this.gameObject)  ;
//      __gUtility.GetCopyOf(this.em.sEM, this.sEM)                                        ; // INTERESTING : deep copy
	    em.sEM.fireRate = this.sEM.fireRate;
	    em.sEM.firePnts = this.sEM.firePnts;
	    em.sEM.eBlt     = this.sEM.eBlt;
	  }
	}

	private void doEmit(Transform IN_XFORM, int IN_OBJ, int IN_FP){
	  Debug.Log (" I am emitting! ");
	}

    public virtual void OnEnable(){
	  this.Init();
	  if(this.em){
	    em.OnEmitDelegate += this.doEmit;
	  }
	}

    public virtual void OnDisable(){
	  em.OnEmitDelegate -= this.doEmit;
	}

    // Update is called once per frame
    void Update () {
      if(Input.GetKeyDown(KeyCode.Space)){
        this.doAttk(true);
//		this.doRapidFire(true);
      }
	  else if(Input.GetKeyUp(KeyCode.Space)){
//		this.doRapidFire(false);
	  }
    }

  }
}
