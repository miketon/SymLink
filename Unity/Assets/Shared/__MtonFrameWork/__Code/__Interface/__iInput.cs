using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IInput{

    // current Equip
    int bInput { get; set; } //is input enabled

    // Directional Pad
    void OnDir_Mov() ;
    void OnDir_Aim() ;
    // GamePad Buttons
    void Do_Jump() ;
    void Do_Attk() ;

  }

}
