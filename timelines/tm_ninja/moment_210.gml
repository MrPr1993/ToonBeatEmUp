/// @description Next Set
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,1158+320,1)

en1=instance_create(1260, 184,oEnemy1) with en1
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30 }
en2=instance_create(1260+64, 184,oEnemy1) with en2
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30 }
en3=instance_create(1260+128, 184,oEnemy1) with en3
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30 }

}
else
timeline_position-=1

