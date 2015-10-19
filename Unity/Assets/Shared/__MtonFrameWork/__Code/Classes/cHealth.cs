using UnityEngine        ;
using System             ; //NOTE : ??? must import to use anonymous function ; And the IComparable Interface for Dictionary
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

#region iHealth implementation

    public  int  healthmax = 5;
    public  int  healthMAX {  //max health 
      get{ return healthmax; } 
      set{
        if(value != healthmax){ //only assign on change
          healthmax = value;
        }
      } 
    } 

    public  int  healthcur = 5;
    public  int  healthCUR {  //current health 
      get{ return healthcur; } 
      set{
        if(value != healthcur){ //only assign on change
          healthcur = value;
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
        this.healthCUR = this.healthCUR + IN_HLTH;
        if(this.healthCUR <= 0){                 //Dead when total health equal or less than zero
          this.onDeth(true);
        }
      }
      else{
        this.healthCUR = Mathf.Min(this.healthCUR + IN_HLTH, this.healthmax); // clamps heal to object's maximum health 
		if(this.healthCUR >= this.healthMAX){      // Full Health when == maxhealth
          this.onDeth(false);
        }
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

    public virtual void setInvincible(Renderer IN_RENDERER, float IN_DUR=1.0f, bool IN_BOOL=true){
      Debug.Log(" I AM INVINCIBLE : " + IN_BOOL);
      if(IN_BOOL){
		this.bDamage = false;
		if(this.OnInvincibleDelegate!=null){
		  this.OnInvincibleDelegate(true);
		}
		var oDisplay = IN_RENDERER; //must use Renderer, not GameObject/Transform else Animator loses initialization
        oDisplay.enabled = false;
        var countLoop = 0;
        this.tt("OnHitBlink").ttReset();
        this.tt("OnHitBlink").ttLoop(IN_DUR, delegate(ttHandler loop){
            countLoop++;
            if(countLoop%4==0){
              oDisplay.enabled = !oDisplay.enabled; //toggle on/off
            }
            //			    Debug.Log ("LoopDelta : " + loop.deltaTime + " LoopCount : " + countLoop + " MOD : " + countLoop%2)	;
            }).ttAdd(()=>{
              oDisplay.enabled = true;
			  this.bDamage = true;
			  if(this.OnInvincibleDelegate!=null){
		        this.OnInvincibleDelegate(false);
		      }
              Debug.Log(" I AM MORTAL : " + IN_BOOL);
            })                         ; //using TeaTime.cs
      }
    }

  }

}
