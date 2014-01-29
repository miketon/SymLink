#pragma strict

class mtGrid_LightsUnit extends __gameObjectMT_Grid{

  private var cRend : Renderer;
  public  var material_ON  : Material;
  public  var material_OFF : Material;
  
  public var isOn : boolean = false;
  
  function Awake(){
    super.Awake();
    cRend = renderer;
    SwitchLight();
  }
  
  function OnEnable(){
    //isOn = !isOn;
    print(this + " enabled ");
    // Subscribing of the method to be called
    mtGrid_LightsManager.switchEvents.Add(OnHitSwitch);
    mtGrid_LightsManager.OnHitSwitch(xform.position);
  }
  
  function OnDisable(){
    print(this + " disabled ");
    // Unsubscribing of the method to be called
    mtGrid_LightsManager.switchEvents.Remove(OnHitSwitch);
  }
  
  function OnHitSwitch(switchPos:Vector3){
    print("OnHitSwitch: hahaha Mike " + switchPos + this + xform.position);
    var myPos:Vector3 = GRID_mt.WorldToGrid(xform.position);
    var isAdjacent : boolean = (Mathf.Abs(myPos.x - switchPos.x) <= 1.1) && (Mathf.Abs(myPos.y - switchPos.y) <= 1.1);
    var isDiagonal : boolean = (0.1f <= (Mathf.Abs(myPos.x - switchPos.x))) && (0.1f <= (Mathf.Abs(myPos.y - switchPos.y))) && isAdjacent;
    if(isAdjacent && !isDiagonal){
      isOn = !isOn;
    }
    SwitchLight();
  }
  
  function SwitchLight(){
    if(isOn){
      cRend.material = material_ON;
    }
    else{
      cRend.material = material_OFF;
    }
  }
  
  function OnMouseUpAsButton(){
    mtGrid_LightsManager.SendSignal(xform.position);
    print ("OnMouseUpAsButton: "+this);
  }
}