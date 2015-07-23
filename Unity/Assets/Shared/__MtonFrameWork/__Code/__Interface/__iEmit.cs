using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  //This is a generic interface where T is a placeholder for a data type that will be provided by the implementing class.
  public interface IEmit<T>{ 
	
	void OnInit(T TArg);
    void OnPlay(T TArg);
	void OnStop(T Targ);

  }

}
