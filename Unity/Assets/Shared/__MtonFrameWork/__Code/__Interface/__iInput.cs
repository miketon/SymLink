using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IInput{

    // Is input enabled
    bool bInput { get; set; } 

    // Directional Pad
	void doDPAD_Dir(Vector3 vDir) ; //movement pad
	void doDPAD_Aim(Vector3 vDir) ; //aim pad

	// Button States
	void doJump(bool bJump);
	void doAttk(bool bAttk);
	
	// Visual State
	void doActV(bool bActV);

  }

}
