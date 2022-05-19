/// @description After Robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2560,1)

en1=instance_create(1735, 197,oZombieMan) en1.isIdle=1 en1.alarm[1]=60
en1.idleRange=30 en1.image_xscale=-1
en2=instance_create(1766, 247,oZombieWoman) en2.isIdle=1 en2.alarm[1]=60 en2.image_xscale=-1
en2.idleRange=30+32 en2.image_xscale=-1

}
else
timeline_position-=1

