using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using ParticlePlayground;

public class xformSpawn{

//	public Transform xform;
//	public Vector3 vPos; //current position
//	public Quaternion qRot; //current rotation
//	public int particleId;
//
//    public xformSpawn(Transform IN_xform, Vector3 IN_pos, Quaternion IN_rot, int IN_id){
//		xform = IN_xform;
//		vPos = IN_pos;
//		qRot = IN_rot;
//		particleId = IN_id;
//    }
//
//	public xformSpawn Clone () {
//		return new xformSpawn (xform, vPos, qRot, particleId);
//	} 
//}
//
//public class PlaygroundFollow_MTON : PlaygroundFollow_Update {
//
//	List<xformSpawn> spawns = new List<xformSpawn>();
//
//	public Transform deathMarker;
//
//	public override void OnParticleDidDie (PlaygroundEventParticle particle) { // allowing MTON to add
//		base.OnParticleDidDie(particle);
//		Vector3 vPos = particles.GetParticlePosition(particle.particleId);
////		Debug.Log ("Particle Death at : "+particle.particleId + " : " +vPos.x);
////		if(this.referenceObject != null){
//		if(this.deathMarker != null){
////		  spawns.Add (new xformSpawn(this.referenceObject.transform, vPos, Quaternion.identity, particle.particleId));
////		  spawns.Add (new xformSpawn(this.deathMarker.transform, vPos, Quaternion.identity, particle.particleId));
//		  this.deathMarker.lpSpawn(vPos, Quaternion.identity);
////		  DoDeath(this.deathMarker, Vector3.zero, Quaternion.identity);
////		  this.DoParticleID(particle.particleId);
//		}
//	}
//
//	private void DoParticleID(int IN_id){
//		Vector3 vPos = particles.GetParticlePosition(IN_id);
//		Debug.Log ("My ID: " + IN_id + vPos);
//		this.deathMarker.lpSpawn(vPos, Quaternion.identity);
//	}
//
////	public override void RemoveFollower (int i) {
////		base.RemoveFollower(i);
////		Debug.Log ("REMOVING FOLLOWER : END : " + i);
////		Vector3 vPos = particles.GetParticlePosition(i);
////		MTON.Global.__gCONSTANT._LEVEL.levelSpawn<int>(i);
////		DoDeath(this.deathMarker, vPos, Quaternion.identity);
////	}
//
//	void DoDeath(Transform IN_xform, Vector3 IN_pos, Quaternion IN_rot){
//		  Vector3 vPos = particles.GetParticlePosition(0);
////		  IN_xform.lpSpawn(IN_pos, Quaternion.identity);
//		  IN_xform.lpSpawn(vPos, Quaternion.identity);
//	}
}