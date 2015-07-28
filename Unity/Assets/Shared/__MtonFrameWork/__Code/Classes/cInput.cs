using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.Class{

  public class cInput : MonoBehaviour, IInput{ //reads input and determines update

	public delegate void OnDPAD(Vector3 vDir) ; //set up delegate
    public OnDPAD OnDPAD_DIR_Delegate         ; //delegate instance
	public OnDPAD OnDPAD_AIMDelegate          ; //delegate instance
	
    public delegate void OnBTTN(bool bPrss) ; //set up delegate
    public OnBTTN OnJumpDelegate            ; //delegate instance
    public OnBTTN OnAttkDelegate            ; //delegate instance
	public OnBTTN OnActVDelegate            ; //delegate instance

	private bool bactv = true; //use to control when entity VISUALLY activates/deactivates 
	public  bool bActV{
	  get{
	    return bactv;
	  }
	  set{
	    bactv = value;
		if(OnActVDelegate!=null){
		  OnActVDelegate(bactv);
		}
	  }
	}

#region iInput implementation

    // Is input enabled
	private bool binput = true ; //false == ignore input(use AI); true == accept input
    public  bool bInput {        //cannot assign default via setter/getter 
			  get{
			    return binput;
			  } 
			  set{
			    binput = value;
			  } 
		    } 

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
    public virtual void doDPAD_Dir(Vector3 vDir){
//	  Debug.Log("doDPAD_Dir Move!" + vDir);
	  if(OnDPAD_DIR_Delegate != null){
	    OnDPAD_DIR_Delegate(vDir);
	  }
    }
	public virtual void doDPAD_Aim(Vector3 vDir){
	  Debug.Log("doDPAD_Dir Aim!" + vDir);
    }

#endregion

	public virtual void Start(){
//      Debug.Log(this + " Start ! ");
    }

    public virtual void Update(){

      if(bInput == true){
		float hAxis = Input.GetAxisRaw(__gIO._hAxs_p1);
		float vAxis = Input.GetAxisRaw(__gIO._vAxs_p1); //get raw for vAxis == instant crouch/duck; else it will be interpolated
		if(new Vector2(hAxis, vAxis).magnitude > 0.01f){
			Vector3 moveDir = new Vector3(hAxis, vAxis, 0.0f);
			doDPAD_Dir(moveDir);
		}
		else{
			doDPAD_Dir(Vector3.zero);
		}

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
