using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.Class{

  public class cHealth  : MonoBehaviour, iHealth{

    public delegate void DL_Hurt(int IN_HLTH, Vector3 IN_DIR) ; //set up delegate
    public DL_Hurt OnHitdDelegate             ; //delegate instance

    public delegate void DL_BOOL(bool IN_BOOL) ; //set up delegate
    public DL_BOOL OnDethDelegate              ; //delegate instance
    public DL_BOOL OnInvincibleDelegate        ; //delegate instance
    public DL_BOOL OnHealthMXMNDelegate        ; //delegate instance : Health Max = true; Health Min(death?) = false

#region iHealth implementation

    public  int  mhealth = 5;
    public  int  mHealth {  //max health 
      get{ return mhealth; } 
      set{
        if(value != mhealth){ //only assign on change
          mhealth = value;
        }
      } 
    } 

    public  int  ohealth = 5;
    public  int  oHealth {  //current health 
      get{ return ohealth; } 
      set{
        if(value != ohealth){ //only assign on change
          ohealth = value;
		  if(value == this.mHealth){
		    Debug.Log("Maximum Health : " + value);
		  }
		  else if(value == 0){
		    Debug.Log("Minimum Health : " + value + " I am Dead ? : " + this);
		  }
        }
      } 
    } 

    public  bool bdamage = true;
    public  bool bDamage {  //true == can be damaged; else invincible
      get{ return bdamage; } 
      set{
        if(value != bdamage){ //only assign on change
          bdamage = value;
        }
      } 
    } 

	public virtual void onHitd (int IN_HLTH){
	  this.onHitd(IN_HLTH, Vector3.zero);
	}

    public virtual void onHitd (int IN_HLTH, Vector3 IN_DIR){ 
	  __gCONSTANT._LEVEL.FrameStutter();
      if(IN_HLTH <= 0){                        //negative == damage
        this.oHealth = this.oHealth + IN_HLTH;
        if(this.oHealth <= 0){                 //Dead when total health equal or less than zero
          this.onDeth(true);
        }
      }
	  else{
        this.oHealth = Mathf.Max(this.oHealth + IN_HLTH, this.mhealth); // clamps heal to object's maximum health 
	  }
      if(this.OnHitdDelegate != null){
        OnHitdDelegate(IN_HLTH, IN_DIR);
      }
    } 

    public virtual void onDeth (bool bDead){ // on death
      if(this.OnDethDelegate != null){
        OnDethDelegate(bDead);
      }

    }

#endregion

  }

}
