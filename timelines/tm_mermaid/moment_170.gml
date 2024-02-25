if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,4900+320,1)

en1=instance_create(4676,160,oAreaSpawner) with en1
{
spawnX=x-160

MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=1 enemyMax=0 
enemytype0=oSiren name0="MARINA" pal0=1
}

en2=instance_create(4768,192,oMerman) en2.canmove=0 en2.isIdle=1 en2.alarm[1]=60 en2.anim=70000
en2.idleRange=30 en2.enemyIdle1=spr_merman_idle2


en3=instance_create(4768+24,192,oSiren) en3.canmove=0 en3.isIdle=1 en3.alarm[1]=60 en3.anim=70000
en3.idleRange=30+24 en3.enemyIdle1=spr_siren_idle2 en3.enemyIdle2=spr_siren_attack en3.image_xscale=-1


}
else
timeline_position-=1;