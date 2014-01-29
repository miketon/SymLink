#pragma strict
//@script RequireComponent(tk2dTextMesh) ;

class mt_UI_vText extends mt_UI_Object{

  private var textMesh : tk2dTextMesh ;
  private var tXform   : Transform    ; //target transform
  private var txtScale : float = 0.2  ;
  
  private var txtOffSet : Vector3 = Vector3(0.0, 0.0, 0.0) ;
  
  protected var txtPrefab : tk2dTextMesh                   ;
  
  function Init(){
    super.Init()                                              ;
    Set_txtPrefab()                                           ;
    textMesh           = txtPrefab.GetComponent(tk2dTextMesh) ;
    textMesh.text      = ("mt_UI_vText : " + this)            ;
    textMesh.Commit()                                         ;
    
    xform    = txtPrefab.transform ;
    txtScale = textMesh.scale.x    ;
  }
  
  function Draw(){
    super.Draw()      ;
    if(tXform!=null){  //null==world ; if target is specified move it to there
      xform.position = tXform.position + txtOffSet;
    }
    textMesh.Commit() ;
  }
  
  function Set_txtPrefab(){
    txtPrefab = GameObject.Instantiate(Resources.Load("UI/Icon_Text", tk2dTextMesh)) ; //Resources.Load (path : String, systemTypeInstance : Type) : Object
  }
  
  function GetTextMesh(){
    return textMesh ;
  }
  
  function SetTextMesh(IN_message:String){
    textMesh.text = IN_message ;
  }
  
  function hFlip(IN_hFlip:float){
    textMesh.scale.x = txtScale * IN_hFlip ;
  }
  
  function GetTarget(){
    return tXform      ;
  }
  
  function SetTarget(IN_target:Transform){
    tXform = IN_target ;
  }
  
  function SetOffSet(IN_OffSet:Vector3){
    txtOffSet = IN_OffSet ;
  }
  
}