using UnityEngine        ;
using System.Collections ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Interface{

  public interface iVectorSHAPE{ // Had to change from iTween to not conflict with iTween plug-in
	// get pos based on % on curve
	Vector3 vGetCurvePos(float IN_FLOAT);
  }

}
