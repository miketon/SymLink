using UnityEngine;

public class mt_CameraFollow : MonoBehaviour 
{
  public Transform target                                ; //object camera will focus on and follow
  public Vector3 targetOffset = new Vector3(0f, 3.5f, 7) ; //how far back should camera be from the lookTarget
  public bool lockRotation                               ; //should the camera be fixed at the offset (for example: following behind the player)
  public bool mouseFreelook                              ; //should the camera be rotated with the mouse? (only if camera is not fixed)
  public float followSpeed        = 6                    ; //how fast the camera moves to its intended position
  public float inputRotationSpeed = 100                  ; //how fast the camera rotates around lookTarget when you press the camera adjust buttons
  public float rotateDamping      = 100                  ; //how fast camera rotates to look at target
  public GameObject waterFilter                          ; //object to render in front of camera when it is underwater
  public string[] avoidClippingTags                      ; //tags for big objects in your game, which you want to camera to try and avoid clipping with

  private Transform followTarget ;
  private bool camColliding      ;

  private Transform xformMT    ;
  private Camera camMT         ;
  private float camYmod = 0.0f ;

  //setup objects
  void Awake()
  {
    camMT             = Camera.main                ;
    xformMT           = transform                  ;
    followTarget      = new GameObject().transform ; //create empty gameObject as camera target, this will follow and rotate around the player
    followTarget.name = "Camera Target"            ;
    if(waterFilter){
      waterFilter.renderer.enabled = false;
    }
    if(!target){
      Debug.LogError("'CameraFollow script' has no target assigned to it", xformMT);
    }
    //don't smooth rotate if were using mouselook
    if(mouseFreelook){
      rotateDamping = 0f;
    }
  }

  //run our camera functions each frame
  void LateUpdate(){

    if (!target){
      return;
    }

    Vector3 targetMton = target.position                        ;
    Vector3 viewPos    = camMT.WorldToViewportPoint(targetMton) ;
    //print("vPos.y    = " + viewPos.y)                         ;
    targetMton.y       = xformMT.position.y                     ;
    if(targetMton.y < 0.9){
      camYmod = 0.0f;
    }
    else{
      camYmod = 1.0f;
    }

    SmoothFollow ();
    if(rotateDamping > 0){
      SmoothLookAt();
    }
    else{
      //xformMT.LookAt(target.position);
      xformMT.LookAt(targetMton);
    }
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

  //rotate smoothly toward the target
  void SmoothLookAt(){
    Quaternion rotation = Quaternion.LookRotation (target.position - xformMT.position)                ;
    xformMT.rotation  = Quaternion.Slerp (xformMT.rotation, rotation, rotateDamping * Time.deltaTime) ;
  }

  //move camera smoothly toward its target
  void SmoothFollow(){
    //move the followTarget (empty gameobject created in awake) to correct position each frame
    followTarget.position = target.position + targetOffset ;
    //followTarget.Translate(targetOffset, Space.Self)     ; //just add offset, no need to translate
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
    Vector3 nextFramePosition = Vector3.Lerp(xformMT.position, followTarget.position, followSpeed * Time.deltaTime) ;
    Vector3 direction         = Vector3.up                                                                          ; //nextFramePosition - target.position ;
    //raycast to this position
    RaycastHit hit;
    if(Physics.Raycast (target.position, direction, out hit, direction.magnitude + 0.3f)){
      xformMT.position = nextFramePosition;
      foreach(string tag in avoidClippingTags){
        if(hit.transform.tag == tag){
          xformMT.position = hit.point - direction.normalized * 0.01f; // 0.3f;
        }
      }
    }
    else{
      //otherwise, move cam to intended position
      xformMT.position = nextFramePosition;
    }
  }

  void mouseLook(){
    float axisX = Input.GetAxis ("Mouse X") * inputRotationSpeed * Time.deltaTime ;
    followTarget.RotateAround (target.position,Vector3.up, axisX)                 ;
    float axisY = Input.GetAxis ("Mouse Y") * inputRotationSpeed * Time.deltaTime ;
    followTarget.RotateAround (target.position, xformMT.right, -axisY)            ;
  }

}
