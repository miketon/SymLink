#pragma strict

class mtGrid_SnapUnits_FW extends __gameObjectMT_Grid{
  
  function Awake () {
    super.Awake();
    if(GRID_mt){
      GRID_mt.AlignTransform(xform)          ;
      xform.position = calculateOffSetZ() ;
    }
  }

  function OnMouseDrag(){
    renderer.material.color -= Color.white * Time.deltaTime;
    
    var cursorScreenPoint:Vector3 = new Vector3(Input.mousePosition.x, Input.mousePosition.y, 0.0); //get mouse position in screen space
    var cursorWorldPoint :Vector3 = Camera.main.ScreenToWorldPoint(cursorScreenPoint); //xforming to world space
    xform.position.x = cursorWorldPoint.x;
    xform.position.y = cursorWorldPoint.y;
    
    print("mouse : "+cursorScreenPoint +" world : "+ cursorWorldPoint); 
    
    //GRID_mt.AlignTransform(xform); //set to grid space
    //xform.position = calculateOffSetZ(); 
  }
  
  function calculateOffSetZ():Vector3{
    var gridPosition:Vector3 = GRID_mt.WorldToGrid(xform.position);
    gridPosition.z = -0.5*xform.lossyScale.z; //lossyScale : The global scale of the object (Read Only). Will try to handle skew???
    return GRID_mt.GridToWorld(gridPosition);
  }

}