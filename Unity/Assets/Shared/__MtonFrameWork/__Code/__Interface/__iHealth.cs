using UnityEngine        ;
using System.Collections ;

namespace MTON.Interface{

  public interface iHealth{

	int  mHealth { get; set; } //max health
	int  oHealth { get; set; } //current health 
	bool bDamage { get; set; } //true == can be damaged; else invincible

	// health methods
	void onHitd (int IN_HLTH) ;// on hit; negative == hurt, positive == heal
	void onDeth (bool bDead)  ;// on death

  }

}
