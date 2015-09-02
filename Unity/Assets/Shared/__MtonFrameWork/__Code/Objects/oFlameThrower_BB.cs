using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using MTON.Class;
using MTON.Global        ;
using MTON.codeObjects;

public class oFlameThrower_BB : FlamethrowerAbility {

    protected cInput              io ; //protected; can be replaced with ai; vs. input controller
	public oPlayer pl;

    public void Awake(){
       this.init_Components()                                        ;
       FlameLightAnimator = FlameLight.gameObject.GetComponent<Animator>();
	   IList<AudioSource> audioSources = GetComponents<AudioSource>();
	   if(audioSources.Count > 1){
	     mainAudioSource = audioSources[0];
		 loopAudioSource = audioSources[1];
		 loopAudioSource.volume = volume;
		 loopAudioSource.loop = true;
		 loopAudioSource.clip = flameThrowerLoop;
		 mainAudioSource.volume = volume;
	   }
	   else{
			Debug.LogError("Not enough audio source components in flame thrower");
	   }
	}

	public void init_Components(){
      io = __gUtility.AddComponent_mton<cInput>(this.gameObject)  ;
	}

	public void OnEnable(){
      io.OnPowrDelegate      += this.ToggleFiring;
	}

    public virtual void OnDisable(){
      io.OnPowrDelegate      -= this.ToggleFiring ;
	}

//	public override void DoAbility (){
//		//check input
//		if(isFiring != playerController.GetInputValue(InputButton.Ability1)){
//			ToggleFiring();
//		}
//
//		//update weight for animation
//		if((isFiring && fireLayerWeight != 1.0f) || (!isFiring && fireLayerWeight != 0.0f)){
//			int direction = 1;
//			if(!isFiring)
//			{
//				direction = -1;
//				currentFlame = 0;
//				currentSpawnTime = spawnRate;
//			}
//
//			currentTransistionTime += direction * fireTransitionRate * Time.deltaTime;
//
//			fireLayerWeight = Mathf.Lerp(0.0f, 1.0f, currentTransistionTime);
//			playerController.animController.SetLayerWeight(1, fireLayerWeight);
//			return;
//		}
//
//		//if in firing possition fire particals
//		if(fireLayerWeight == 1 )
//		{
//		  this.FireParticles();
//		}
//	}

	private void FireParticles(){
			currentSpawnTime += Time.deltaTime;

			if(currentSpawnTime >= spawnRate)
			{
//				bool directionLeft = (playerController.playerStateController.currentState & (int)PlayerStates.IsLeft) != 0;
//				int directionFlip = directionLeft ? -1: 1;
				int directionFlip = this.pl.bFaceRt ? -1: 1;
				currentSpawnTime = currentSpawnTime - spawnRate;

				FlameThrowerProjectile objectInstance = PoolManager.Instance.ActivatePooledItem(FlameThrowerProjectile.POOL_NAME).GetComponent<FlameThrowerProjectile>();
				//slow spawning
				//FlameThrowerProjectile objectInstance = (FlameThrowerProjectile)Instantiate(projectile, spawnLocation.transform.position, Quaternion.identity);
//				Quaternion direction = Quaternion.Euler(new Vector3(0, directionLeft ? 180.0f: 0, playerController.aim));
				Quaternion direction = Quaternion.Euler(new Vector3(0, this.pl.bFaceRt ? 180.0f: 0, playerController.aim));
				//Debug.Log(spawnLocation.transform.position.ToString());
				objectInstance.Init(playerController, currentFlame, spawnLocation.transform.position, direction);
				if(currentFlame != 0){
					currentFlame = 0;
				}
				else{
					++currentFlame;
				}
			}
	}

    private void ToggleFiring(bool isFiring){

//		isFiring = !isFiring;
		if(isFiring){
            //FlameLight.enabled = true;
            FlameLightAnimator.SetTrigger("Restart");
			mainAudioSource.Stop();
			mainAudioSource.clip = flameThrowerStart;
			mainAudioSource.Play();
			loopAudioSource.Play();
			this.FireParticles();
		}else{
            //FlameLight.enabled = false;
            FlameLightAnimator.SetTrigger("Out");
			mainAudioSource.Stop();
			mainAudioSource.clip = flameThrowerEnd;
			mainAudioSource.Play();
			loopAudioSource.Stop();
		}
	
	}
}
