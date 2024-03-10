/// @description /Skeletons
if __view_get( e__VW.XView, 0 )>=2560-320
{

en7=instance_create(__view_get( e__VW.XView, 0 )+320+24, 197,oSkeleton) with en7
{canAttack=5 alarm[0]=60 image_xscale=-1}
en8=instance_create(__view_get( e__VW.XView, 0 )+320+24, 247,oSkeleton) with en8
{canAttack=5 alarm[0]=60 image_xscale=-1 current_pal=1 name="SKELIE" enemy_switch("SKELIE",0)}

}
else
{
timeline_position-=1
}

