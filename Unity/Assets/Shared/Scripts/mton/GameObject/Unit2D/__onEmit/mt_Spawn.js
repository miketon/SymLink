#pragma strict
class mt_Spawn extends __gameObjectMT{

  public var sp_Xform  : Transform   ;
  public var spCount   : int   = 1   ;
  public var spRadius  : float = 2.0 ;

  private var sp_Xforms : Transform[];
  
  function Start(){
    super.Start();
    doCircle();
  }

  function doCircle(){

    sp_Xforms = new Transform[spCount];
    for(var i=0; i<spCount; i++){

      var angleIcon = Mathf.PI*i*2/spCount                  ; //1/(1+i)   ; //offset radial spawn
      //sp_Xforms[i]    = Instantiate(Resources.Load("icon_obj")) ;
      sp_Xforms[i]      = Instantiate(sp_Xform)             ; //user load

      var offSet:Vector3    = Vector3.zero                  ;

      offSet.x = Mathf.Cos(angleIcon) * spRadius;
      offSet.y = Mathf.Sin(angleIcon) * spRadius;
      offSet.z = 0.0;
      
      sp_Xforms[i].position = xform.position + offSet;
    }
  }

}