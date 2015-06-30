using UnityEngine        ;
using System.Collections ;

namespace MTON{

  public class mtonGlobal{ //Project Global object to hold systemwide paths, layers, tags ...etc

    //handles Paths
    public static string _char = "_Characters/" ;
    public static string _sdFX = "_SoundFX/"    ;
    public static string _txtr = "_Textures/"   ;
	  public static string _matl = "_Materials/"  ;

    //handles Layers
    //handles Tags

  }

  public interface IGlobal{
    float timeElapsed { get; set; } 

    void OnLoadGame() ; // init all states needed by game : start timeElapsed
    void UnLoadGame() ; // de-initialize all settings on game/applicdation unload
  }

}
