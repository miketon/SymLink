#pragma strict

class __gameObjectMT_Grid extends MonoBehaviour{

  static protected var GRID_mt : GFGrid ;

  protected var xform        : Transform     ;
  //grid var
  protected var GRID_TYPE_mt : System.Type                    ;
  protected var gOffSet      : float   = 0.0                  ; //position offset based on gridtype
  protected var gAngle       : Vector3 = Vector3(0.0,0.0,0.0) ; //rotation offset based on gridtype
  protected var gPlane       : GFGrid.GridPlane               ;
  protected var gCellSize    : Vector3 = Vector3(0.0,0.0,0.0) ;
  //cell var
  protected var cellRng      : Vector3 = Vector3(0.0,0.0,0.0) ;
  protected var cellPos      : Vector3 = Vector3(0.0,0.0,0.0) ;
  protected var cellCen      : Vector3 = Vector3(0.0,0.0,0.0) ; //cell center
  protected var cellRoot     : Transform                      ; //stores the root of cell/prefab

  var debugCollisionSphere : GameObject;

  function Awake(){
    xform = transform;
    if(!GRID_mt){
      var gridObj:GameObject = GameObject.FindWithTag("Grid"); //Check to see if in scene
      if(gridObj){
        var gridComp:GFGrid = gridObj.GetComponent.<GFGrid>(); //GetComponent(GFGrid);
        if(gridComp){
          GRID_mt = gridComp             ;
          GRID_TYPE_mt = typeof(GRID_mt) ;
          if(GRID_TYPE_mt == GFRectGrid){
            gOffSet = 0.5;
          }
          else if(GRID_TYPE_mt == GFHexGrid){
            var grid:GFHexGrid = gridObj.GetComponent(GFHexGrid)                             ; //GetComponent.<GFHexGrid>() ; // HACK : Interchangeable??
            gPlane = grid.gridPlane                                                          ;
            gAngle = GetAngleFromPlane(gPlane)                                               ;
          }
          gCellSize = GetCellSize() ;
          cellRng   = GetCellRange();
          //print("GRID : SUCCESS: __gameObjectMT_Grid -> Found Grid ! " + this + " Cell Size : " + gCellSize + " Cell Range : " + cellRng);
        }
        else{
          Debug.LogError("GRID : WARNING: __gameObjectMT_Grid -> Can't find object with GFGrid Script " + this);
        }
      }
      else{
        Debug.LogError("GRID : WARNING: __gameObjectMT_Grid -> Can't find object with Grid Tag " + this);
      }
    }
  }

  function GetAngleFromPlane(gPlane_IN:GFGrid.GridPlane):Vector3{
    var gAngle:Vector3;
    if(gPlane_IN == GFGrid.GridPlane.XZ){
      gAngle = Vector3(00,180.0,0.0); //rotating for top down
    }
    else if(gPlane_IN == GFGrid.GridPlane.XY){
      gAngle = Vector3(90,180.0,0.0); //rotating for side
    }
    //Debug.Log("rotating to 90"); 
    return gAngle;
  }

  function SetGridRange(gridBegin:Vector3, gridEnd:Vector3){
    GRID_mt.useCustomRenderRange = true      ;
    GRID_mt.renderFrom           = gridBegin ;
    GRID_mt.renderTo             = gridEnd   ;
  }

  function SetGridCellSize(cellSize:Vector3){
    if(GRID_TYPE_mt==GFRectGrid){ //update scale of gridSpace
      var GRID_mt_Rect : GFRectGrid = GRID_mt as GFRectGrid ;
      GRID_mt_Rect.spacing = cellSize                       ; 
    }
  }

  function GetGridCell(cellIndex:Vector3):GameObject{
    var go_Return : GameObject                                   ;
    gCellSize = GetCellSize()                                    ; //HACK: Must GetCellSize before IndexToPosition to get correct position w/offset
    cellRng   = GetCellRange()                                   ;
    cellPos   = IndexToPosition(cellIndex)                       ;
    //cellPos.y = -cellPos.y                                     ; //HACK : comment if map is top left
    print("Get GridCell : "+cellPos+gCellSize+cellRng+cellIndex) ;
    go_Return = doGetCell()                                      ;
    return go_Return                                             ;
  }

  function SetGridCell(){
    if(cellRoot!=null){
      doSetCell();
    }
    else{
      Debug.LogWarning("SetGridCell Miss " + cellRoot);
    }
  }

  function doSetCell(){
    print("Setting doSetCell : " + cellRoot);
  }

  function IndexToPosition(gridIndex:Vector3):Vector3{
    var pos_Return:Vector3                             ;
    pos_Return.x = gridIndex.x * gCellSize.x           ;
    pos_Return.y = gridIndex.y * gCellSize.y           ;
    pos_Return.z = gridIndex.z * gCellSize.z           ;
    cellCen.z = 0.0                                    ; //HACK : Else center shifted back
    pos_Return = pos_Return + xform.position + cellCen ; //offset to grid origin
    return pos_Return                                  ;
  }

  function doGetCell():GameObject{ //Must have box collider to be eligible
    debugCollisionSphere.transform.position   = cellPos                             ;
    debugCollisionSphere.transform.localScale = cellCen                             ;
    var go_Return    : GameObject                                                   ;
    var hit          : RaycastHit                                                   ;
    var hitColliders : Collider[] = Physics.OverlapSphere(cellPos, cellCen.x * 0.9) ; //HACK : What should radius be?
    if (hitColliders.Length) {
      cellRoot = hitColliders[0].transform.root                                                                      ;
      print("doGetCell Hit pos: " + (cellPos) +" cen :"+cellCen + " coll: "+hitColliders[0] + " root : " + cellRoot) ;
/*
if (Physics.SphereCast (p1, charCtrl.height / 2, transform.forward, hit, 10)) { //origin, radius, 
var distanceToObstacle = hit.distance;
}
*/
      go_Return = hitColliders[0].transform.root.gameObject;
    }
    else{
      Debug.LogWarning("doGetCell Miss pos: " + (cellPos) +" cen :"+cellCen) ;
      cellRoot  = null                                                       ;
      go_Return = null                                                       ;
    }

    return go_Return;
  }

  function GetCellSize():Vector3{
    var size_Return : Vector3;
    if(GRID_TYPE_mt==GFRectGrid){ 
      var GRID_mt_Rect : GFRectGrid = GRID_mt as GFRectGrid ;
      size_Return = GRID_mt_Rect.spacing                    ;
      cellCen     =  size_Return * 0.5                      ;
    }
    return size_Return;
  }

  function GetCellRange():Vector3{
    var range_Return : Vector3;
    if(GRID_mt.useCustomRenderRange ){
      range_Return = (GRID_mt.renderFrom - GRID_mt.renderTo);
    }
    else{
      range_Return = GRID_mt.size;
    }
    return range_Return;
  }

  function doUpdateDebugClass(){ /*PUT DEBUG UPDATE HERE*/ }
}
