/// @description Gunner
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{
en4=instance_create(__view_get( e__VW.XView, 0 )-48, 218,oSneak) with en4
{canAttack=3 image_xscale=-1 alarm[1]=30
weapon_add("TOMMYGUN")
}

}
else
timeline_position-=1

