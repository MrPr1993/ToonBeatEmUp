/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=1158
{

en3=instance_create(__view_get( e__VW.XView, 0)-64,156,oEntryFenceJump)
with en3
{depth=16777215 isDepth=0 enemy_modify(spr_ninjapal,6,"MR.DROP",0,0.24,0.24)
			spawnFall=spr_diver_front
	moveSpr=spr_diver_move rideX=1344
	spawnEnemy=oDiver}
	
en4=instance_create(__view_get( e__VW.XView, 0)-128,156,oEntryFenceJump)
with en4
{depth=16777215 isDepth=0 enemy_modify(spr_ninjapal,6,"MR.DROP",0,0.24,0.24)
			spawnFall=spr_diver_front rideX=1400
	moveSpr=spr_diver_move
	spawnEnemy=oDiver}

}
else
timeline_position-=1
