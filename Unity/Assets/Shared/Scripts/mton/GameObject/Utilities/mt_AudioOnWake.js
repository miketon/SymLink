#pragma strict
@script RequireComponent(AudioSource)

var soundTrack  : AudioClip       ;
var randomPitch : boolean = false ;
var randomRange : float   = 0.25  ;

function Awake(){
  audio.rolloffMode = AudioRolloffMode.Linear;
  playAudio_mt(soundTrack);
}

function playAudio_mt(soundTrack:AudioClip){
  if(soundTrack!=null){
  	if(!audio.isPlaying){
    	if(randomPitch){
      		audio.pitch  = Random.Range(1.0-randomRange, 1.0+randomRange) ;
    	}
    	audio.clip = soundTrack ;
    	audio.Play()            ;
  	}
  }
}
