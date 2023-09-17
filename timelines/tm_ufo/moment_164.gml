/// @description Baddies Appear 

if __view_get( e__VW.XView, 0 )>=9460-2-320
{

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,176,oSpacer)
with en6 {image_xscale=-1 canAttack=5 current_pal=1 alarm[1]=60}
en7=instance_create(__view_get( e__VW.XView, 0)+320+64,240,oSpacer)
with en7 {image_xscale=-1 canAttack=5 current_pal=1 alarm[1]=60}


}
else
{
timeline_position-=1
}

