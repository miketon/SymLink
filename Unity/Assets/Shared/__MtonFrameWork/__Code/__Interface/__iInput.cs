using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IInput{

    // Is input enabled
    bool bInput { get; set; } 

	// Button states
    bool bJump { get; set; }
    bool bAttk { get; set; }

    // Directional Pad
    void OnDir_Mov(Vector3 vDir) ;
    void OnDir_Aim(Vector3 vDir) ;

	void DoJump(bool bJump);
	void DoAttk(bool bAttk);

  }

}
