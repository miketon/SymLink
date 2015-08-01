using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface iHealth{

	int  mHealth { get; set; } //max health
	int  oHealth { get; set; } //current health 
	bool bDamage { get; set; } //true == can be damaged; else invincible

	// health methods
	void onHeal (int IN_HEAL) ;// on power up
	void onHurt (int IN_HURT) ;// on hit
	void onDeth (bool bDead)  ;// on death

  }

}
