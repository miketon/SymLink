#pragma strict

class __gameObjectMT_Grid_BG extends __gameObjectMT_Grid_EX{

  //cell bg elements var
  protected var bgFloor      : GameObject   ;
  protected var bgWalls      : GameObject[] ;
  protected var bgDoors      : GameObject[] ;
  protected var bgLights     : Light[]      ;

  protected var colorLights  : Color[]      ;
  protected var colorInt     : int = 0      ;

  protected var gui_DebugMessage : String = "Mton Debug Message Default." ;
  protected var gui_DebugMessageLineCount : int = 1                       ;

  function doSetCell(){
    super.Awake()                 ;
    colorLights    = new Color[3] ;
    colorLights[0] = Color.red    ;
    colorLights[1] = Color.blue   ;
    colorLights[2] = Color.green  ;

    cellGetLights() ;
  }

  function cellGetLights(){
  
    if(cellRoot){
      var lights_Return:Light[]=new Light[1];
      for (var child : Transform in cellRoot) {
        //print(this + child.name)                      ;
        var lightComp:Light = null                      ;
        lightComp           = child.GetComponent(Light) ;
        if(lightComp){
          lights_Return[0] = lightComp;
        }
      }
      if(lights_Return[0]){
        //print("cellGetLights Hit : " + lights_Return[0]) ;
        bgLights = lights_Return                           ;
      } 
      else{
        Debug.LogWarning("cellGetLights Miss : " + lights_Return[0]);
      }
    }
    else{
      Debug.LogWarning("cellGetLights Miss CellRoot doesn't exist: " + cellRoot);
    }
  }

  function CellSetLights(){
    mtDebugMessageAppend("CellSetLights Called"); 
    if(bgLights){
      for(var light:Light in bgLights){
        doCellSetLights(light);
      }
    }
  }

  function doCellSetLights(IN_light:Light){
    if(IN_light){
      //print("doCellSetLights: "+IN_light.name + " Instance ID : "+IN_light.GetInstanceID()) ;
      IN_light.color = colorLights[colorInt]                                                ;
      colorInt       = (colorInt+1)%colorLights.Length                                      ;
    }
  }
/*
  function OnGUI () {
    GUI.TextArea (new Rect (10, 10, 400, 20 * gui_DebugMessageLineCount), gui_DebugMessage);
  }
*/
  function mtDebugMessageAppend(IN_message:String){
    gui_DebugMessage += "\n" + IN_message ;
    gui_DebugMessageLineCount += 1        ;
  }

  function mtDebugMessageClear(){
    gui_DebugMessage = "None mt.";
    gui_DebugMessageLineCount = 1; 
  }

}
