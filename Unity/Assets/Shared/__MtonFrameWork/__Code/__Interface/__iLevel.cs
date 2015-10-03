using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface ILevel{

    int levelCurrent { get; set; } 

    // Init Level
    void OnLoadLevel() ;    
	// Reset Level
	void Reset_Level();
    // Shut Down Level
    void UnLoadLevel() ;   

  }

}
