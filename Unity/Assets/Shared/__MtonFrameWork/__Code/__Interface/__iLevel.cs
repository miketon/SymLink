using UnityEngine        ;
using System.Collections ;

namespace MTON{

  public interface ILevel{

    int levelCurrent { get; set; } 

    //Init Level
    void OnLoadLevel() ;    
    //Shut Down Level
    void UnLoadLevel() ;   
  }

}
