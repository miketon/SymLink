//#pragma strict
@script RequireComponent(mt_AudioOnWake)
@script RequireComponent(AudioSource)

public class __gameObjectMT extends MonoBehaviour{

  protected var queryUserInput : boolean = true ;
  protected var timeToggle     : boolean = true ;
  protected var xform          : Transform      ;
  
  
  //audio settings
  protected var randomPitch : boolean = true  ;
  protected var randomRange : float   = 0.25  ;

  function Awake(){
    xform = transform; //caching component lookup: transform == GetComponent(transform)
  }

  function Start(){}
  function Update(){}
  function LateUpdate(){}
  
  function playAudio_mt(soundTrack:AudioClip){
    if(soundTrack!=null){
  	  if(!audio.isPlaying){
        if(randomPitch){
          audio.pitch  = Random.Range(1.0-randomRange, 1.0+randomRange) ;
    	}
    	audio.clip = soundTrack ;
    	audio.Play()            ;
  	  }
    }
  }

  //Enable or disable user controls
  function SetEnableUserInput(enableInput:boolean){
    queryUserInput=enableInput;
  }
 
/* Doesn't work when building for android
  function pathToComponent(IN_component){    
    var return_io = xform.GetComponent(IN_component) ;  //look in current hiearchy first
    if(!return_io){
      return_io = xform.root.GetComponentInChildren(IN_component) ; //look in root last
    }
    
    // print debug
    if(return_io){
      //print(this+" : Found "+IN_component+" on xform and are attaching    : " + xform) ;
    }
    else{
      //print("ERROR: "+this+" : Looking "+IN_component+" on xform and also not found : ERROR IN STRUCTURE !" + xform);
    }
    return return_io;
  }
*/
//  function DefaultAddComponent(targetGObj:GameObject, checkThisComponent){ //Need strict typing for Android
  function DefaultAddComponent(targetGObj:GameObject, checkThisComponent:String){
    var doesComponentExist = targetGObj.GetComponent(checkThisComponent) ;
    var returnComponent    = null                                        ;

    if(doesComponentExist==null){
      returnComponent = targetGObj.AddComponent(checkThisComponent);
    }
    print("DefaultAddComponent: " + targetGObj + checkThisComponent + returnComponent);
    return returnComponent;
  }
  
  private  var stepDrtn  : Vector3 = Vector3.zero;

  function mt_TimeStep(stepIncm:float, indexDur:int):boolean {
    if(Time.time > stepDrtn[indexDur]){
      stepDrtn[indexDur]  = Time.time + stepIncm ;
      return true                      ;    
    }
    else{
      return false                     ;
    }
  }

  function delayDestroy(delaySeconds){
    yield WaitForSeconds(delaySeconds) ;
    Destroy (this.gameObject)          ;
  }

  function timeBufferDelay(delaySeconds){
    timeToggle = false                 ;
    yield WaitForSeconds(delaySeconds) ;
    timeToggle = true                  ;
  }
  
  function LoadGameObject_mt(objName){                                 //HACK: MUST: ObjName == TagName
    // var newGameObject:GameObject = GameObject.FindWithTag(objName); //Check to see if in scene
    var newGameObject:GameObject = GameObject.Find(objName);           //Check to see if in scene
    if(!newGameObject){                                                //Else check in Resources folder
      newGameObject= Instantiate(Resources.Load(objName));              
    }
    return newGameObject;
  }
  
  function labelAtXform(message:String, xform:Transform){
    var cameraRelative = Camera.main.transform.InverseTransformPoint(xform.position);
    if (cameraRelative.z >0){
      var offsetX:float = 1.0;
      var offsetY:float = 1.0;
      var rectWdt:float = 200;
      var rectHgt:float = 200;

      var screenHtOffSet : float   = Screen.height;
      var screenPos      : Vector3 = Vector3.zero ;

      screenPos = Camera.main.WorldToScreenPoint(xform.position);
      //var printme:String = ("posY: " + xform.position.y + " screenY: " + screenPos.y + " screenHeight: "+ Screen.height);
      var posX =  screenPos.x - (rectWdt * 0.5) + offsetX   ;
      var posY = -screenPos.y + screenHtOffSet +  offsetY   ;
      GUI.Label(Rect(posX, posY, rectWdt, rectHgt), message);
    }
  }
  
  function debugPrintObj(obj:GameObject){
    Debug.Log("Name : " + obj)                        ;
    Debug.Log("Position : " + obj.transform.position) ;
  }

/*
function OnGUI(){
doOnGUI();
//if(mton_GLOBAL.debugGameO){	  //true = print all __gameObjectMT
//  labelAtXform("Debug: "+this, xform);
//}
}

function doOnGUI(){}

function doStart(){
  mton_GLOBAL.xformCollection.Push(xform);
}

*/

}
