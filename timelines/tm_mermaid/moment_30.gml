/// @description Plane 
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,1158+320,1)


en1=instance_create(1060,232,oDiver) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30 en1.enemyIdle1=spr_diver_idle1

en2=instance_create(1060+64,232,oDiver) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30+64 en2.enemyIdle1=spr_diver_idle2 en2.image_xscale=-1



}
else
timeline_position-=1

