if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3280,1)

en5=instance_create(2390, 190,oAreaSpawner) with en5
{
spawnX=2390-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 
enemytype0=oBear//  turn0=-1 name0="MORTI" hp0=0.15 pal0=2 palS0=spr_zombiepal;
}

en6=instance_create(2698,224,oFairy) en6.canmove=0 en6.isIdle=1 en6.alarm[1]=60 en6.anim=70000
en6.idleRange=30 en6.enemyIdle1=spr_fairy_idle1

en7=instance_create(2698+24,224,oFairy) en7.canmove=0 en7.isIdle=1 en7.alarm[1]=60 en7.anim=70000
en7.idleRange=30+24 en7.enemyIdle1=spr_fairy_idle2 en7.enemyIdle2=spr_fairy_attack
with en7 enemy_modify(my_pal_sprite,1,"WENDY",0,0.5,0.5)


}
else
timeline_position-=1;