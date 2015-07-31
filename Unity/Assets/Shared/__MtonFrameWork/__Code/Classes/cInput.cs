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

#region iInput implementation

    // Is input enabled
	private bool binput = true ; //false == ignore input(use AI); true == accept input
    public  bool bInput {        //cannot assign default via setter/getter 
	  get{
	    return binput;
	  } 
	  set{
		if(value != binput){  binput = value;  }
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

	public virtual void doJump(bool bJump){
		this.bJump = bJump;
	    if(OnJumpDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
          OnJumpDelegate(bJump);
        }
	}

	public virtual void doAttk(bool bAttk){
		this.bAttk = bAttk;
	    if(OnAttkDelegate != null){ // NOTE: Just in case class exist, but no delegate is assigned
          OnAttkDelegate(bAttk);
        }
	}

	public virtual void doActV(bool bActV){
		this.bActV = bActV;
	    if(OnActVDelegate!=null){
		  OnActVDelegate(bActV);
		}
	}

#endregion

#region Property Setters and Getters 

    // Button states
    private bool bjump = false;
    public bool bJump { 
      get{
        return bjump;
      }
      set{
		if(value != bjump){  bjump = value;  }
      } 
    }

    private bool battk = false;
    public bool bAttk { 
      get{
        return battk;
      }
      set{
		if(value != battk){  battk = value;  }
      } 
    }

	private bool bactv = true; //use to control when entity VISUALLY activates/deactivates 
	public  bool bActV{
	  get{
	    return bactv;
	  }
	  set{
		if(value != bactv){  bactv = value;  }
	  }
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
          this.doJump(true);
        }
        else if(Input.GetButtonUp(__gIO._JUMP_p1)){
          this.doJump(false);
        }

        //check attack
        if(Input.GetButtonDown(__gIO._ATTK_p1)){
		  this.doAttk(true);
        }
        else if(Input.GetButtonUp(__gIO._ATTK_p1)){
		  this.doAttk(false);
        }

      }
    }

  }

}
