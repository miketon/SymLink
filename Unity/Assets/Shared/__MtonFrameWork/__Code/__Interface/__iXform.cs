using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

#region Mton Interface - IXform

  public interface IXform{

    //Properties
    Transform  xform   { get; set; }
    //	float      kFacing { get; set; } //1.0f == forward(or right in 2D); else -1.0f backwards; based on deltaposition
    //augments io axis reads.  xform rocking back and forth(rolling cube) can mess up facing logic
    Vector3    pos     { get; set; } 
    Vector3    scl     { get; set; } 
    Quaternion rot     { get; set; } 

    void Spawn(Vector3 vecPos) ; 
    void Kill()                ;
    Vector3 On_kPos()          ; //delta pos changed

  }

#endregion

}
