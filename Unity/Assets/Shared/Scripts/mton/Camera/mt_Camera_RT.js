#pragma strict
#pragma implicit
#pragma downcast

@script ExecuteInEditMode
@script AddComponentMenu("Image Effects/mton_PIXL")
@script RequireComponent(Camera)

public var replaceShader   : Shader;
public var layerMaskString : String;

protected var renderTexture : RenderTexture;

private var shaderCamera  : GameObject;

function OnDisable() {	
  DestroyImmediate (shaderCamera);
  if (renderTexture != null) {
    RenderTexture.ReleaseTemporary (renderTexture);
    renderTexture = null;
  }
}

// --------------------------------------------------------

function Start() {
  // Disable if we don't support image effects
  if (!SystemInfo.supportsImageEffects) {
    enabled = false;
    return;
  }

}

// --------------------------------------------------------

function OnPreRender()
{
  if (!enabled || !gameObject.active)
    return;

  if (renderTexture != null) {
    RenderTexture.ReleaseTemporary (renderTexture) ;
    renderTexture = null                           ;
  }
  //renderTexture          = RenderTexture.GetTemporary (camera.pixelWidth, camera.pixelHeight, 16)                ; //Allocate a temporary render texture.
  renderTexture            = RenderTexture.GetTemporary (camera.pixelWidth * 0.125, camera.pixelHeight * 0.125, 8) ; //Allocate a temporary render texture.
  //renderTexture            = RenderTexture.GetTemporary (camera.pixelWidth * 0.125, camera.pixelHeight * 0.125, 8, RenderTextureFormat.ARGB32) ; //Allocate a temporary render texture.
  renderTexture.filterMode = FilterMode.Point                                                                      ;
  
  if (!shaderCamera) {
    shaderCamera                = new GameObject("ShaderCamera", Camera) ;
    shaderCamera.camera.enabled = false                                  ;
    shaderCamera.hideFlags      = HideFlags.HideAndDontSave              ;
  }
  var cam = shaderCamera.camera                             ;
  cam.CopyFrom (camera)                                     ;
  cam.backgroundColor    = Color(1,0,0,0)                   ;
  cam.clearFlags         = CameraClearFlags.SolidColor      ;
  //cam.clearFlags       = CameraClearFlags.Nothing         ; //Don't clear anything
  //cam.Render()                                            ; // ??? Do I need this on?
  
  //---Transform Level---//
  //cam.cullingMask = 1<<(LayerMask.NameToLayer(layerMaskString)); //short cut : find layer by Strin : ~invert everything but that layer : pass bit to culling Mask
  
  //---Material Level---//
  cam.RenderWithShader (replaceShader,"RenderType"); //if replacement tag == "", all objects in scene rendered with replacment shaders	replaceShader
  
  /*
  //Generating DepthNormal Info
  cam.depthTextureMode = DepthTextureMode.DepthNormals      ; //activate camera depth gen
  cam.targetTexture      = renderTexture                    ;
  var depthNormalShader : Shader = Shader.Find("Hidden/Camera-DepthNormalTexture");
  cam.RenderWithShader (depthNormalShader,null); //if replacement tag == "", all objects in scene rendered with replacment shaders	
  */
  
}

// Called by the camera to apply the image effect
function OnRenderImage (source : RenderTexture, destination : RenderTexture) : void{

  doOnRenderImage(renderTexture, destination);

  if (renderTexture != null) {
    RenderTexture.ReleaseTemporary (renderTexture) ;
    renderTexture = null                           ;
  }
}

function doOnRenderImage(source : RenderTexture, destination : RenderTexture) : void{
  Graphics.Blit(renderTexture, destination); // mat); 
  //renderTexture.DiscardContents(true, true); //??? does nothing
} 
