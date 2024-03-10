/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,1477,1)

en1=instance_create_depth(844,140,-1,oEntryFenceJump) with en1
{depth=16777214 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=744 newSpawn=1 newSpawnX=910-128 rideX=910}
en2=instance_create_depth(844+160,140,-1,oEntryFenceJump) with en2
{depth=16777214 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=744 newSpawn=1 newSpawnX=910+160+128 rideX=910+90 image_xscale=-1}

en3=instance_create(1410,164,oFatBurglar)
en3.idleRange=60 with en3 {canmove=0 anim=70002 image_xscale=-1}

en4=instance_create(1410-60,164,oEnemy1)
en4.idleRange=60 with en4 {canmove=0 anim=70002 image_xscale=1}

en5=instance_create_depth(1140,176,-1,oEntryJump) with en5
{ rangeX=x-48 rangeXAdd=0 spawnFall=spr_burglarB_jump spawnEnemy=oEnemy1B}
en6=instance_create_depth(1140,176+48,-1,oEntryJump) with en6
{enemy_switch("MR.SLINK",0) rangeX=x-48 rangeXAdd=0 spawnFall=spr_sneak_move spawnEnemy=oSneak}

}
else
timeline_position-=1

