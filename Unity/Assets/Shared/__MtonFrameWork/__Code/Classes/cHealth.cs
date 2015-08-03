using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.Class{

  public class cHealth  : MonoBehaviour, iHealth{

    public delegate void DL_Hurt(int IN_HLTH) ; //set up delegate
    public DL_Hurt OnHitdDelegate             ; //delegate instance
    public DL_Hurt OnHealDelegate             ; //delegate instance

    public delegate void DL_Deth(bool bDead)  ; //set up delegate
    public DL_Deth OnDethDelegate             ; //delegate instance

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
      if(IN_HLTH <= 0){                        //negative == damage
        this.oHealth = this.oHealth + IN_HLTH;
        if(this.oHealth <= 0){                 //Dead when total health equal or less than zero
          this.onDeth(true);
        }
        if(this.OnHitdDelegate != null){
          OnHitdDelegate(IN_HLTH);
        }
      }
      else{                                     //positve == heal
        int newHealth = this.ohealth + IN_HLTH;
        if(newHealth <= this.mHealth){
          this.oHealth = newHealth;
        }                                       //else no change in current health to prevent healing past maximum
        if(this.OnHealDelegate != null){
          OnHealDelegate(IN_HLTH);
        }
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
