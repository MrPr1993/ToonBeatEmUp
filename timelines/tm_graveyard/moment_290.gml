/// @description /Skeletons
if __view_get( e__VW.XView, 0 )>=2560-320
{

en7=instance_create(__view_get( e__VW.XView, 0 )+320+48, 197,oSkeleton) with en5
{canAttack=3 image_xscale=1 alarm[0]=20 image_xscale=-1}
en8=instance_create(__view_get( e__VW.XView, 0 )+320+48, 247,oSkeleton) with en6
{canAttack=3 image_xscale=1 alarm[0]=20 image_xscale=-1}

}
else
{
timeline_position-=1
}

