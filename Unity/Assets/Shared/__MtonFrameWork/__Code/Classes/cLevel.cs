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

	public virtual void Awake(){}
	public virtual void Start(){}

  }

}
