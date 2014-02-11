#pragma strict
#pragma implicit
#pragma downcast

@script ExecuteInEditMode
@script AddComponentMenu("Image Effects/mton_PIXL")
@script RequireComponent(Camera)

var renderThingsShader : Shader;

private var renderTexture : RenderTexture;
private var shaderCamera : GameObject;

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
		RenderTexture.ReleaseTemporary (renderTexture);
		renderTexture = null;
	}
	//renderTexture = RenderTexture.GetTemporary (camera.pixelWidth, camera.pixelHeight, 16); //Allocate a temporary render texture.
	renderTexture = RenderTexture.GetTemporary (camera.pixelWidth * 0.125, camera.pixelHeight * 0.125, 8); //Allocate a temporary render texture.
	renderTexture.filterMode = FilterMode.Point;
	if (!shaderCamera) {
		shaderCamera = new GameObject("ShaderCamera", Camera);
		shaderCamera.camera.enabled = false;
		shaderCamera.hideFlags = HideFlags.HideAndDontSave;
	}
	var cam = shaderCamera.camera;
	cam.CopyFrom (camera);
	cam.backgroundColor = Color(1,0,0,0);
	cam.clearFlags = CameraClearFlags.SolidColor;
	cam.targetTexture = renderTexture;
	cam.Render();
	//cam.RenderWithShader (renderThingsShader, "RenderType");	
}

// Called by the camera to apply the image effect
function OnRenderImage (source : RenderTexture, destination : RenderTexture) : void{

	Graphics.Blit(renderTexture, destination); // mat); 

	if (renderTexture != null) {
		RenderTexture.ReleaseTemporary (renderTexture);
		renderTexture = null;
	}
}
