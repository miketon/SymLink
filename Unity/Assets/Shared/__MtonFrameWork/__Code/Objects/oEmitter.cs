﻿using UnityEngine        ;
using System             ; //Must use for [Serializable] attr
using System.Collections ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.codeObjects{
  public class oEmitter : MonoBehaviour {

    public  cSpawn.s_EmitProperties sEM = new cSpawn.s_EmitProperties();
	private cSpawn em;

	void Start(){
	  this.Init();
	}

	void Init(){
	  if(!this.em){
	    em = __gUtility.AddComponent_mton<cSpawn>(this.gameObject)  ;
//      __gUtility.GetCopyOf(this.em.sEM, this.sEM)                 ; // INTERESTING : deep copy, doesn't work on structure
	    em.sEM.fireRate = this.sEM.fireRate ;
	    em.sEM.firePnts = this.sEM.firePnts ;
	    em.sEM.eBlt     = this.sEM.eBlt     ;
		em.sEM.bModFP   = this.sEM.bModFP   ; // modulating firing point
		em.sEM.bModBL   = this.sEM.bModBL   ; // modulating bullets
	  }
	}

	private void doEmit(Transform IN_XFORM, cLevel.e_Bllt IN_OBJ){
	  if(IN_OBJ != cLevel.e_Bllt.None){ //Firing actual bullets
        __gCONSTANT._LEVEL.Emit_Bullet(IN_OBJ, IN_XFORM.position, IN_XFORM.rotation, (Transform xForm)=>{
		  cEmit_Bullet cBullet = xForm.gameObject.GetComponent<cEmit_Bullet>() ;
		  if(cBullet){
		    cBullet.OnComplete();
		  }
            return xForm ;
          })             ;
      }
	  if(this.sEM.eGun != cLevel.fx_Hit.None){   // Flare : set to -1 to prevent emission
        __gCONSTANT._LEVEL.Emit_pFX(this.sEM.eGun, IN_XFORM.position, Quaternion.identity, (Transform xForm)=>{
          IN_XFORM.gameObject.SetActive(false) ; // NOTE : Using Delegate IN_XFORM to deactivate firing point (light child)
          return xForm                         ;
        })                                     ;
      }
	}

	private void doRapid(bool bRapid){
	  Debug.Log ("RAPID TOGGLE : " + bRapid);
	}

    public virtual void OnEnable(){
	  this.Init();
	  if(this.em){
	    em.OnEmitDelegate += this.doEmit;
		em.OnRapdDelegate += this.doRapid;
	  }
	}

    public virtual void OnDisable(){
	  em.OnEmitDelegate -= this.doEmit;
	  em.OnRapdDelegate -= this.doRapid;
	}

    // Update is called once per frame
    void Update () {
      if(Input.GetKeyDown(KeyCode.Space)){
//		this.em.doSinglFire(true);
		this.em.doRapidFire(true);
      }
	  else if(Input.GetKeyUp(KeyCode.Space)){
//		this.em.doSinglFire(false);
		this.em.doRapidFire(false);
	  }
    }

  }
}
