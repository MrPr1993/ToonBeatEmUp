/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=7440-2-320+320
{
en5=instance_create_depth(7352,128,-1,oEntryFenceJump) with en5
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=7684-400 rideX=7540
			spawnFall=spr_lobster_front current_pal=0; 
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster
	}
en6=instance_create_depth(7352,128,-1,oEntryFenceJump) with en6
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=7684-256 rideX=7540
			spawnFall=spr_lobster_front
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster enemy_switch("PINCHER",0)
	}
en7=instance_create_depth(7684,128,-1,oEntryFenceJump) with en7
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=7684+128 rideX=7540
			spawnFall=spr_lobster_front image_xscale=-1 current_pal=0; 
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster
	}
	
	////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 150,oLobster)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 150+32,oLobster)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 150+64,oLobster)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

