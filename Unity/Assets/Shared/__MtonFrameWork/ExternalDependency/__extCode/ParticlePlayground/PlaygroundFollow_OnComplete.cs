using UnityEngine;
using System.Collections;
using ParticlePlayground;

public class PlaygroundFollow_OnComplete : MonoBehaviour {
	
	public PlaygroundFollow followScript;
	public Transform xformSpawn;
	
	void OnEnable ()
	{
		if (followScript != null)
		{
			followScript.sendEvents = true;
			followScript.followerEventBirth += OnFollowerBirth;
//			followScript.followerEventDeath += OnFollowerDeath;
			followScript.followerEventStopp += OnFollowerDeath;
		}
	}
	
	void OnDisable ()
	{
		if (followScript != null)
		{
			followScript.sendEvents = false;
			followScript.followerEventBirth -= OnFollowerBirth;
//			followScript.followerEventDeath -= OnFollowerDeath;
			followScript.followerEventStopp -= OnFollowerDeath;
		}
	}
	
	void OnFollowerBirth (PlaygroundFollower follower)
	{
//		Debug.Log ("Follower "+follower.gameObject.name+" is now tracking the particle id: "+follower.particleId);
	}
	
	void OnFollowerDeath (PlaygroundFollower follower)
	{
//		Debug.Log ("Follower "+follower.gameObject.name+" died at position "+follower.transform.position);
		if(this.xformSpawn != null){
//			GameObject.Instantiate(xformSpawn, follower.transform.position, Quaternion.identity);
			this.xformSpawn.lpSpawn(follower.transform.position, Quaternion.identity);
		}
	}
}