using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
//using System.UI          ;
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cLevel : MonoBehaviour, ILevel{

    public delegate void  INIT_LEVEL ();
    public static   event INIT_LEVEL OnInit_Delegate;

    public delegate void ADD_TRANSFORM(Transform IN_XFORM)  ; //set up delegate
    public ADD_TRANSFORM camrADD_Delegate                   ; //delegate instance
    public ADD_TRANSFORM camrREM_Delegate                   ; //delegate instance

    public ADD_TRANSFORM boidADD_Delegate                   ; //delegate instance
    public ADD_TRANSFORM boidREM_Delegate                   ; //delegate instance

    public int levelCurrent { get; set; } //NOTE : interface variable implementation can't be static

    //Init Level
    public void OnLoadLevel(){}           //NOTE : interface function implementation must be public
    //Shut Down Level
    public void UnLoadLevel(){}

    public Transform        mPlayer; // main player
    public Sound            sndPlyr; // sound player
    public Transform        mCamAim; // msin aim
    public Camera2D         mCamera; // main camera
    public List<Transform>  camTgts = new List<Transform>() ; //need System.Collections.Generic
    public List<Transform>  boidsGp = new List<Transform>() ; //need System.Collections.Generic

    public Transform doCamrADD(Transform IN_XFORM){
      foreach(Transform cam in this.camTgts){  //check current camTgts
        if(IN_XFORM == cam){                   //if already part of camera list return null
          return null;
        }
      }
      Debug.Log ("Adding : " + IN_XFORM);
      this.camTgts.Add(IN_XFORM)      ; //else add to camTgts
      this.camrADD_Delegate(IN_XFORM) ;
      return IN_XFORM                 ; //return transform
    }

    public Transform doCamrREM(Transform IN_XFORM){
      foreach(Transform cam in this.camTgts){  //check current camTgts
        if(IN_XFORM == cam){                   //if match camera list entry
          Debug.Log ("Removing : " + IN_XFORM);
          this.camTgts.Remove(IN_XFORM)   ; //remove xform
          this.camrREM_Delegate(IN_XFORM) ;
          return IN_XFORM                 ; //return xform
        }
      }
      return null ; //return null if no transform removed
    }

    public Transform[]      e_Walks;
    public Transform[]      e_Flyrs;
    public Transform[]      e_Bllts;
    public Transform[]      e_Icons;

    public int numPrefill = 15;
    public ParticleSystem[] fx_Hits;
    public Animator[] anmEmit;

#region enums

    public enum e_Icon{
      Death   = 0,
      Warning = 1, 
      None    = 2,
    }

    public enum e_Enmy{
      Melee_00, 
      Range_00,
      None,
    }

    public enum e_Flyr{
      Melee_00, 
      Range_00,
      None,
    }

    private float[]   fx_Hit_OffSet  ; // To place effect at feet = particle size(radius)
    public  float[]   anmEmit_duratn ; // Duration of animation clip
    private Vector3[] anmEmit_IntScl ; // captures scale of animator objects

    public enum fx_Hit{ // Must be particle system
      HitMark_00,       // moon
      BteMark_00,       // bite mark
      GunFlar_00,
      DustLnd_00,       // Dust Land
      DustJmp_00,       // Dust Jump
      DustStp_00,       // Dust step
      ScoreCn_00,
      None,
    }

	public enum e_Anim{ // Must be Animator
      DustStp_00,       // Dust step
      DustJmp_00,       // Dust Jump
      DustLnd_00,       // Dust Land
      BteMark_00,       // bite mark
      ScoreCn_00,
      None,
    }

    public enum e_Bllt{
      Projctl_00, //projectile
      LasrRay_00, 
      Grenade_00,
      None,
    }

#endregion

#region Level Spawning logic

    public T levelSpawn<T>(T Targ){
      Debug.Log("Spawning : " + Targ);
      //		Transform xform = null;
      return Targ;
    }


    //Spawning Standard Object
    public Transform Spawn<T>(Transform IN_XFORM, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      IN_XFORM.gameObject.SetActive(true)     ;
      funcToRun()                             ;
      return IN_XFORM.lpSpawn(IN_POS, IN_ROT) ;
    }

    // Spawning Icon
    public Transform SpawnObj<T>(e_Icon eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform, T> funcToRun){
      if(eObj == e_Icon.Death){
        Transform spawnedObj = this.e_Icons[0].lpSpawn(IN_POS, IN_ROT) ;
        spawnedObj.gameObject.SetActive(true)                          ;
        funcToRun(spawnedObj)                                          ;
        return spawnedObj                                              ;
      }
      else{
        return null;
      }
    }

    // Walking Enemy
    public Transform SpawnObj<T>(e_Enmy eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      if(eObj == e_Enmy.Melee_00){
        funcToRun();
        return this.e_Walks[0].lpSpawn(IN_POS, IN_ROT);
      }
      else{
        return null;
      }
    }

    // Flying Enemy
    public Transform SpawnObj<T>(e_Flyr eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      if(eObj == e_Flyr.Melee_00){
        funcToRun();
        return this.e_Flyrs[0].lpSpawn(IN_POS, IN_ROT);
      }
      else{
        return null;
      }
    }

#endregion

	private int iDustStep = 0;
    //fx
	public void Emit_pFX<T>(fx_Hit eHit, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun, bool bFLIP_2D = false){

      if(eHit == fx_Hit.HitMark_00){ 
		Emit(this.fx_Hits[0], IN_POS, IN_ROT, funcToRun);
			}
      else if(eHit == fx_Hit.GunFlar_00){
        Emit(this.fx_Hits[1], IN_POS, IN_ROT, funcToRun);
      }
      else if(eHit == fx_Hit.BteMark_00){
        Emit(this.fx_Hits[2], IN_POS, IN_ROT, funcToRun);
      }
      else if(eHit == fx_Hit.DustJmp_00){
        Emit(this.fx_Hits[3], IN_POS + (Vector3.up * this.fx_Hit_OffSet[3] * 0.85f) , IN_ROT, funcToRun);
      }
      else if(eHit == fx_Hit.DustLnd_00){
        Emit(this.fx_Hits[4], IN_POS + (Vector3.up * this.fx_Hit_OffSet[4] * 0.85f) , IN_ROT, funcToRun);
      }
	  else if(eHit == fx_Hit.DustStp_00){ // Dust step alternates : HACK : Index + 1
		int iAltStep = this.iDustStep%2 ;  // alternate between dust steps
        Emit(this.fx_Hits[5 + iAltStep], IN_POS + (Vector3.up * this.fx_Hit_OffSet[5 + iAltStep] * 0.25f) , IN_ROT, funcToRun);
		this.iDustStep = this.iDustStep + 1;
      }

    }

	public void Emit_ANM<T>(e_Anim eAnm, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun, bool bFLIP_2D = false){
	  if(eAnm == e_Anim.DustStp_00){
		int iAltStep = this.iDustStep%2 ;  // alternate between dust steps
	    this.iDustStep++;
	    Emit(this.anmEmit[0], IN_POS, IN_ROT, this.anmEmit_duratn[0], funcToRun, this.anmEmit_IntScl[0], true);
	  }
	}

	public void Emit<T>(ParticleSystem IN_PS, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun, bool bFLIP_2D = false){
      Transform pXform  = IN_PS.transform.lpSpawn(IN_POS, IN_ROT) ; //Get Transform from pool using Liteprint
      GameObject gXform = pXform.gameObject                       ;
//	  Debug.Log ("EMITTING : "+ pXform);
      gXform.SetActive(true)                                      ;
	  IN_PS.Play()                                                ;
      this.tt().ttAdd(IN_PS.duration, ()=>{
		  IN_PS.Stop()            ;
	      IN_PS.Clear()           ; //true == include children
          pXform.lpRecycle()      ; //Return to pool
          funcToRun()             ;
          gXform.SetActive(false) ;
          })                      ; //using TeaTime.cs
    }

	public void Emit<T>(Animator IN_PS, Vector3 IN_POS, Quaternion IN_ROT, float IN_DUR, Func<T> funcToRun, Vector3 IN_SCL, bool bFLIP_2D = false){
      Transform pXform  = IN_PS.transform.lpSpawn(IN_POS, IN_ROT) ; //Get Transform from pool using Liteprint
      GameObject gXform = pXform.gameObject                       ;
	  if(bFLIP_2D){
	    if(IN_ROT == Quaternion.identity){
		  pXform.localScale = IN_SCL;
		}
		else{
		  Vector3 sclFLIP = new Vector3(-IN_SCL.x, IN_SCL.y, IN_SCL.z);
		  pXform.localScale = sclFLIP;
		}
	  }
//	  Debug.Log ("EMITTING : "+ pXform);
      gXform.SetActive(true)                                      ;
      this.tt().ttAdd(IN_DUR , ()=>{
          pXform.lpRecycle()      ; //Return to pool
          funcToRun()             ;
          gXform.SetActive(false) ;
          })                      ; //using TeaTime.cs
    }

	public void Emit_Bullet<T>(e_Bllt eBullet, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      if(eBullet == e_Bllt.Projctl_00){
        Emit_Bullet(this.e_Bllts[0], IN_POS, IN_ROT, funcToRun);
      }
    }

    public void Emit_Bullet<T>(Transform IN_XFORM, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      Transform pXform = IN_XFORM.lpSpawn(IN_POS, IN_ROT); //Get Transform from pool using Liteprint
      GameObject gXform = pXform.gameObject;
      gXform.SetActive(true);
      this.tt().ttAdd(3.0f, ()=>{
          pXform.lpRecycle()      ; //Return to pool
          funcToRun()             ;
          gXform.SetActive(false) ;
          })                      ; //using TeaTime.cs
    }


#region Level Collision Handler

    public void doCollide<T>(Transform srcXFORM, Transform dstXFORM){
      Debug.Log(this + "LEVEL collidision between : source : " + srcXFORM + " destination : " + dstXFORM);
    }

#endregion


#region Class Utility

    public virtual void Awake(){
      if(__gCONSTANT._LEVEL == null){
        Debug.LogWarning("CONSTANT LEVEL == null : populating with " + this) ;
        new __gCONSTANT(this)                                                ;

        // Init Sound Player
        if(this.sndPlyr == null){
          this.sndPlyr = this.gameObject.GetComponent<Sound>();
        }

        // Init Bullet Pool
        for(int i=0; i<this.e_Bllts.Length; i++){
          this.e_Bllts[i].gameObject.SetActive(false) ; //WTF: HACK: MUST be set to inactive, else collider causes bullets to vector incorrect direction
          this.e_Bllts[i].lpRefill(this.numPrefill)   ;
        }

        // Init Particle Fx Pool
        this.fx_Hit_OffSet = new float[this.fx_Hits.Length];

        for(int i=0; i<this.fx_Hits.Length; i++){
          this.fx_Hits[i].gameObject.SetActive(false)         ;
          this.fx_Hits[i].transform.lpRefill(this.numPrefill) ;
          this.fx_Hit_OffSet[i] = this.fx_Hits[i].startSize * 0.5f; // Convert to radius
        }

		// Init Animator Pool
		this.anmEmit_duratn = new float[this.anmEmit.Length];
		this.anmEmit_IntScl = new Vector3[this.anmEmit.Length];
		for(int i=0; i<this.anmEmit.Length; i++){
		  this.anmEmit_IntScl[i] = this.anmEmit[i].transform.localScale; //get scale
		  this.anmEmit[i].gameObject.SetActive(false);
		  this.anmEmit[i].transform.lpRefill(this.numPrefill);
		  
		  //get clip duration
		  RuntimeAnimatorController ac = this.anmEmit[0].runtimeAnimatorController;
		  float retDuration = 1.0f;
		  for(int j=0; j<ac.animationClips.Length; j++){   //For all animations
//			Debug.Log ("ANIMATORCLIP LENGTH : " + ac.animationClips.Length + " j: " + j + " NAME: " + ac.animationClips[j].name);
			if(ac.animationClips[j].name == this.anmEmit[i].name){ // HACK : Prefab Name MUST match clip name
			  retDuration = ac.animationClips[j].length * 1.85f; // HACK : Magic numbering; need to find a way to get speed at clip level
//			  Debug.Log ("Found IDLE : " + retDuration + " : " + this);
			}
		  }
		  this.anmEmit_duratn[i] = retDuration;
//		  Debug.Log ("CURRENT STATE: " + this.anmEmit[i].GetCurrentAnimatorClipInfo(0).ToString() +" Length : " + this.anmEmit[i].GetCurrentAnimatorStateInfo(0).length);
		}

      }
      else{
        Debug.Log("CONSTANT LEVEL == exists : " + __gCONSTANT._LEVEL);
        __gCONSTANT._LEVEL.levelSpawn<GameObject>(this.gameObject); //Stubbed out logging function
      }
    }

    public virtual void Start(){
      //		Debug.Log("GLOBAL LEVEL : " + __gCONSTANT._LEVEL);
      if(OnInit_Delegate != null){
        OnInit_Delegate();
      }
    }

    public Sound getSoundManager(){
      if(this.sndPlyr != null){
        return this.sndPlyr;
      }
      else{
        return null;
      }
    }

#endregion

  }

}
