#pragma strict

public class mt_Attack_Slash extends mt_Attack{

  public var fx_Impact : GameObject ; //spawn on Collision if valid

  private var cRadius : float = 1.0 ; //physics overlap sphere -> check for objects in vicinity
  
  private var sheathD         : boolean = false ;
  private var slshLayerMaskID : int             ;
  private var slshTimeDur     : float = 0.1     ;

  private var tRender : TrailRenderer ;
  private var tRnTime : float         ;
  
  private var slshMat : Material      ;
  protected var colorInt    : Color                ; //original Color
  protected var colorHit    : Color = Color.yellow ; //color on Hit
  protected var colorFde    : Color = Color.cyan   ; //color on Hit fade

  function Start () {
    /*Define all layers eligible to be slashed here*/
    var cLayerSlsObject : int = LayerMask.NameToLayer("forceObject") ;
    var cLayerSlsEnemy  : int = LayerMask.NameToLayer("Enemy")       ;
    slshLayerMaskID = ((1<<cLayerSlsObject) | (1<<cLayerSlsEnemy)) ; // | = add to layer ~ = invert selection
    
    tRender = GetComponent(TrailRenderer) ;
    tRnTime = tRender.time                ; //capture Trail time to fade
    set_Sheath(true)                      ; // start with sword sheathed
    
    //get bounding size for radius
    var mesh   : Mesh   = GetComponent(MeshFilter).mesh ;
    var bounds : Bounds = mesh.bounds                   ;
    cRadius = bounds.extents.magnitude * 0.5            ;
    
    slshMat  = tRender.material ;
    colorInt = tRender.material.color;
  }

  function Update () {
    if(!sheathD){
      var colliders   : Collider[]  = Physics.OverlapSphere (xform.position, cRadius, slshLayerMaskID) ;
      for(each in colliders){
        slshColor();
        var eachHit : mt_OnHit2D = each.GetComponent(mt_OnHit2D);
        if(eachHit){
          if(mt_TimeStep(slshTimeDur, 0)){
            eachHit.applyHit(this);  //pass mt_Attack so that target knows how much health to subtract
            if(fx_Impact!=null){ // if spawnObject valid/notempty, spawn the object
              Instantiate(fx_Impact, xform.position, xform.rotation) ;
            }
          }
        }
      }
    }
  }
  
  function slshColor(){
    slshMat.color = colorHit               ; // flash color
    yield WaitForSeconds(slshTimeDur*0.20) ;
    slshMat.color = colorFde               ; // fade hit
    yield WaitForSeconds(slshTimeDur     ) ;
    slshMat.color = colorInt               ; // return to original
  }
  
  function set_Sheath(bool_IN:boolean){
    if(bool_IN){  //putting sword away
      sheathD = true;
      tRender.time = tRnTime * 0.01; //effectively disable trail
    }
    else{         //slashing with sword
      sheathD = false;
      tRender.time = tRnTime;
    }
    //print("Sheathing : " + sheathD);
  }

}