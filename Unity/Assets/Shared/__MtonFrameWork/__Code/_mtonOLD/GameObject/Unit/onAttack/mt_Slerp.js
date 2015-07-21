#pragma strict

   // Animates the position in an arc between sunrise and sunset.
    
    var sunrise : Transform;
    var sunset : Transform;
    var centerOffset : Vector3 = Vector3(0, 1, 0);
    
    // Time to move from sunrise to sunset position, in seconds.
    var journeyTime = 1.0;
    
    // The time at which the animation started.
    private var startTime: float;
    
    private var xform : Transform;
    private var initPos : Vector3 = Vector3.zero;
    
    function Start() {
        // Note the time at the start of the animation.
        startTime = Time.time;
        initPos = transform.position;
        xform = GetComponent(Transform);
    }
    
    
    function Update () {
        // The center of the arc
        var center = (sunrise.position + sunset.position) * 0.5;
        // move the center a bit downwards to make the arc vertical
        center -= centerOffset;
    
        // Interpolate over the arc relative to center
        var riseRelCenter = sunrise.position - center;
        var setRelCenter = sunset.position - center;
        
        // The fraction of the animation that has happened so far is
        // equal to the elapsed time divided by the desired time for
        // the total journey.
        var fracComplete = (Time.time - startTime) / journeyTime;
        transform.position = Vector3.Slerp(riseRelCenter, setRelCenter, fracComplete);
        transform.position += center;
        
        if(Input.GetKeyDown(KeyCode.K)){
          transform.position = initPos;
          startTime = Time.time;
        }
    }