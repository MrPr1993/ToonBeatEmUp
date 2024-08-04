if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{specialSet8=0 oControl.time=99
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,5560+160+240,1)

en1=instance_create_depth(5478,164,-1,oMartian)
en2=instance_create_depth(5544,164,-1,oMartian)
en3=instance_create_depth(5734,164,-1,oMartian)
en4=instance_create_depth(5814,164,-1,oMartian)
en5=instance_create_depth(5944,164,-1,oMartian)

with oMartian
{canmove=0 isIdle=1 alarm[1]=60 anim=70000 idleRange=30 enemyIdle1=spr_martian_back}
en1.enemyIdle1=spr_martian_idle1
en3.enemyIdle1=spr_martian_idle2 en5.image_xscale=-1


}
else
timeline_position-=1;