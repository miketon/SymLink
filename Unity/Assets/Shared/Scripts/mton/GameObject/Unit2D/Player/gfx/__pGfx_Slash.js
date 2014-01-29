#pragma strict

public class __pGfx_Slash extends __gameObjectMT {

  public var soundSlash : AudioClip ;
  
  public var xform_UI : Transform ;
  public var x_Freq :float = 1.0;
  public var y_Freq :float = 1.0;
  public var x_Ampd :float = 3.0;
  public var y_Ampd :float = 0.5;
  
  private var slashObj : mt_Attack_Slash;
  
  private var yPos    : float;
  private var xPos    : float;
  
  private var pCenter : Vector2 = Vector2(0.0, 0.0);
  private var kAngle  : float = 0.0 ; //angle update
  private var kSpeed  : float = 0.2 ; //update delta; speed of slash
  
  private var mMod   : int = 0;
  private var mCnt   : int = 0;
  private var mBool  : boolean = false; //if true slash
  public  var mAngle : float = 1.0;
  
  private var x_Ampdo :float = 3.0;
  private var y_Ampdo :float = 0.5;
  
function Start () {
  super.Start();
  xform_UI=Instantiate(xform_UI)        ;
  xform_UI.parent        = xform        ; //so slash starts from object
  xform_UI.localPosition = Vector3.zero ;
  
  slashObj              = xform_UI.GetComponent(mt_Attack_Slash);
  
  pCenter.x = xform_UI.localPosition.x;
  pCenter.y = xform_UI.localPosition.y; 
  
  mAngle  = 3.0 * x_Freq ;
  x_Ampdo = x_Ampd       ; //capture original amp value  
  y_Ampdo = y_Ampd       ;
  
  audio.rolloffMode = AudioRolloffMode.Linear ;
  randomPitch       = true                    ;  
}

function Update () {
  super.Update();
    
  if(Input.GetKeyDown(KeyCode.J)){ //change type of slash
    mCnt   = mCnt + 1;
    mMod   = mCnt%3  ;
    mBool  = true    ;
    kAngle = 0.0     ;
  }
  
  else if(Input.GetButtonDown("Fire1")){
    mBool  = true ;
    kAngle = 0.0  ;
    
    slashObj.set_Sheath(false); //unsheath sword
    
    //model slash
    y_Ampd = y_Ampdo*Random.Range(0.15, 1.75) ;
    x_Ampd = x_Ampdo*Random.Range(0.85, 1.2)  ;
    kSpeed = Random.Range(0.10, 0.19)         ;
    playAudio_mt(soundSlash)                  ;
  }
  
  if(mBool == true){ //Check for type of slash
    if(mMod == 0){
      xformBuzz() ;
    }
    else if(mMod == 1){
      xformSwing();
    }
    else{
      xformSlash();
    }
    
    kAngle += kSpeed ; //Animate slash
    
    if(kAngle>mAngle){ //Check if done with slash
      mBool=false;
      slashObj.set_Sheath(true); //sheathing sword
    }
  }
  
}

function xformSlash(){
  yPos = Mathf.Sin(kAngle * y_Freq) ;
  xform_UI.localPosition.y = xform.localPosition.y + yPos * y_Ampd + pCenter.y;
  
  xPos = Mathf.Cos(kAngle * y_Freq) * 0.5 + 0.5;
  xform_UI.localPosition.x = xform.localPosition.x + xPos * x_Ampd + pCenter.x;
  
  xform_UI.localScale = Vector3(xPos, xPos, xPos);
}

function xformSwing(){
  yPos = Mathf.Sin(kAngle * y_Freq) ;
  xform_UI.localPosition.y = xform.localPosition.y + yPos * y_Ampd + pCenter.y;
  
  xPos = Mathf.Cos(kAngle * y_Freq) ;
  xform_UI.localPosition.x = xform.localPosition.x + xPos * x_Ampd + pCenter.x;
  
  xform_UI.localScale = Vector3(xPos, xPos, xPos);
}

function xformBuzz(){
  yPos = Mathf.Sin(kAngle * y_Freq + kAngle);
  xform_UI.localPosition.y = xform.localPosition.y + yPos * y_Ampd; // + pCenter.y;
  
  xPos = Mathf.Sin(kAngle * y_Freq);
  xform_UI.localPosition.x = xform.localPosition.x + xPos * x_Ampd - 0.5; // + pCenter.x;
    
  xform_UI.localScale = Vector3(xPos, xPos, xPos);
}

}