using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IPathCV{ // Had to change from iTween to not conflict with iTween plug-in
	// get pos based on % on curve
	Vector3 vGetCurvePos(float IN_FLOAT);
  }

}
