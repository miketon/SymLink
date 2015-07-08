using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cInput : MonoBehaviour, IInput{ //reads input and determines update

    public virtual void Start(){
      Debug.Log(this + " Start ! ");
    }

    // Is input enabled
    public bool bInput { get; set; } 

    public delegate void OnJump(bool bJump) ; //set up delegate
    public OnJump OnJumpDelegate            ; //delegate instance

    public delegate void OnAttk(bool bAttk) ; //set up delegate
    public OnAttk OnAttkDelegate            ; //delegate instance

    // Button states
    private bool bjump = false;
    public bool bJump { 
      get{
        return bjump;
      }
      set{
        bjump = value;
        if(OnJumpDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
          OnJumpDelegate(bjump);
        }
      } 
    }

    private bool battk = false;
    public bool bAttk { 
      get{
        return battk;
      }
      set{
        battk = value;
        if(OnAttkDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
          OnAttkDelegate(battk);
        }
      } 
    }

    // Directional Pad
    public virtual void OnDir_Mov(Vector3 vDir){
      Debug.Log("OnDir Move!" + vDir);
    }
    public virtual void OnDir_Aim(Vector3 vDir){
      Debug.Log("OnDir Aim!" + vDir);
    }

    public virtual void Update(){

      if(bInput == true){

        //check jump
        if(Input.GetButtonDown(__gIO._JUMP_p1)){
          bJump = true;
        }
        else if(Input.GetButtonUp(__gIO._JUMP_p1)){
          bJump = false;
        }

        //check attack
        if(Input.GetButtonDown(__gIO._ATTK_p1)){
          bAttk = true;
        }
        else if(Input.GetButtonUp(__gIO._ATTK_p1)){
          bAttk = false;
        }

      }
    }

  }

}
