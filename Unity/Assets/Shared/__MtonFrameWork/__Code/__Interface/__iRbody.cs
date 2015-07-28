using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

#region Mton Interface - IRbody

  public interface IRbody{

    //	delegate bool OnGroundCallback() ; //setup delegate
    //  OnGroundCallback OnGround()      ; //define event

    bool  bGround { get; set; } 
    bool  bCeilng { get; set; } 
    Vector3   cen { get; set; } //Center point

	//VState functions
	bool  OnCeilng()                 ;
    bool  OnGround()                 ; 

    //Move Functions
    void Move(Vector3 moveDir) ;
    void Fall()                ; //gravity
    void Jump()                ;
    void Flap()                ; //airjump

	//Utility Functions
//    void ResetVelocity()       ;
//    void ResetRotation()       ;

	//    Class Properties
    //	  Not part of Interface, but will likely be implemented
    //	  CharacterController contrl { get; set; }
    //    Rigidbody           rbody  { get; set; }
    //    Collider            colld  { get; set; }

  }

#endregion

}