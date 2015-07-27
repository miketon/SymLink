using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface iHealth{

	int  iHealth { get; set; } //current health 
	bool bDamage { get; set; } //true == can be damaged; else invincible

	// health methods
	int  onHeal (int IN_HEAL) ;// on power up
	int  onHurt (int IN_HURT) ;// on hit
	void onDeth ()            ;// on death

  }

}
