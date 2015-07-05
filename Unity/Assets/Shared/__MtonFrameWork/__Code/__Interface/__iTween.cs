using UnityEngine        ;
using System.Collections ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Interface{

  public interface iTween{

    bool bOnCompleteHide{ get; set; } // Hide on complete

	//DOTween variables
    Tween    tw_Cache { get; set; }
    Sequence sq_Cache { get; set; }

  }

}
