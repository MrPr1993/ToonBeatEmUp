/// @description Treasure Room
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,9000,1)

bgc=layer_background_get_id(layer_get_id("BG"));
layer_background_change(bgc,bg_sky2)

en1=instance_create_depth(7774,164,-1,oEntryFenceJump) with en1
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=7774-200 newSpawn=1 newSpawnX=7774-240 rideX=7774
}
en2=instance_create_depth(8030,164,-1,oEntryFenceJump) with en2
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=8030-200 newSpawn=1 newSpawnX=8030-240 rideX=8030
}
en3=instance_create_depth(8030+160,164,-1,oEntryFenceJump) with en3
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=8030-200+160 newSpawn=1 newSpawnX=8030-240+160 rideX=8030+160
}

}
else
timeline_position-=1;