if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,4322+320,1)

en1=instance_create(4112,178,oMerman) en1.canmove=0 en1.isIdle=1 en1.alarm[1]=60 en1.anim=70000
en1.idleRange=30 en1.enemyIdle1=spr_merman_idle1

en2=instance_create(4112+64,178,oMerman) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30+48 en2.enemyIdle1=spr_merman_idle2 en2.enemyIdle2=spr_merman_attack
en2.image_xscale=-1
}
else
timeline_position-=1;