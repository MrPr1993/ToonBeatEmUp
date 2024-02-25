/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=6660-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320-64,176,oSpacer)
with en3 {image_xscale=-1 flashFX(x,y+1,z,spr_ateleporter,0,0.25,10,1,1,c_white,1)}
en4=instance_create(__view_get( e__VW.XView, 0)+320-64,240,oSpacer)
with en4 {image_xscale=-1 flashFX(x,y+1,z,spr_ateleporter,0,0.25,10,1,1,c_white,1)}


}
else
{
timeline_position-=1
}

