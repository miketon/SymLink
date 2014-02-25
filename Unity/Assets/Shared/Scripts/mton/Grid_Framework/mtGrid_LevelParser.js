#pragma strict
import System.IO;
import System.Collections.Generic;

class mtGrid_LevelParser extends __gameObjectMT_Grid_BG{

  protected var cLevel: int = 0            ; //currentLevel being parsed

  public var redCube   : GameObject ;
  public var greenCube : GameObject ;
  public var blueCube  : GameObject ;

  private var gridSpce : Vector3 = Vector3(1.0, 1.0, 1.0);

  var delxpos : int = 0;
  var delypos : int = 0;

  // HACK:Temp GameObject and ID List during the creation process. Change to builtins for Processing functions.
  private var blocksGO   : Array = new Array (); //generic list faster than normal list? Javascript arrays...equal to ???
  private var blocksID   : Array = new Array (); //List of blocksGO instance ID

  function Awake(){
    super.Awake()                        ;
    //blocksGO = new List.<GameObject>() ;
    blocksGO = new Array()               ;
    blocksID = new Array()               ;
    if(!redCube || !greenCube || !blueCube){
      Debug.LogError("Error : No Cubes Found") ;
      return                                   ;
    }
    else{
      BuildLevel();
    }  
  }

  function SetGridRangeLevel(gridBegin:Vector3, gridEnd:Vector3){
    var gridEnd_To_gPlane : Vector3;
    if(gPlane == GFGrid.GridPlane.XZ){ //set for topdown
      gridEnd_To_gPlane = Vector3(gridEnd.x, gridEnd.z, gridEnd.y); //Bottom Right corner
    }
    else if(gPlane == GFGrid.GridPlane.XY){ //set for sidescroll
      gridEnd_To_gPlane = Vector3(gridEnd.x, gridEnd.y, gridEnd.z); //Bottom Right corner
    }
    else if(gPlane == GFGrid.GridPlane.YZ){ //set for frontscroll
      gridEnd_To_gPlane = Vector3(gridEnd.z, gridEnd.x, gridEnd.y); //Bottom Right corner
    }
    SetGridRange(gridBegin, gridEnd_To_gPlane);
  } 

  function Update(){
    doUpdateDebugClass(); //comment out in production
    if(Input.GetKeyUp(KeyCode.R)){
      BuildLevel()          ;
      mtDebugMessageClear() ;
    }
    else if(Input.GetKeyUp(KeyCode.G)){
      GetGridCell(Vector3(delxpos, delypos, 0.0)) ;
      SetGridCell()                               ;
    }
    /*
    else if(Input.GetKeyUp(KeyCode.L)){
      cellGetLights();
      CellSetLights();
      var deletemeLightInstance = EditorUtility.InstanceIDToObject(25664);
      if(deletemeLightInstance){
        doCellSetLights(deletemeLightInstance);
      }
    }
    */
  }

  function BuildLevel(){
    ClearLevel()     ;
    InitGrid()       ;
    doTileLevel()    ; //build level/populate tiles , then doProcess on tile/prefab elements
    doProcessTiles() ;
  }

  function doTileLevel(){
    //print("doTileLevel");
  }

  function doProcessTiles(){
    blocksGUID = blocksID.ToBuiltin(int) as int[]               ;
    blocksGOID = blocksGO.ToBuiltin(GameObject) as GameObject[] ;
    for(var i:int=0; i<blocksGOID.length; i++){
      if(blocksGOID[i] != null){
        var dirArray:Array = getAdjacentCells(i);
        setAdjacentWalls(dirArray);
      }
    }
  }

  function CreateBlock(letter:String, bPos:Vector3){
    var block:GameObject = null;

    if(letter=='R'){
      block=redCube;
    }
    else if(letter=='G'){
      block=greenCube;
    }
    else if(letter=='B'){
      block=blueCube;
    }
    else{
      block = null; //do nothing; empty block
    }

    if(block){
      var obj:GameObject = Instantiate(block, bPos, Quaternion.identity) as GameObject ;
      obj.transform.eulerAngles = gAngle                                               ;
      //objScaleToGrid(obj)                                                            ;
      blocksGO.Add(obj)                                                                ; //track blocksGO just in case need to clear level
      blocksID.Add(obj.transform.GetInstanceID())                                      ;
      doProcessBlock()                                                                 ;
    }
    else{
      blocksGO.Add(null);  
      blocksID.Add(null); //null == 0
    }
  }

  function doProcessBlock(){
    CellSetLights();
  }

  function objScaleToGrid(obj:GameObject){
    var unitScale : Vector3   = Vector3(1.0, 1.0, 1.0)   ;  
    var bbSize    : Vector3   = Vector3(1.0, 1.0, 1.0)   ;
    var boolScle  : boolean = false;  

    var AABB:GameObject = getAABB(obj);

    if(AABB!=null){
      print(this + " processing block ."+AABB);
      if(AABB.renderer){
        bbSize               = AABB.renderer.bounds.size    ;
        boolScle             = true                         ;
        var posLocal:Vector3 = AABB.transform.localPosition ;

        posLocal.x *= gridSpce.x;
        posLocal.y *= gridSpce.y;
        posLocal.z *= gridSpce.z;

        obj.transform.position -= posLocal;
        //print("AABB Found : "+ AABB+this+obj+bbSize);
      }
    }
    else{
      var renBBox  : Renderer = obj.renderer             ; //returns bounds in world space
      if(renBBox){
        bbSize   = renBBox.bounds.size                               ;
        boolScle = true                                              ;
        //print("Using renderer AABB Not Found : " +this+obj+bbSize) ;
      }
      else{
        boolScle = false; //don't scale
        print("NO AABB Found : " +this+obj+bbSize);
      }
    }

    if(boolScle){
      unitScale.x = gridSpce.x/Mathf.Max(bbSize.x, 0.01) ; //Mathf.Max prevents divide by zero
      unitScale.y = gridSpce.y/Mathf.Max(bbSize.y, 0.01) ;
      unitScale.z = gridSpce.z/Mathf.Max(bbSize.z, 0.01) ;

      obj.transform.localScale.x  *= unitScale.x;
      obj.transform.localScale.y  *= unitScale.y;
      obj.transform.localScale.z  *= unitScale.z;
    }

    //print("InitGrid : Bounding Box : " + " RendBB: "+ renBBox.size + GRID_TYPE_mt)                ;
    //print("InitGrid : Bounding Box : " + " unitScale : " + unitScale + " gridSpce : " + gridSpce) ;
  }

  function InitGrid(){  //update grid cell size and prefabs bounding based scale

    if(GRID_TYPE_mt==GFRectGrid){ //update scale of gridSpace
      var GRID_mt_Rect : GFRectGrid = GRID_mt as GFRectGrid ;
      gridSpce = GRID_mt_Rect.spacing                       ;
    }

  }

  function ClearLevel(){
    for(var go:GameObject in blocksGO){
      if(go){       //look to make sure not hole, or already destroyed during gameplay
        Destroy(go);
      }
    }
    blocksGO.Clear(); //clear empty list
    blocksID.Clear(); //clear empty list
  }

  function getAABB(obj:GameObject):GameObject{
    var retAABB  : GameObject = null                     ;
    var numChild :int         = obj.transform.childCount ;

    for(var i:int=0; i<numChild; i++){
      var child:Transform = obj.transform.GetChild(i);
      //print("Child : " + child);
      if(child.CompareTag("AABB")){
        retAABB = child.gameObject         ;
        //child.gameObject.SetActive (false) ;
        retAABB.SetActive (false) ;
        return retAABB                     ;
      }
    }
    return retAABB;
  }

}
