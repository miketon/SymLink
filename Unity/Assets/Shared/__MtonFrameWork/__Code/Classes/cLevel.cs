using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cLevel : MonoBehaviour, ILevel{

	public int levelCurrent { get; set; } //NOTE : interface variable implementation can't be static
		
    //Init Level
    public void OnLoadLevel(){}           //NOTE : interface function implementation must be public
    //Shut Down Level
    public void UnLoadLevel(){}

#region Level Spawning logic

	public Transform[]      e_Walks;
	public Transform[]      e_Flyrs;
	public ParticleSystem[] fx_Hits;

	public enum e_Walk{
	  Melee_00, //moon
	  Range_00,
	  None,
	}

	public enum e_Flyr{
	  Melee_00, //moon
	  Range_00,
	  None,
	}

	public enum fx_Hit{
	  HitMark_00, //moon
	  GunFlar_00,
	  ScoreCn_00,
	  None,
	}


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

	//Walking Enemy
	public Transform SpawnObj<T>(e_Walk eObj, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
	  if(eObj == e_Walk.Melee_00){
		funcToRun();
	    return this.e_Walks[0].lpSpawn(IN_POS, IN_ROT);
	  }
	  else{
	    return null;
	  }
	}

	//Enemy
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
	  if(eHit == fx_Hit.HitMark_00){
	    Emit(this.fx_Hits[0], IN_POS, IN_ROT, funcToRun);
	  }
	  else if(eHit == fx_Hit.GunFlar_00){
	    Emit(this.fx_Hits[1], IN_POS, IN_ROT, funcToRun);
	  }
	  else{
	    Debug.LogWarning(this + " ACCESSING cLevel.cs fx_Hits[] our of index! ");
	  }
	}

	public void Emit<T>(ParticleSystem IN_PS, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
		Transform pXform = IN_PS.transform.lpSpawn(IN_POS, IN_ROT); //Get Transform from pool using Liteprint
		ParticleSystem pSystem = pXform.gameObject.GetComponent<ParticleSystem>();
//		pSystem.Clear() ; //true == include children
		pSystem.Play();
		this.tt().ttAdd(pSystem.duration, ()=>{
			pSystem.Stop();
			pXform.lpRecycle(); //Return to pool
			funcToRun();
		}); //using TeaTime.cs
	}

	public void Emit_Bullet<T>(Transform IN_XFORM, Vector3 IN_POS, Quaternion IN_ROT, Func<T> funcToRun){
		Transform pXform = IN_XFORM.lpSpawn(IN_POS, IN_ROT); //Get Transform from pool using Liteprint
		GameObject gXform = pXform.gameObject;
	    gXform.SetActive(true);
		this.tt().ttAdd(2.0f, ()=>{
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
	
	public virtual void Awake(){
		if(__gCONSTANT._LEVEL == null){
			Debug.LogError("CONSTANT LEVEL == null : populating with " + this);
			new __gCONSTANT(this);
		}
		else{
			Debug.Log("CONSTANT LEVEL == exists : " + __gCONSTANT._LEVEL);
			__gCONSTANT._LEVEL.levelSpawn<GameObject>(this.gameObject);
		}
	}
	public virtual void Start(){
		Debug.Log("GLOBAL LEVEL : " + __gCONSTANT._LEVEL);
	}

  }

}
