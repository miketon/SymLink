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

    // Init Level
    public void OnLoadLevel(){}           //NOTE : interface function implementation must be public
    // Reset Level
    public void Reset_Level(){
	  Debug.Log (" LEVEL GAMEOVER");
      Application.LoadLevel (2); // go to restart of the level
	}
    // Shut Down Level
    public void UnLoadLevel(){
	  Debug.Log (" LEVEL COMPLETED");
	}

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

    public int numPrefill = 15;
    public s_PoolProperties sPL = new s_PoolProperties();
    [Serializable] //MUST : add so that this custom data type can be displayed in the inspector
      public struct s_PoolProperties{

        public Transform[]      e_Walks;
        public Transform[]      e_Flyrs;
        public Transform[]      e_Bllts;
        public Transform[]      e_Slams; // bullet slams : thompers, groundspikes, doors..etc
        public Transform[]      e_Icons;

        public Animator[]       anmEmit;
        public ParticleSystem[] fx_Hits;

        public float[]          fx_Hit_OffSet  ; // To place effect at feet = particle size(radius)
        public float[]          anmEmit_duratn ; // Duration of animation clip
        public Vector3[]        anmEmit_IntScl ; // captures scale of animator objects

      }

#region enums

    public enum e_Icon{
      Death   ,
      Warning , 
      None    ,
    }

    public enum e_Enmy{
      Melee_00 ,
	  Biter_00 ,
      Range_00 ,
      None     ,
    }

    public enum e_Flyr{
      Melee_00 ,
      Range_00 ,
      None     ,
    }


    public enum e_psFX{ // Must be particle system
      HitMark_00 , // moon
      BteMark_00 , // bite mark
      GunFlar_00 ,
      DustLnd_00 , // Dust Land
      DustJmp_00 , // Dust Jump
      DustStp_00 , // Dust step
      ScoreCn_00 ,
      None       ,
    }

    public enum e_Anim{ // Must be Animator
      DustStp_00 , // Dust step
      DustJmp_00 , // Dust Jump
      DustLnd_00 , // Dust Land
      DustSld_00 , // Dust Slide
      BteMark_00 , // bite mark
      ScoreCn_00 ,
      None       ,
    }

    public enum e_Bllt{
      Projctl_00 , //projectile
      LasrRay_00 ,
      Grenade_00 ,
      HomingB_00 ,
	  Flaming_00 ,
	  Satellt_00 ,
	  Pillars_00 ,
      None       ,
    }

    public enum e_Slams{
      Pillar_00 , //projectile
      DoorCL_00 ,
      Spiker_00 ,
      None      ,
    }

#endregion

#region Level Spawning logic

    public T levelSpawn<T>(T Targ){
      Debug.Log("Spawning : " + Targ) ;
      //		Transform xform = null    ;
      return Targ                     ;
    }

    //Spawning Standard Object
    public Transform Spawn<T>(Transform IN_XFORM, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      IN_XFORM.gameObject.SetActive(true)     ;
      funcToRun()                             ;
      return IN_XFORM.lpSpawn(IN_POS, IN_ROT) ;
    }

    // Spawning Icon
    public Transform SpawnObj<T>(e_Icon eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform, T> funcToRun){
	  Transform spawnedObj;
      if(eObj == e_Icon.Death){
        spawnedObj = this.sPL.e_Icons[0].lpSpawn(IN_POS, IN_ROT) ;
	  }
	  else if(eObj == e_Icon.Warning){
        spawnedObj = this.sPL.e_Icons[1].lpSpawn(IN_POS, IN_ROT) ;
	  }
      else{
        return null;
      }
	  spawnedObj.gameObject.SetActive(true)                    ;
      funcToRun(spawnedObj)                                    ;
      return spawnedObj                                        ;
    }

    // Walking Enemy
    public Transform SpawnObj<T>(e_Enmy eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform, T> funcToRun){
      if(eObj == e_Enmy.Melee_00){
		Transform spawnedObj = this.sPL.e_Walks[0].lpSpawn(IN_POS, IN_ROT) ;
        funcToRun(spawnedObj)                                              ;
        return spawnedObj                                                  ;
      }
	  else if(eObj == e_Enmy.Biter_00){
		Transform spawnedObj = this.sPL.e_Walks[1].lpSpawn(IN_POS, IN_ROT) ;
        funcToRun(spawnedObj)                                              ;
        return spawnedObj                                                  ;
      }
      else{
        return null;
      }
    }

    // Flying Enemy
    public Transform SpawnObj<T>(e_Flyr eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
      if(eObj == e_Flyr.Melee_00){
        funcToRun()                                        ;
        return this.sPL.e_Flyrs[0].lpSpawn(IN_POS, IN_ROT) ;
      }
      else{
        return null;
      }
    }

#endregion

#region Effects functions	

    public void fx_Dust(e_psFX IN_FX, Vector3 IN_POS, bool bFLIP_2D = false){
      if(IN_FX != e_psFX.None){ // set to -1 to prevent emission
        Emit_pFX(IN_FX, IN_POS, Quaternion.identity, (Transform xForm)=>{
            return xForm ;
            }, bFLIP_2D) ;
      }
    }

    public void fx_Dust(e_Anim IN_FX, Vector3 IN_POS, bool bFaceRt = true, bool bFLIP_2D = false){
      Quaternion qRot = Quaternion.identity;
      if(bFLIP_2D == true){
        if(bFaceRt == false){
          qRot = Quaternion.Euler(Vector3.up); // HACK : Passing anything other than identity signals negative scale
        }
      }
      if(IN_FX != e_Anim.None){ // set to -1 to prevent emission
        Emit_ANM(IN_FX, IN_POS, qRot, (Transform xForm)=>{
            return xForm ;
            }, bFLIP_2D) ;
      }
    }

#endregion

    private int iDustStep = 0;
    //fx
    public void Emit_pFX<T>(e_psFX eHit, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform,T> funcToRun, bool bFLIP_2D = false){

      if(eHit == e_psFX.HitMark_00){ 
        Emit(this.sPL.fx_Hits[0], IN_POS, IN_ROT, funcToRun);
      }
      else if(eHit == e_psFX.GunFlar_00){
        Emit(this.sPL.fx_Hits[1], IN_POS, IN_ROT, funcToRun);
      }
      else if(eHit == e_psFX.BteMark_00){
        Emit(this.sPL.fx_Hits[2], IN_POS, IN_ROT, funcToRun);
      }
      //      else if(eHit == fx_Hit.DustJmp_00){
      //        Emit(this.sPL.fx_Hits[3], IN_POS + (Vector3.up * this.sPL.fx_Hit_OffSet[3] * 0.85f) , IN_ROT, funcToRun);
      //      }
      else if(eHit == e_psFX.DustLnd_00){
        Emit(this.sPL.fx_Hits[4], IN_POS + (Vector3.up * this.sPL.fx_Hit_OffSet[4] * 0.85f) , IN_ROT, funcToRun);
      }
      else if(eHit == e_psFX.DustStp_00){ // Dust step alternates : HACK : Index + 1
        int iAltStep = this.iDustStep%2                                                                                                ; // alternate between dust steps
        Emit(this.sPL.fx_Hits[5 + iAltStep], IN_POS + (Vector3.up * this.sPL.fx_Hit_OffSet[5 + iAltStep] * 0.25f) , IN_ROT, funcToRun) ;
        this.iDustStep = this.iDustStep + 1                                                                                            ;
      }

    }

    public void Emit_ANM<T>(e_Anim eAnm, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform,T> funcToRun, bool bFLIP_2D = false){
      if(eAnm == e_Anim.DustStp_00){
        int iAltStep = this.iDustStep%2                                                                                                                     ; // alternate between dust steps
        this.iDustStep++                                                                                                                                    ;
        Emit(this.sPL.anmEmit[2 + iAltStep], IN_POS, IN_ROT, this.sPL.anmEmit_duratn[2 + iAltStep], funcToRun, this.sPL.anmEmit_IntScl[2 + iAltStep], true) ;
      }
      else if(eAnm == e_Anim.DustJmp_00){
        Emit(this.sPL.anmEmit[0], IN_POS, IN_ROT, this.sPL.anmEmit_duratn[0], funcToRun, this.sPL.anmEmit_IntScl[0], true);
      }
      else if(eAnm == e_Anim.DustLnd_00){
        Emit(this.sPL.anmEmit[1], IN_POS, IN_ROT, this.sPL.anmEmit_duratn[1], funcToRun, this.sPL.anmEmit_IntScl[1], true);
      }
      else if(eAnm == e_Anim.DustSld_00){
        Emit(this.sPL.anmEmit[4], IN_POS, IN_ROT, this.sPL.anmEmit_duratn[4], funcToRun, this.sPL.anmEmit_IntScl[4], true);
      }
    }

    public void Emit<T>(ParticleSystem IN_PS, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform,T> funcToRun, bool bFLIP_2D = false){
      Transform pXform  = IN_PS.transform.lpSpawn(IN_POS, IN_ROT) ; //Get Transform from pool using Liteprint
      GameObject gXform = pXform.gameObject                       ;
      //	  Debug.Log ("EMITTING : "+ pXform);
      gXform.SetActive(true)                                      ;
      IN_PS.Play()                                                ;
      this.tt().ttAdd(IN_PS.duration, ()=>{
          IN_PS.Stop()            ;
          IN_PS.Clear()           ; //true == include children
          pXform.lpRecycle()      ; //Return to pool
          funcToRun(pXform)       ;
          gXform.SetActive(false) ;
      })                          ; //using TeaTime.cs
    }

    public void Emit<T>(Animator IN_PS, Vector3 IN_POS, Quaternion IN_ROT, float IN_DUR, Func<Transform,T> funcToRun, Vector3 IN_SCL, bool bFLIP_2D = false){
      Transform pXform  = IN_PS.transform.lpSpawn(IN_POS, IN_ROT) ; //Get Transform from pool using Liteprint
      GameObject gXform = pXform.gameObject                       ;
      if(bFLIP_2D){
        if(IN_ROT == Quaternion.identity){
          pXform.localScale = IN_SCL;
        }
        else{
          Vector3 sclFLIP = new Vector3(-IN_SCL.x, IN_SCL.y, IN_SCL.z) ;
          pXform.localScale = sclFLIP                                  ;
        }
      }
      //	  Debug.Log ("EMITTING : "+ pXform) ;
      gXform.SetActive(true)                  ;
      this.tt().ttAdd(IN_DUR , ()=>{
          pXform.lpRecycle()      ; //Return to pool
          funcToRun(pXform)       ;
          gXform.SetActive(false) ;
      })                          ; //using TeaTime.cs
    }

    // Bullets Conventional
    public void Emit_Bullet<T>(e_Bllt eBullet, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform,T> funcToRun, float retPool=3.0f){
      if(eBullet == e_Bllt.Projctl_00){
        Emit_Bullet(this.sPL.e_Bllts[0], IN_POS, IN_ROT, funcToRun, retPool);
      }
      else if(eBullet == e_Bllt.HomingB_00){ // Homing Bullet
        Emit_Bullet(this.sPL.e_Bllts[1], IN_POS, IN_ROT, funcToRun, retPool);
      }
	  else if(eBullet == e_Bllt.Flaming_00){ // Flaming Bullet
        Emit_Bullet(this.sPL.e_Bllts[2], IN_POS, IN_ROT, funcToRun, retPool);
      }
	  else if(eBullet == e_Bllt.Satellt_00){ // Satellite
        Emit_Bullet(this.sPL.e_Bllts[3], IN_POS, IN_ROT, funcToRun, retPool);
      }
    }

    // Bullets Slam : Thomper, Doors, Spikes
    public void Emit_Bullet<T>(e_Slams eBullet, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform,T> funcToRun, float retPool=3.0f){
      if(eBullet == e_Slams.Pillar_00){
        Emit_Bullet(this.sPL.e_Slams[0], IN_POS, IN_ROT, funcToRun);
      }
    }

    public void Emit_Bullet<T>(Transform IN_XFORM, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform,T> funcToRun, float retPool=3.0f){
      Transform pXform = IN_XFORM.lpSpawn(IN_POS, IN_ROT) ; //Get Transform from pool using Liteprint
      GameObject gXform = pXform.gameObject               ;
      gXform.SetActive(true)                              ;
      this.tt().ttAdd(retPool, ()=>{
          pXform.lpRecycle()      ; //Return to pool
          funcToRun(pXform)       ;
          gXform.SetActive(false) ;
      })                          ; //using TeaTime.cs
    }


#region Level Collision Handler

    public void doCollide<T>(Transform srcXFORM, Transform dstXFORM){
      Debug.Log(this + "LEVEL collidision between : source : " + srcXFORM + " destination : " + dstXFORM);
    }

#endregion


#region Class Utility

    public virtual void Awake(){
	  if(OnInit_Delegate != null){
        OnInit_Delegate();
      }
	  if(this.mPlayer == null){
	    Debug.Log (" LEVEL Player NOT SET");
		this.mPlayer = GameObject.FindWithTag(__gCONSTANT._PLAYER).transform;
	  }
	  if(this.mCamera == null){
	    Debug.Log (" LEVEL Camera NOT SET");
		this.mCamera = GameObject.FindWithTag(__gCONSTANT._CAMERA).GetComponent<Camera2D>();
	  }
      if(__gCONSTANT._LEVEL == null){
        Debug.LogWarning("CONSTANT LEVEL == null : populating with " + this) ;
        __gCONSTANT._LEVEL = this                                            ; // Assign level to global constant and kick off all set up via INIT_CONST_Delegate

        // Init Sound Player
        if(this.sndPlyr == null){
          this.sndPlyr = this.gameObject.GetComponent<Sound>();
        }

        // Init Bullet Pool
        for(int i=0; i<this.sPL.e_Bllts.Length; i++){
          this.sPL.e_Bllts[i].gameObject.SetActive(false) ; //WTF: HACK: MUST be set to inactive, else collider causes bullets to vector incorrect direction
          this.sPL.e_Bllts[i].lpRefill(this.numPrefill)   ;
        }

        for(int i=0; i<this.sPL.e_Slams.Length; i++){
          this.sPL.e_Slams[i].gameObject.SetActive(false) ;
          this.sPL.e_Slams[i].lpRefill(this.numPrefill)   ;
        }

        // Init Particle Fx Pool
        this.sPL.fx_Hit_OffSet = new float[this.sPL.fx_Hits.Length];

        for(int i=0; i<this.sPL.fx_Hits.Length; i++){
          this.sPL.fx_Hits[i].gameObject.SetActive(false)                  ;
          this.sPL.fx_Hits[i].transform.lpRefill(this.numPrefill)          ;
          this.sPL.fx_Hit_OffSet[i] = this.sPL.fx_Hits[i].startSize * 0.5f ; // Convert to radius
        }

        // Init Animator Pool
        this.sPL.anmEmit_duratn = new float[this.sPL.anmEmit.Length]   ;
        this.sPL.anmEmit_IntScl = new Vector3[this.sPL.anmEmit.Length] ;

        for(int i=0; i<this.sPL.anmEmit.Length; i++){
          this.sPL.anmEmit_IntScl[i] = this.sPL.anmEmit[i].transform.localScale ; //get scale
          this.sPL.anmEmit[i].gameObject.SetActive(false)                       ;
          this.sPL.anmEmit[i].transform.lpRefill(this.numPrefill)               ;

          //get clip duration
          RuntimeAnimatorController ac = this.sPL.anmEmit[i].runtimeAnimatorController ;
          float retDuration = 1.1109f                                                  ;

          for(int j=0; j<ac.animationClips.Length; j++){   //For all animations
            //			Debug.Log ("ANIMATORCLIP LENGTH : " + ac.animationClips.Length + " j: " + j + " NAME: " + ac.animationClips[j].name+" i: ");
            if(ac.animationClips[j].name == this.sPL.anmEmit[i].name){ // HACK  : PREFAB NAME MUST MATHC CLIP NAME
              retDuration = ac.animationClips[j].length ; // HACK  : Magic numbering ; need to find a way to get speed at clip level
              // FIXED : Use Animation.Samples Not State.Speed
              // FIXED : Set Animation.LoopTime = false, to prevent frame bleed over
              // FIXED : Do not set State.Mirror = true, else playback rate becomes choppy
              //			  Debug.Log ("Found IDLE : " + retDuration + " : " + this);
            }
          }
          this.sPL.anmEmit_duratn[i] = retDuration;
          //		  Debug.Log ("CURRENT STATE: " + this.sPL.anmEmit[i].GetCurrentAnimatorClipInfo(0).ToString() +" Length : " + this.anmEmit[i].GetCurrentAnimatorStateInfo(0).length);
        }

      }
      else{
        Debug.Log("CONSTANT LEVEL == exists : " + __gCONSTANT._LEVEL) ;
        __gCONSTANT._LEVEL.levelSpawn<GameObject>(this.gameObject)    ; //Stubbed out logging function
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
    //	private void Update(){
    //	  if(Input.GetKeyDown(KeyCode.S)){
    //	    this.Emit_Bullet(this.sPL.e_Slams[0], Vector3.zero, Quaternion.identity, ()=>{
    //					Debug.Log(this + " SLAMMING ");
    //					return true;
    //				}, 1.5f);
    //	  }
    //	}

  }

}
