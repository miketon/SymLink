using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using MTON.Class         ;
using MTON.Global        ;

namespace MTON.Class{

  public class cHealth  : MonoBehaviour, iHealth{

	public delegate void DL_Hurt(int IN_HURT) ; //set up delegate
	public DL_Hurt OnHurtDelegate             ; //delegate instance
	public DL_Hurt OnHealDelegate             ; //delegate instance

	public delegate void DL_Deth(bool bDead)  ; //set up delegate
	public DL_Deth OnDethDelegate             ; //delegate instance

	public GameObject OnDeathPrefab;

	public virtual void Start(){
	  if(OnDeathPrefab == null){
//		Debug.Log ("OnEnable DeathPrefab : " + (int)cLevel.e_Icon.Death + OnDeathPrefab);
	    OnDeathPrefab = __gCONSTANT._LEVEL.e_Icons[(int)cLevel.e_Icon.Death].gameObject;
	  }
	}

	private void Update(){
		if(Input.GetKeyUp(KeyCode.Minus)){
//				this.onHurt(-2);
				Debug.Log (" I am hurting : " + this.oHealth);
			}
	}

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

	public virtual void onHeal (int IN_HEAL){ 
			int newHealth = this.ohealth + IN_HEAL;
			if(newHealth <= this.mHealth){
				this.oHealth = newHealth;
			} //else no change in current health to prevent healing past maximum
			if(this.OnHealDelegate != null){
			  OnHealDelegate(IN_HEAL);
			}
		}

	public virtual void onHurt (int IN_HURT){ 
			this.oHealth = this.oHealth + IN_HURT;
//			Debug.Log( this + " I AM HURT " + IN_HURT + " of Total: " + this.oHealth);
			if(this.oHealth <= 0){
//				Debug.Log( this + " I AM DEAD " + this.oHealth);
				this.onDeth(true);
			}
			if(this.OnHurtDelegate != null){
			  OnHurtDelegate(IN_HURT);
			}
		} 

	public virtual void onDeth (bool bDead){ // on death
//			Debug.Log( this + " I AM DEAD !!!!! ");
		    this.gameObject.SetActive(false);
			if(this.OnDethDelegate != null){
			  OnDethDelegate(bDead);
			}
		    __gCONSTANT._LEVEL.SpawnObj(cLevel.e_Icon.Death, this.transform.position, this.transform.rotation, (Transform SpawnedObj)=>{
			  float randomF = Random.Range(1.0f, 3.0f)                    ;
		      SpawnedObj.position += Vector3.up * 0.5f * randomF          ; // lift slightly off ground to allow for spin and pop
	          return true;
	        });
	}

#endregion
	
  }

}
