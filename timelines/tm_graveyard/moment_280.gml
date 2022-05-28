/// @description After Robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2560-480
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2560,1)

en5=instance_create(__view_get( e__VW.XView, 0 )+320+48, 197,oZombieWoman) with en5
{canAttack=5 image_xscale=1 alarm[0]=20 image_xscale=-1}
en6=instance_create(__view_get( e__VW.XView, 0 )+320+48, 247,oZombieWoman) with en6
{canAttack=5 image_xscale=1 alarm[0]=20 current_pal=1 name="ZOMBELLE" image_xscale=-1}

}
else
timeline_position-=1

