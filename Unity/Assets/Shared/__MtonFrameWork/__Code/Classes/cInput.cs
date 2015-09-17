using UnityEngine        ;
using System.Collections ;
using System             ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cInput : MonoBehaviour, IInput{ //reads input and determines update

    public delegate void OnDPAD(Vector3 vDir) ; //set up delegate
    public OnDPAD OnDPAD_DIR_Delegate         ; //delegate instance
    public OnDPAD OnDPAD_AIM_Delegate         ; //delegate instance

    public delegate void OnBTTN(bool bPrss) ; //set up delegate
    public OnBTTN On__IODelegate            ; //delegate instance
    public OnBTTN OnJumpDelegate            ; //delegate instance
    public OnBTTN OnAttkDelegate            ; //delegate instance
    public OnBTTN OnActVDelegate            ; //delegate instance
    public OnBTTN OnPowrDelegate            ; //delegate instance

#region iInput implementation

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool binput = true ; //false == ignore input(use AI); true == accept input
    public  bool bInput {        //cannot assign default via setter/getter 
      get{
        return binput;
      } 
      set{
        if(value != binput){  
		  binput = value;  
		}
      } 
    }

    // Directional Pad
    public virtual void doDPAD_Dir(Vector3 vDir){
      //	  Debug.Log("doDPAD_Dir Move!" + vDir);
      if(OnDPAD_DIR_Delegate != null){
        OnDPAD_DIR_Delegate(vDir);
      }
      if(vDir != Vector3.zero){ this.b__IO = true  ; }	
      else{                     this.b__IO = false ; }
    }

    public virtual void doDPAD_Aim(Vector3 vDir){
      //	  Debug.Log("doDPAD_Dir Aim!" + vDir);
      if(OnDPAD_AIM_Delegate != null){
        OnDPAD_AIM_Delegate(vDir);
      }
    }

    public virtual void setJump(bool bJump){
      if(OnJumpDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
        OnJumpDelegate(bJump);
      }
    }

    public virtual void setAttk(bool bAttk){
      if(OnAttkDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
        OnAttkDelegate(bAttk);
      }
    }

    public virtual void setActV(bool bActV){
      if(OnActVDelegate!=null){
        OnActVDelegate(bActV);
      }
    }

    private void set__IO(bool b__io){
      if(this.On__IODelegate != null){
        this.On__IODelegate(b__io);
      }
    }

    public virtual void setPowr(bool bPowr){
      if(bPowr){
        Debug.Log ("ATTACK POWERUP ACTIVATED!");
      }
      else{
        Debug.Log ("ATTACK POWERUP RELEASED!");
      }
      if(OnPowrDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
        OnPowrDelegate(bPowr);
      }
    }

#endregion


#region Property Setters and Getters 

    // Overall IO states : Anybutton/dPad = true; else = false
    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool b__io = false;
    public  bool b__IO { 
      get{
        return b__io;
      }
      set{
        if(value != b__io){  
          b__io = value;
          this.set__IO(value);
        }
      } 
    }

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    // Button states
    private bool bjump = false;
    public  bool bJump { 
      get{
        return bjump;
      }
      set{
        if(value != bjump){  
		  bjump = value; 
		  this.setJump(value);
	    }
      } 
    }

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool battk = false;
    public  bool bAttk { 
      get{
        return battk;
      }
      set{
        if(value != battk){  
		  battk = value;
		  this.setAttk(value);
		}
      } 
    }

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool bactv = true; //use to control when entity VISUALLY activates/deactivates 
    public  bool bActV{
      get{
        return bactv;
      }
      set{
        if(value != bactv){  
		  bactv = value;
		  this.setActV(value);
		}
      }
    }

    [SerializeField] //else can accidentally assign to lowercase var vs. setter var
    private bool bpowr = false;
    private bool bPowr{
      get{ return bpowr; }
      set{
        if(value != bpowr){
          bpowr = value;
          this.setPowr(value);
        }
      }
    }

#endregion

    public  float kTimePowerUpAC = 0.5f ;
    private float kTimeOnAttckDN = 0.0f ;

    public virtual void Update(){

      if(this.bInput == true){ //ai or input
        if(this.bActV == true){ //active or deactive
          // input move
          float hAxis = Input.GetAxisRaw(__gIO._hAxs_p1);
          float vAxis = Input.GetAxisRaw(__gIO._vAxs_p1); //get raw for vAxis == instant crouch/duck; else it will be interpolated

          Vector3 moveDir = new Vector3(hAxis, vAxis, 0.0f);
          if(moveDir.magnitude > 0.01f){
            doDPAD_Dir(moveDir);
          }
          else{
            doDPAD_Dir(Vector3.zero);
          }

          // input aim
          float hAimd = Input.GetAxis(__gIO._hAim_p1);
          float vAimd = Input.GetAxis(__gIO._vAim_p1); 

          Vector3 aimdDir = new Vector3(hAimd, vAimd, 0.0f);
          if(aimdDir.magnitude > 0.01f){
            doDPAD_Aim(aimdDir);
          }

          //check jump
          if(Input.GetButtonDown(__gIO._JUMP_p1)){
            this.bJump = true;
          }
          else if(Input.GetButtonUp(__gIO._JUMP_p1)){
            this.bJump = false;
          }

          //check attack
          if(Input.GetButtonDown(__gIO._ATTK_p1)){
            this.bAttk = true;
            this.kTimeOnAttckDN = Time.time + this.kTimePowerUpAC;
          }
          else if(Input.GetButtonUp(__gIO._ATTK_p1)){
            this.bAttk = false ;
            this.bPowr = false ;
          }

          //check for button hold
          if(this.bAttk == true){
            if(Time.time > this.kTimeOnAttckDN){
              this.bPowr = true ;
            }
          }
        }
        else{
          doDPAD_Dir(Vector3.zero); //???must zero out else player zooms off screen
        }
      }
    }

  }

}
