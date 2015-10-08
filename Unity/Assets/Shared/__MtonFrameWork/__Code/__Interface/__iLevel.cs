using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface ILevel{

    int levelCurrent { get; set; } 

    // Init Level
    void OnLoadLevel() ;    
    // Shut Down Level
    void UnLoadLevel() ;  
    // Load Unity Scene based on build index
    void LoadSceneIN(int IN_SCENE); 

  }

}
