using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;
using System.Collections.Generic ; // Dictionary, List
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cLevel : MonoBehaviour, ILevel{

	public delegate void  INIT_LEVEL ();
	public static   event INIT_LEVEL OnInit_Delegate;

	public delegate void ADD_TRANSFORM(Transform IN_XFORM) ; //set up delegate
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
	  this.camTgts.Add(IN_XFORM)     ; //else add to camTgts
	  this.camrADD_Delegate(IN_XFORM) ;
	  return IN_XFORM                ; //return transform
	}

	public Transform doCamrREM(Transform IN_XFORM){
	  foreach(Transform cam in this.camTgts){  //check current camTgts
	    if(IN_XFORM == cam){                   //if match camera list entry
	      Debug.Log ("Removing : " + IN_XFORM);
		  this.camTgts.Remove(IN_XFORM)  ; //remove xform
		  this.camrREM_Delegate(IN_XFORM) ;
		  return IN_XFORM                ; //return xform
		}
	  }
	  return null ; //return null if no transform removed
	}

	public Transform[]      e_Walks;
	public Transform[]      e_Flyrs;
	public Transform[]      e_Bllts;
	public Transform[]      e_Icons;
	public int numPrefill = 15;
//	public ParticleSystem[] fx_Hits;
	public Transform[] fx_Hits;


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

	public enum fx_Hit{
	  HitMark_00, //moon
	  BteMark_00, //bite mark
	  GunFlar_00,
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
	  IN_XFORM.gameObject.SetActive(true);
	  funcToRun();
	  return IN_XFORM.lpSpawn(IN_POS, IN_ROT);
	}

	// Spawning Icon
	public Transform SpawnObj<T>(e_Icon eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<Transform, T> funcToRun){
	  if(eObj == e_Icon.Death){
		Transform spawnedObj = this.e_Icons[0].lpSpawn(IN_POS, IN_ROT);
		spawnedObj.gameObject.SetActive(true);
		funcToRun(spawnedObj);
	    return spawnedObj;
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
	
	//fx
	public void Emit_Hit<T>(fx_Hit eHit, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
//	  int enumInt = (int)eHit;
//	  if(enumInt < this.fx_Hits.Length-1){ //Length - 1 : None needs to always be the last entry
//        Emit(this.fx_Hits[enumInt], IN_POS, IN_ROT, funcToRun);
//	  }
	  if(eHit == fx_Hit.HitMark_00){ 
        Emit(this.fx_Hits[0], IN_POS, IN_ROT, funcToRun);
	  }
	  else if(eHit == fx_Hit.GunFlar_00){
        Emit(this.fx_Hits[1], IN_POS, IN_ROT, funcToRun);
	  }
	  else if(eHit == fx_Hit.BteMark_00){
        Emit(this.fx_Hits[2], IN_POS, IN_ROT, funcToRun);
	  }

	}

	public void Emit<T>(Transform IN_PS, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
		Transform pXform = IN_PS.lpSpawn(IN_POS, IN_ROT); //Get Transform from pool using Liteprint
		GameObject gXform = pXform.gameObject;
		gXform.SetActive(true);
		ParticleSystem pSystem = pXform.GetComponent<ParticleSystem>();
		pSystem.Clear() ; //true == include children
	    pSystem.Play();
		this.tt().ttAdd(pSystem.duration, ()=>{
			pSystem.Stop();
			pXform.lpRecycle(); //Return to pool
			funcToRun();
		    gXform.SetActive(false);
		}); //using TeaTime.cs
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
			pXform.lpRecycle(); //Return to pool
			funcToRun();
			gXform.SetActive(false);
		}); //using TeaTime.cs
	}

#endregion

#region Level Collision Handler

	public void doCollide<T>(Transform srcXFORM, Transform dstXFORM){
		Debug.Log(this + "LEVEL collidision between : source : " + srcXFORM + " destination : " + dstXFORM);
	}

#endregion
	

#region Class Utility

	public virtual void Awake(){
		if(__gCONSTANT._LEVEL == null){
			Debug.LogError("CONSTANT LEVEL == null : populating with " + this);
			new __gCONSTANT(this);
		    for(int i=0; i<this.e_Bllts.Length; i++){
			  this.e_Bllts[i].gameObject.SetActive(false) ; //WTF: HACK: MUST be set to inactive, else collider causes bullets to vector incorrect direction
			  this.e_Bllts[i].lpRefill(this.numPrefill)   ;
			}
			for(int i=0; i<this.fx_Hits.Length; i++){
			  this.fx_Hits[i].gameObject.SetActive(false);
			  this.fx_Hits[i].transform.lpRefill(this.numPrefill);
			}
			if(this.sndPlyr == null){
			  this.sndPlyr = this.gameObject.GetComponent<Sound>();
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
