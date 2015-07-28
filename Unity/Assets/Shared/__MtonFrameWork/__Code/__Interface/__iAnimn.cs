using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

#region Mton Interface Animation

  public interface IAnimn{ //Interface for basic animation movies : handles input logic and calls IRbody implementation : cRbody/mCcntl

    //transform functions
    void doMove(Vector3 moveDir) ; //walk/run
	void doFace(Vector3 faceDir) ; //do facing
    void doJump()                ;
    void doFall()                ;
    void doIdle()                ; //standing state
    void doDuck(bool bDuck)      ;

    //	Not part of Interface, but will likely be implemented
    //  void doNeutral()             ; //neutral state -> good for swapping/activating back main model
    //  void doStand()               ;
    //  void doApex()                ;

  }

  public interface IAnimn_ID{ //Interface to base animation properties to hash to Mecanim ID

    //Properties
    //	Not part of Interface, but will likely be implemented
    //	Animator _anim       { get; set; } //mecanim    animator
    //int properties to store Animator hashes
    int      _kVertcl_ID { get; set; } //vertical   delta
    int      _kHorizn_ID { get; set; } //horizontal delta
    int      _bGround_ID { get; set; }
    int      _bCrouch_ID { get; set; }
    int      _bForwrd_ID { get; set; } //2d true == right; 3d true == forward

  }

#endregion

}
