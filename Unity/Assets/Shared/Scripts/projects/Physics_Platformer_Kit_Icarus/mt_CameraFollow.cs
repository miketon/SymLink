using UnityEngine;

public class mt_CameraFollow : MonoBehaviour 
{
  public Transform target                                ; //object camera will focus on and follow
  public Vector3 targetOffset = new Vector3(0f, 3.5f, 7) ; //how far back should camera be from the lookTarget
  public bool bRotation       = true                     ; //should the camera rotate at all                                                            ;
  public bool lockRotation                               ; //should the camera be fixed at the offset (for example: following behind the player)
  public bool mouseFreelook                              ; //should the camera be rotated with the mouse? (only if camera is not fixed)
  public float followSpeed        = 6                    ; //how fast the camera moves to its intended position
  public float inputRotationSpeed = 100                  ; //how fast the camera rotates around lookTarget when you press the camera adjust buttons
  public float rotateDamping      = 100                  ; //how fast camera rotates to look at target
  public GameObject waterFilter                          ; //object to render in front of camera when it is underwater
  public string[] avoidClippingTags                      ; //tags for big objects in your game, which you want to camera to try and avoid clipping with

  private Transform followTarget ;
  private bool camColliding      ;

  private Transform xform      ;
  private Vector3 targetMton   ;
  private Camera camMT         ;
  private float camYmod = 0.0f ;

  //setup objects
  void Awake()
  {
    camMT             = Camera.main                ;
    xform             = transform                  ;
    followTarget      = new GameObject().transform ; //create empty gameObject as camera target, this will follow and rotate around the player
    followTarget.name = "Camera Target"            ;

    if(!target){
      Debug.LogError("'CameraFollow script' has no target assigned to it", xform);
    }
    if(mouseFreelook){     
      rotateDamping = 0f; //don't smooth rotate if were using mouselook
    }
    if(waterFilter){
      waterFilter.renderer.enabled = false;
    }
  }

  //run our camera functions each frame
  void LateUpdate(){

    if (!target){
      return;
    }


    SmoothFollow ();
    if(bRotation){
      if(rotateDamping > 0){
        SmoothLookAt();
      }
      else{
        //xform.LookAt(target.position);
        xform.LookAt(targetMton);
      }
    }
    targetPrevPos = target.position;
  }

  private int yZone = 0; //-1 == below; 1==above, 0 == middle
  private float yDelta = 0.025f;
  private float yAccel = 0.0f;
  private float yLow = 0.15f;
  private float yHigh = 0.75f;
  private Vector3 targetPrevPos;


  void CamSpaceDeadZone(){
    float yVel = target.position.y - targetPrevPos.y;
    float yDir = 0.0f;
    if(yVel>0.1f){
      yDir = 1.0f;
    }
    else if(yVel<-0.1f){
      yDir = -1.0f;
    }
    else{
      yDir = 0.0f;
      //yAccel = 0.0f;
    }
    targetMton      = target.position                        ;
    Vector3 viewPos = camMT.WorldToViewportPoint(targetMton) ;
    if(viewPos.y > yLow && viewPos.y < yHigh){
      camYmod = 0.0f;
      yZone = 0; //middle
      yAccel = Mathf.Clamp((Mathf.Abs(yAccel)-yDelta), 0.0f, 1.0f);
    }
    else if(viewPos.y <= yLow ){
      yZone = -1; //lower
      //if(yDir < 0.0f){
      yAccel = Mathf.Clamp((yAccel - yDelta), -1.0f, 1.0f);
      //}
    }
    else{
      //camYmod = 1.0f;
      yZone = 1; //higher
      if(yDir > 0.1f){
        yAccel = Mathf.Clamp((yAccel + yDelta), -1.0f, 1.0f);
      }
      else{
        yAccel = Mathf.Clamp((yAccel - yDelta), -1.0f, 1.0f);

      }
    }
    targetMton.y    = xform.position.y * yAccel; //camYmod;
    print("yZone : " + yZone +" yVel: "+ yVel +  "vPos.y   = " + viewPos.y +" yAccel: "+ yAccel + " camYmod : " + camYmod + " targetY : " + target.position.y +" deadY : " + targetMton.y) ;
  }

  //move camera smoothly toward its target
  void SmoothFollow(){
    CamSpaceDeadZone();
    //move the followTarget (empty gameobject created in awake) to correct position each frame
    //followTarget.position = target.position + targetOffset ;
    followTarget.position = targetMton + targetOffset ;
    if (lockRotation){
      followTarget.rotation = target.rotation;
      if(mouseFreelook){
        mouseLook();
      }
    }
    else{
      //keyboard camera rotation look
      float axis = Input.GetAxis ("CamHorizontal") * inputRotationSpeed * Time.deltaTime ;
      followTarget.RotateAround (target.position, Vector3.up, axis)                      ;
    }

    //where should the camera be next frame?
    Vector3 nextFramePosition = Vector3.Lerp(xform.position, followTarget.position, followSpeed * Time.deltaTime) ;
    Vector3 direction         = Vector3.up                                                                        ; //nextFramePosition - target.position ;
    //raycast to this position
    RaycastHit hit;
    if(Physics.Raycast (target.position, direction, out hit, direction.magnitude + 0.3f)){
      xform.position = nextFramePosition;
      foreach(string tag in avoidClippingTags){
        if(hit.transform.tag == tag){
          xform.position = hit.point - direction.normalized * 0.01f; // 0.3f;
        }
      }
    }
    else{
      //otherwise, move cam to intended position
      xform.position = nextFramePosition;
    }
  }

  //rotate smoothly toward the target
  void SmoothLookAt(){
    Quaternion rotation = Quaternion.LookRotation (target.position - xform.position)                  ;
    xform.rotation      = Quaternion.Slerp (xform.rotation, rotation, rotateDamping * Time.deltaTime) ;
  }

  void mouseLook(){
    float axisX = Input.GetAxis ("Mouse X") * inputRotationSpeed * Time.deltaTime ;
    followTarget.RotateAround (target.position,Vector3.up, axisX)                 ;
    float axisY = Input.GetAxis ("Mouse Y") * inputRotationSpeed * Time.deltaTime ;
    followTarget.RotateAround (target.position, xform.right, -axisY)              ;
  }

  //toggle waterfilter, is camera clipping walls?
  void OnTriggerEnter(Collider other){
    if (other.tag == "Water" && waterFilter){
      waterFilter.renderer.enabled = true;
    }
  }

  //toggle waterfilter, is camera clipping walls?
  void OnTriggerExit(Collider other){
    if (other.tag == "Water" && waterFilter){
      waterFilter.renderer.enabled = false;
    }
  }

}
