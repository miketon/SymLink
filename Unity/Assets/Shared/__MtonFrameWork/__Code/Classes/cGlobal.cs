using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

  public class IGlobal_CONSTANT{ //Project Global object to hold systemwide paths, layers, tags ...etc

    //handles Layers - Entities can move
    public const string _PLAYER = "Player" ;
    public const string _ENEMY  = "Enemy"  ;
    public const string _BULLET = "Bullet" ;
    public const string _ITEMS  = "Item"   ;

    //handles Layers - Environments 
    public const string _FLOOR  = "Ground";
    public const string _WALLS  = "Walls" ;
    public const string _DOORS  = "Doors" ; //could be spawn, save, restore, entry, exit points

    //handles Tags
    //handles Paths
    public static string _char = "_Characters/" ;
    public static string _sdFX = "_SoundFX/"    ;
    public static string _txtr = "_Textures/"   ;
    public static string _matl = "_Materials/"  ;

  }

}
