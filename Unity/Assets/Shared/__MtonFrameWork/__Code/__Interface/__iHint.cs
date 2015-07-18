using UnityEngine        ;
using System.Collections ;
using MTON.Class         ;

namespace MTON.Interface{

  public interface IHint{
    
	void OnHintEntr(cInput TArg);
    void OnHintExit(cInput TArg);

  }

}
