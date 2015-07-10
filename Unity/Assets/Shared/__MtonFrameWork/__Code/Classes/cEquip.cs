using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

  public class cEquip : MonoBehaviour, IEquip{

	public virtual void Start(){
//			Debug.Log(this + " Start ! ");
	}

    // current Equip
    public int currentEquip { get; set; } 

    // On Equip
	public virtual void OnEquip(){
	  Debug.Log(this + "MTON.Class : OnEquip ");
	}
    // Use Equipment
    public virtual void UsEquip(){

	}
    // Un Equip
	public virtual void UnEquip(){

	}

  }

}
