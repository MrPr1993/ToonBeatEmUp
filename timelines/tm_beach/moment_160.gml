if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7440+320,1)

en1=instance_create_depth(6574,128,-1,oEntryFenceJump) with en1
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=6170-128 rideX=6170
			spawnFall=spr_merman_front enemy_switch("ADAM",0)
	moveSpr=spr_merman_move
	spawnEnemy=oMerman}
	
en2=instance_create_depth(6574,128,-1,oEntryFenceJump) with en2
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=6840+128 rideX=6840
			spawnFall=spr_merman_front enemy_switch("ADAM",0)
	moveSpr=spr_merman_move
	spawnEnemy=oMerman}
	
	
}
else
timeline_position-=1;