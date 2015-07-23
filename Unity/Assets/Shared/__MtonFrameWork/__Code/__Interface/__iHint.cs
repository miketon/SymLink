using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  //This is a generic interface where T is a placeholder for a data type that will be provided by the implementing class.
  public interface IHint<T>{ 
	
	void OnHintEntr(T TArg);
    void OnHintExit(T TArg);

  }

}
