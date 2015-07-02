using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IInput{

    // Is input enabled
    int bInput { get; set; } 

    // Directional Pad
    void OnDir_Mov(Vector3 vDir) ;
    void OnDir_Aim(Vector3 vDir) ;

  }

}
