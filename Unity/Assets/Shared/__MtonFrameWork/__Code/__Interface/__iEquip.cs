using UnityEngine        ;
using System.Collections ;

namespace MTON{

  public interface IEquip{

    // current Equip
    int currentEquip { get; set; } 

    // On Equip
    void OnEquip() ;
    // Use Equipment
    void UsEquip() ;
    // Un Equip
    void UnEquip() ;

  }

}
