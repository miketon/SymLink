using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

  public class cEquip : IEquip{
    // current Equip
    public int currentEquip { get; set; } 

    // On Equip
	public void OnEquip(){
	  Debug.Log(this + "MTON.Class : OnEquip ");
	}
    // Use Equipment
    public void UsEquip(){

	}
    // Un Equip
	public void UnEquip(){

	}

  }

}
