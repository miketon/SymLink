#pragma strict

class __gameObjectMT_Grid_EX extends __gameObjectMT_Grid{ //adding neighbor functions...adjacency

  //cell index and GUID variable

  protected var blocksGUID : int[]        ; //List of blocksGO instance ID
  protected var blocksGOID : GameObject[] ;

  private var wallTags : Array      ;
  private var curCell  : GameObject ;

  protected var gridWidth  : int = 0;
  protected var gridHeight : int = 0;

  function getAdjacentCells(index_IN:int):Array{
    curCell=blocksGOID[index_IN] ;
    var returnArray : Array      ;
    if(GRID_TYPE_mt == GFRectGrid){
      returnArray = adjacentToIndexRect(index_IN)            ;
      wallTags    = new Array("North","East","South","West") ;
    }
    else if(GRID_TYPE_mt == GFHexGrid){
      returnArray = adjacentToIndexHex(index_IN)                                     ;
      wallTags    = new Array("North","East","South","West","SouthEast","SouthWest") ;
    }

    return returnArray;
  }

  function setAdjacentWalls(dir_Array_IN:Array){
    for(var i:int=0; i<wallTags.length; i++){
      if(dir_Array_IN[i]){
        var allChild:Component[] = curCell.GetComponentsInChildren(Transform);
        for(child in allChild){
          if(child.CompareTag(wallTags[i] as String)){
            child.gameObject.SetActive(false);
          }
        }
      }
    }  
  }

  /********ADJACENCY CHECK********/

  // .N.
  // W*E
  // .S.

  // .S.W*E.N.

  function adjacentToIndexHex(index_IN:int):Array{

    var goNESWSeSw : Array = new Array(null, null, null, null, null, null); //HACK ??? Must use null to fill space of expected array ???

    var rowNum:int = Mathf.Floor(index_IN/gridWidth) ;
    var rowMin:int = gridWidth * (rowNum)            ;
    var rowMax:int = gridWidth * (rowNum+1)          ;
    var grdMax:int = gridWidth * gridHeight          ;
    var oddCol:int = index_IN%2                      ; //is odd? (column)

    var index_North : int = index_IN + gridWidth ; //check against max grid index
    var index_East  : int = (index_IN + 1)       ; 
    var index_South : int = index_IN - gridWidth ; //check against min grid index
    var index_West  : int = (index_IN -1)        ;
    
    var index_SouthEast : int = (index_IN + 1) - gridWidth;
    var index_SouthWest : int = (index_IN - 1) - gridWidth;
 
    if(index_North < grdMax){ //check against max grid size; top of grid
      goNESWSeSw[0] = blocksGOID[index_North];
    }
    if(index_East < rowMax){ // must be greater than zero; zero = grid border/modulus
      //print(curCell+"SouthEast Index : "+index_SouthEast);//+blocksGOID[index_SouthEast]); //+blocksGOID[index_SouthEast].transform.GetInstanceID());
      if(oddCol){ //if odd
        goNESWSeSw[4] = blocksGOID[index_East]; //SouthEast
        index_SouthEast = (index_IN + 1) + gridWidth; 
        if(index_SouthEast<=grdMax){
          goNESWSeSw[1] = blocksGOID[index_SouthEast];
        }
      }
      else{
        goNESWSeSw[1] = blocksGOID[index_East]; //East
        if(index_SouthEast>=0){
          goNESWSeSw[4] = blocksGOID[index_SouthEast];
        }
      }
    }
    if(index_South >= 0){ // can also equal zero; beginning of grid
      goNESWSeSw[2] = blocksGOID[index_South];
    } 
    if(index_West >= rowMin){ 
      if(oddCol){ //if odd
        goNESWSeSw[5] = blocksGOID[index_West]; //SouthWest
        index_SouthWest = (index_IN - 1) + gridWidth; 
        if(index_SouthWest<grdMax){ //HACK : Why less than vs. <= ???
          goNESWSeSw[3] = blocksGOID[index_SouthWest];
        }
      }
      else{
        goNESWSeSw[3] = blocksGOID[index_West]; //West
        if(index_SouthWest>=0){//<=grdMax){
          goNESWSeSw[5] = blocksGOID[index_SouthWest];
        }
      }
    }
    
    return goNESWSeSw; 
  } 

  function adjacentToIndexRect(index_IN:int):Array{

    var goNESW   : Array = new Array(null, null, null, null); //HACK ??? Must use null to fill space of expected array ???

    var rowNum:int = Mathf.Floor(index_IN/gridWidth) ;
    var rowMin:int = gridWidth * (rowNum)            ;
    var rowMax:int = gridWidth * (rowNum+1)          ;

    //print("ROW MATH : index " +index_IN+ " num "+rowNum+" min "+rowMin+" max " +rowMax);

    var index_North : int = index_IN + gridWidth ; //check against max grid index
    var index_East  : int = (index_IN + 1)       ; 
    var index_South : int = index_IN - gridWidth ; //check against min grid index
    var index_West  : int = (index_IN -1)        ; 

    if(index_North < gridWidth*gridHeight){ //check against max grid size; top of grid
      goNESW[0] = blocksGOID[index_North];
    }
    if(index_East < rowMax){ // must be greater than zero; zero = grid border/modulus
      goNESW[1] = blocksGOID[index_East];
    }
    if(index_South >= 0){ // can also equal zero; beginning of grid
      goNESW[2] = blocksGOID[index_South];
    } 
    if(index_West >= rowMin){ 
      goNESW[3] = blocksGOID[index_West];
    } 

    return goNESW; 
  }

  /********ADJACENCY CHECK********/

/*
DEBUG CODE : OKAY TO DELETE
*/
  function doUpdateDebugClass(){
    if(Input.GetKeyUp(KeyCode.M)){
      var indexMT  : int   = addIndexDelete()          ;
      var adjCells : Array = getAdjacentCells(indexMT) ;
      for(var i:int = 0; i<wallTags.length; i++){
        print(curCell.transform.GetInstanceID() + " ADJACENCY : " + wallTags[i] +" : "+adjCells[i]);
      }
    }
  }

  private var curIndexDelete :int = 0;

  function addIndexDelete():int{
    curIndexDelete += 1                       ;
    print("Add to Index : " + curIndexDelete) ;
    return curIndexDelete                     ;
  }

/*
DEBUG CODE : OKAY TO DELETE
*/

}
