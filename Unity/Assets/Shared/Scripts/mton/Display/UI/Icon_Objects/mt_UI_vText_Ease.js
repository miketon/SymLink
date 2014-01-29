#pragma strict

class mt_UI_vText_Ease extends mt_UI_vText{
  
  function Set_txtPrefab(){
    txtPrefab = GameObject.Instantiate(Resources.Load("UI/kPnt_Ease_Text", tk2dTextMesh)) ;
  }

}