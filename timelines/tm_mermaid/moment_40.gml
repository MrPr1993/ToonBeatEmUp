/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=1158
{

en3=instance_create(__view_get( e__VW.XView, 0)-64,156,oEntryFenceJump)
with en3
{depth=16777215 isDepth=0 enemy_switch("MR.DROP",0)
			spawnFall=spr_diver_front
	moveSpr=spr_diver_move rideX=1344
	spawnEnemy=oDiver}
	
en4=instance_create(__view_get( e__VW.XView, 0)-128,156,oEntryFenceJump)
with en4
{depth=16777215 isDepth=0 enemy_switch("MR.DROP",0)
			spawnFall=spr_diver_front rideX=1400
	moveSpr=spr_diver_move
	spawnEnemy=oDiver}


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oDiver)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200-32,oDiver)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oDiver)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
timeline_position-=1
