using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IHint{

//	bool bActiveHint { get; set; } 
    
//	void OnHintStart<T>(T IN_GO);
	void OnHintStart(GameObject IN_GO);
	void OnHintCheck(GameObject IN_GO);
	void OnHintComplete(GameObject IN_GO);

  }

}
