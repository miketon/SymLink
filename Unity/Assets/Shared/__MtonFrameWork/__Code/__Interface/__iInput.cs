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
	void setJump(bool bJump);
	void setAttk(bool bAttk);
	
	// Visual State
	void setActV(bool bActV);

  }

}
