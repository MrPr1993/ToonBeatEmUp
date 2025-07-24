if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,1556+320,1)

en1=instance_create_depth(974,164,-1,oEntryFenceJump) with en1
{depth=16777138 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=974-200 newSpawn=1 newSpawnX=974-240 rideX=974
}

en2=instance_create_depth(1080,176,-1,oEntryClimb) en2.z=-32 en2.rangeX=1080-200
with en2 {spawnSpr=spr_fatburglar_entry1 spawnFall=spr_fatburglar_front spawnFallIndex=0 spawnEnemy=oFatBurglar}

en3=instance_create_depth(1190,164,-1,oEntryFenceJump) with en3
{depth=16777138 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=1190-200 newSpawn=1 newSpawnX=1190-240 rideX=1190
	spawnFall=spr_burglarB_front
	moveSpr=spr_burglarB_run
	spawnEnemy=oEnemy1B
}

en4=instance_create_depth(1190,164,-1,oEntryFenceJump) with en4
{depth=16777138 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=1190-200 newSpawn=1 newSpawnX=1190-240-64 rideX=1190
	spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak enemy_switch("MR.SLINK",0)
}

en5=instance_create_depth(1364,164,-1,oEntryFenceJump) with en5
{depth=16777138 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=1364-200 newSpawn=1 newSpawnX=1364+240 rideX=1364
	spawnFall=spr_wrestler_front image_xscale=-1
	moveSpr=spr_wrestler_move
	spawnEnemy=oWrestler enemy_switch("MS.CRUSH",0)	
}


en6=instance_create_depth(1496,176,-1,oEntryClimb) en6.z=-48 en6.rangeX=1496-200
en7=instance_create_depth(1624,176,-1,oEntryClimb) en7.z=-48 en7.rangeX=1624-200



}
else
timeline_position-=1;