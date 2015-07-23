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

	public T levelSpawn<T>(T Targ){
		Debug.Log("Spawning : " + Targ);
//		Transform xform = null;
		return Targ;
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
