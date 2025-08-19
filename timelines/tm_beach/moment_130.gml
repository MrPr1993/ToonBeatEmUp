/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-160
{
en1=instance_create_depth(5918,128,-1,oEntryFenceJump) with en1
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=6030-128 rideX=6030
			spawnFall=spr_merman_front enemy_switch("ADAM",0)
	moveSpr=spr_merman_move
	spawnEnemy=oMerman}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,150,oMerman)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("ADAM",0)
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+24,oMerman)
with P2en1 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+48,oMerman)
with P2en2 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+72,oMerman)
with P2en3 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////




}
else
{
timeline_position-=1
}

