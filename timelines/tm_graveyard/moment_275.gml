/// @description After Robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2560-640
{


en3=instance_create(__view_get( e__VW.XView, 0 )+320+48, 197,oZombieMan) with en3
{canAttack=5 image_xscale=1 alarm[0]=20 image_xscale=-1 current_pal=1 name="ZOMBOBBY" enemy_switch("ZOMBOBBY",0)}
en4=instance_create(__view_get( e__VW.XView, 0 )+320+48, 247,oZombieWoman) with en4
{canAttack=5 image_xscale=1 alarm[0]=20  image_xscale=-1}

}
else
timeline_position-=1

