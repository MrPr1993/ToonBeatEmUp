if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,10360+160,1)

en1=instance_create_depth(8695,180,-1,oMartian)
en2=instance_create_depth(8695+56,180,-1,oAlienRobot) en2.image_xscale=-1
en3=instance_create_depth(8734,164,-1,oMartian) en3.image_xscale=-1

with oMartian
{canmove=0 isIdle=1 alarm[1]=60 anim=70000 idleRange=30 enemyIdle1=spr_martian_back}
with oAlienRobot 
{canmove=0 isIdle=1 alarm[1]=60 anim=70000 idleRange=30+56 enemyIdle1=StandSpr image_xscale=-1}

en1.enemyIdle1=spr_martian_idle2
en3.enemyIdle1=spr_martian_idle1
en3.image_xscale=-1


}
else
timeline_position-=1;