using UnityEngine        ;
using System.Collections ;
using System.Collections.Generic;
using MTON.Class         ;
using MTON.Interface     ;
using MTON.Global        ;

namespace MTON.codeObjects{

  public class oHint_FLOK : cHint{

	public BoidController  bc          ;
	public float boidVelocity = 6.0f   ;
	public float boidVelVartn = 0.5f   ;
	public float boidDistNbor = 4.0f   ;

	public override void doHint (bool bHint, cInput cINPT){
	  base.doHint (bHint, cINPT);
	  if(bHint == true){
	    if(bc != null){
		  bc.velocity          = this.boidVelocity ;
		  bc.velocityVariation = this.boidVelVartn ;
		  bc.neighborDist      = this.boidDistNbor ;
		}
	  }
	  else if(bHint == false){
	    if(bc != null){
		  bc.velocity          = this.initVel ;
		  bc.velocityVariation = this.initVlv ;
		  bc.neighborDist      = this.initDis ;
		}
	  }
	}

	private float initVel = 0.0f ;
	private float initVlv = 0.0f ; // velocity variation
	private float initDis = 0.0f ; // distance to neighbor

	public void Awake(){
	  if(bc != null){
	    this.initVel = bc.velocity          ;
	    this.initVlv = bc.velocityVariation ;
		this.initDis = bc.neighborDist      ;
	  }
	}

  }

}