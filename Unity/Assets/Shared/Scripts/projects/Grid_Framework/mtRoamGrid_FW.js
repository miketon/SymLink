#pragma strict

class mtRoamGrid_FW extends __gameObjectMT_Grid{

  private var roamTime : float = 0.5 ;

  function Awake(){
    super.Awake();
    print(this +" Size "+GRID_mt.size);
    if(GRID_mt){
      GRID_mt.AlignTransform(xform) ; //snap to grid center
      RoamGrid()                 ;
    }
  }

  function RoamGrid(){
    //iTween.MoveTo(gameObject, iTween.Hash("position", FindNearestFace(), "time", roamTime, "oncomplete", "RoamGrid")) ;
  }

  function FindNearestFace():Vector3{

    var grdPos : Vector3 = GRID_mt.WorldToGrid(xform.position) ;
    var movDir : int     = Random.Range(0,4)                ; //randomly move in north,south,east,west direction

    //determine move direction
    if(movDir==1){
      grdPos = grdPos + Vector3(1,0,0);
    }
    else if(movDir==2){
      grdPos = grdPos + Vector3(-1,0,0);
    }
    else if(movDir==3){
      grdPos = grdPos + Vector3(0,1,0);
    }
    else if(movDir==4){
      grdPos = grdPos + Vector3(0,-1,0);
    }

    //check limit
    for(var i=0; i<2; i++){
      if(Mathf.Abs(grdPos[i])>GRID_mt.size[i]){
        grdPos[i] -= Mathf.Sign(grdPos[i]) * 2.0; 
      }
    }
    print(this +" Position "+grdPos);
    return GRID_mt.GridToWorld(grdPos);
  }

}
