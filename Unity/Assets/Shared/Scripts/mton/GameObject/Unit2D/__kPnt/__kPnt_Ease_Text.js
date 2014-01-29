#pragma strict

public class __kPnt_Ease_Text extends __kPnt_Ease{
  
  private var kDestroy : float = 0.05;

  function doUpdate(){
    super.doUpdate(); 
    if(bStill){
      delayDestroy(kDestroy);  
    }
  }
  
}