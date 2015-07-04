using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface IGlobal{
    float timeElapsed { get; set; } 

    void OnLoadGame() ; // init all states needed by game : start timeElapsed
    void UnLoadGame() ; // de-initialize all settings on game/applicdation unload
  }

}
