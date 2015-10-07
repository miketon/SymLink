using UnityEngine        ;
using System.Collections ;
using UnityEngine.UI     ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

public class cEmit_Menu : MonoBehaviour, IEmit<Image>{ 

  public Image menu_BG_Image;
  public Text  menu_MSG_Text;

  public virtual void OnEnable(){
    cLevel.OnInit_Delegate += Init ;
	this.Play();
  }

  public virtual void OnDisable(){
    cLevel.OnInit_Delegate -= Init ;
	this.Stop();
  }

  public virtual void setMenu(bool IN_BOOL, string IN_STRING = ""){
    if(IN_BOOL){ // if pausing freeze time
	  Time.timeScale = 0.0f;
	  this.Play();
	  if(this.menu_MSG_Text){
		this.menu_MSG_Text.enabled = true;
	    this.menu_MSG_Text.text = IN_STRING;
	  }
	}
	else{ // else run normally
	  Time.timeScale = 1.0f;
	  this.Stop();
	  if(this.menu_MSG_Text){
		this.menu_MSG_Text.enabled = false;
	  }
	}
  }

  private bool bMenu = false;
  public virtual void Update(){
    if(Input.GetKeyDown(KeyCode.Y)){
	  this.bMenu = !this.bMenu;
	  this.setMenu(this.bMenu, "PAUSED");
	}
  }

#region iEmit implementation

  public void Init(){  
	if(__gCONSTANT._LEVEL.getSoundManager() != null){
	  Debug.Log ("_LEVEL Exists : Init " + this);
	  this.setMenu(false);
	}
	else{
	  Debug.Log ("_LEVEL Does not exist : FAILED TO INIT " + this);
	}
  }

  public void Play(){
	if(this.menu_BG_Image!=null){
	  this.menu_BG_Image.enabled = true;
      this.tt("Play").ttLoop(1.0f, delegate(ttHandler loop){
	    Debug.Log (" MENU FADE IN : " + this);
	    this.menu_BG_Image.color = Color.Lerp (Color.clear, this.menu_BG_Image.color, loop.deltaTime);
	  });
	}
  }

  public void Stop(){
   if(this.menu_BG_Image!=null){
     this.tt("Stop").ttLoop(1.0f, delegate(ttHandler loop){
	   Debug.Log (" MENU STOP : " + this);
	   this.menu_BG_Image.color = Color.Lerp (this.menu_BG_Image.color, Color.clear, loop.deltaTime);
	 }).ttAdd(()=>{
	   this.menu_BG_Image.enabled = false;
	 });
    }
  }

  public void OnComplete(){

  }

#endregion

}
