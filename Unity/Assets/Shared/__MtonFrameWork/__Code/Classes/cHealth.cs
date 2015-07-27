using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;

namespace MTON.Class{

  public class cHealth  : MonoBehaviour, iHealth{

#region iHealth implementation

	private int  ihealth = 5;
	public  int  iHealth {  //current health 
			get{ return ihealth; } 
			set{
			  if(value != ihealth){ //only assign on change
			    ihealth = value;
			  }
			} 
		} 

	private bool bdamage = true;
	public  bool bDamage {  //true == can be damaged; else invincible
			get{ return bdamage; } 
			set{
			  if(value != bdamage){ //only assign on change
			    bdamage = value;
			  }
			} 
		} 

	public virtual int onHeal (int IN_HEAL){ 
			return iHealth; 
		} 
	public virtual int onHurt (int IN_HURT){ 
			int retHealth = this.iHealth - IN_HURT;
			Debug.Log( this + " I AM HURT " + IN_HURT + " of Total: " + retHealth);
			if(retHealth < 0){
				Debug.Log( this + " I AM DEAD " + retHealth);
				this.onDeth();
			}
			return retHealth;
		} 
	public virtual void onDeth (){ } // on death

#endregion
	
  }

}
