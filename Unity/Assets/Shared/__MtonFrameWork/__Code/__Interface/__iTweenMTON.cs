using UnityEngine        ;
using System.Collections ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Interface{

  public interface iTweenMTON{ // Had to change from iTween to not conflict with iTween plug-in

    bool bOnCompleteHide{ get; set; } // Hide on complete

	//DOTween variables
    Tween    tw_Cache { get; set; }
    Sequence sq_Cache { get; set; }

  }

}
