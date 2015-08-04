using UnityEngine        ;
using System.Collections ;
using MTON.Interface     ;
using DG.Tweening        ; //import DemiGiant DoTween

namespace MTON.Class{

  public class cTween : cXform, iTweenMTON{

    public bool bOnCompleteHide{ get; set; } // Hide on complete

    //DOTween variables
    public Tween    tw_Cache { get; set; } // Interesting : Interface implementations have to be public; private doesn't work
    public Sequence sq_Cache { get; set; }
	
    public float   durFX = 0.2f                            ; //duration of FX
    public float   sclFX = 1.5f                            ; //scale of FX
    public float   sclGO = 1.0f                            ; //scale of GameObject
    public Vector3 rotFX = new Vector3(-90.0f, 0.0f, 0.0f) ; //rotation of FX

    public override void Awake (){
	  base.Awake();
      bOnCompleteHide = true ;
	  sclGO = this.transform.localScale.y;
    }

	public void doRotateTo(Vector3 IN_rotate){
      checkTweenCache();
//	  tw_Cache = xform.DORotate(IN_rotate, 0.80f).SetEase(Ease.OutElastic);
	  tw_Cache = xform.DORotate(IN_rotate, 0.20f).SetEase(Ease.OutExpo);
	}

    public void doBlink(){
      checkTweenCache();
      tw_Cache = xform.DOScale(scl * sclFX, durFX).SetEase(Ease.OutSine).OnComplete(Kill).From() ;
    }

    public virtual void ResetTweenObj(){
      xform.localScale    = scl ; //reset scale if altered
      xform.localPosition = pos ;
      xform.localRotation = rot ;
    }

    public void doFlare(Vector3 end){
      if(sq_Cache!=null){
        sq_Cache.Kill()        ;
        xform.localScale = scl ; //reset scale if altered
      }
      sq_Cache = DOTween.Sequence()
        .Append(xform.DOLocalMove(end, durFX, false).SetEase(Ease.OutSine).OnComplete(Kill))
        .Insert(0.01f, xform.DOScaleZ(0.005f, durFX*0.75f).SetEase(Ease.OutSine))
        .Insert(0.05f, xform.DOScaleX(0.500f, durFX*0.50f).SetEase(Ease.OutSine));
    } 

    public void doPunch(Vector3 end){
      checkTweenCache();
      //	  tw_Cache = xform.DOPunchPosition(Vector3.right * 10.0f, durFX, 10, 1.0f, false).OnComplete(Kill); //(dirMagaddtocPos, dur, vibrato, elasticity)
      tw_Cache = xform.DOPunchPosition(end, durFX, 10, 5.0f, false).OnComplete(Kill); //(dirMagaddtocPos, dur, vibrato, elasticity)
    }

    public void doShakePosition(){
      checkTweenCache();
      tw_Cache = xform.DOShakePosition(durFX, new Vector3(0.0f, 0.75f, 0.0f), 100, 1.0f).OnComplete(Kill); // .From(); //(duration, strength, int_vibrato, randomness)
    }

    public void doShakeScale(){
      checkTweenCache();
      tw_Cache = xform.DOShakeScale(durFX, new Vector3(1.0f, 1.0f, 1.0f), 1, 90.0f).OnComplete(Kill); // .From(); //(duration, strength, int_vibrato, randomness)
    }

    public void doCrouch(float scaleY){
	  doCrouch(scaleY, durFX*0.5f);
    }

	public void doCrouch(float scaleY, float IN_dur){
      checkTweenCache();
	  tw_Cache = xform.DOScaleY(scaleY, IN_dur).SetEase(Ease.OutElastic);
	}

    private void checkTweenCache(){
      if(tw_Cache!=null){
        tw_Cache.Kill()                                     ;
        xform.localScale = new Vector3(sclGO, sclGO, sclGO) ;
      }
    }

    public override void Kill(){
      if(bOnCompleteHide == true){ //if bOnCompleteHide, hide display object
        base.Kill();
      }
      else{ //else re-init state
        ResetTweenObj();
      }
    }

  }

}
