#pragma strict
@script RequireComponent(AudioSource)

var soundTrack  : AudioClip       ;
var randomPitch : boolean = false ;
var randomRange : float   = 0.25  ;

function Awake(){
  GetComponent.<AudioSource>().rolloffMode = AudioRolloffMode.Linear;
  playAudio_mt(soundTrack);
}

function playAudio_mt(soundTrack:AudioClip){
  if(soundTrack!=null){
  	if(!GetComponent.<AudioSource>().isPlaying){
    	if(randomPitch){
      		GetComponent.<AudioSource>().pitch  = Random.Range(1.0-randomRange, 1.0+randomRange) ;
    	}
    	GetComponent.<AudioSource>().clip = soundTrack ;
    	GetComponent.<AudioSource>().Play()            ;
  	}
  }
}
