using UnityEngine        ;
using System.Collections ;

namespace MTON.Global{

  public class __gCONSTANT{ //Project Global object to hold systemwide paths, layers, tags ...etc

	public static MTON.Class.cLevel _LEVEL = null;

	public __gCONSTANT(MTON.Class.cLevel IN_LEVEL){
		_LEVEL = IN_LEVEL;
	}

    //handles Layers - Entities can move
    public const string _PLAYER = "Player" ;
    public const string _ENEMY  = "Enemy"  ;
    public const string _BULLET = "Bullet" ;
    public const string _ITEMS  = "Item"   ;

    //handles Layers - Environments 
    public const string _FLOOR  = "Ground";
    public const string _WALLS  = "Walls" ;
    public const string _DOORS  = "Doors" ; //could be spawn, save, restore, entry, exit points
    public const string _TRGGR  = "Ignore Raycast"; //HACK :level triggers/hint should ignore ground raycast/collision check!

    //handles Layers - FX
    public const string _SPFX   = "Ignore Raycast"; //HACK :level triggers/hint should ignore ground raycast/collision check!

    //handles Tags
    //handles Paths
    public static string _char = "_Characters/" ;
    public static string _sdFX = "_SoundFX/"    ;
    public static string _txtr = "_Textures/"   ;
    public static string _matl = "_Materials/"  ;

  }

  public class __gIO{ //Project Global object to hold IO buttons

	//handles player one IO
	public const string _hAxs_p1 = "Horizontal" ;
	public const string _vAxs_p1 = "Vertical"   ;
    public const string _JUMP_p1 = "Jump"       ;
    public const string _ATTK_p1 = "Fire1"      ;

  }

  public class __gUtility{

	//Prevents duplicate components, checks to see that one doesn't already exist
	public static T AddComponent_mton<T>(GameObject IN_GO) where T:Component{ 
	  T cExist = IN_GO.GetComponent<T>();
	  if(cExist == null){
//		Debug.Log(" Adding " + cExist); // (Component)T.ToString());
		return IN_GO.AddComponent<T>();
	  }
	  else{
//		Debug.Log(" Found " + cExist); //(Component)T.ToString());
	    return cExist;
	  }
	}
	
	public static void CheckAndInitLayer(GameObject IN_GO, string IN_LAYERNAME){
	  string curLayer = LayerMask.LayerToName(IN_GO.layer);
	  if(curLayer != IN_LAYERNAME){
	    IN_GO.layer = LayerMask.NameToLayer (IN_LAYERNAME); 
		Debug.LogWarning(IN_GO+" Layer/Level Hint Not Setup Correctly : Converting '" + curLayer + "' to : '" + IN_LAYERNAME + "' ");
	  }
	}

	public static void Debugmton(int IN_mton){
	  Debug.Log("IN_mton");
	}

  }


}
