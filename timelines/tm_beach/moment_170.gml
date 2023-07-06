/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=7440-2-320+320
{
en5=instance_create_depth(7352,128,-1,oEntryFenceJump) with en5
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=7684-128 rideX=7540
			spawnFall=spr_lobster_front
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster
	}
en6=instance_create_depth(7352,128,-1,oEntryFenceJump) with en6
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=7684-256 rideX=7540
			spawnFall=spr_lobster_front
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster enemy_modify(spr_lobsterpal,1,"PINCHER",0,0.3,0.3)
	}
en7=instance_create_depth(7684,128,-1,oEntryFenceJump) with en7
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=7684+128 rideX=7540
			spawnFall=spr_lobster_front image_xscale=-1
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster
	}
	
	

}
else
{
timeline_position-=1
}

