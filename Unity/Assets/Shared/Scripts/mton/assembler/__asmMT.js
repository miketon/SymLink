#pragma strict

class __asmMT extends __gameObjectMT{ //map state to animation playback

  function Awake(){
    super.Awake();
  }
  
  function Start(){
    super.Start();
    xform.GetComponent(Transform);
  }
 
  #if !UNITY_ANDROID
// || UNITY_IPHONE || UNITY_WP8 || UNITY_BLACKBERRY 
  function pathToComponent(IN_component){    
    var return_io;// = xform.GetComponent(IN_component) ;  //look in current hiearchy first //WTH - ambigous reference??
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
  #endif
}