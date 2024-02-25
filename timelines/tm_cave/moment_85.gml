/// @description Baddies Appear 4/5

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,180,oSkeleton)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oSkeleton)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

