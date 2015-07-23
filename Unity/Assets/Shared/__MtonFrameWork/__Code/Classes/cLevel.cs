using UnityEngine        ;
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
