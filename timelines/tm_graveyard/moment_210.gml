/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
en4=instance_create(__view_get( e__VW.XView, 0)-64,168,oEntryFenceJump)
with en4
{depth=16777206 isDepth=0 rideX=575 current_pal=0;
		spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak}
en5=instance_create(__view_get( e__VW.XView, 0)-64-100,168,oEntryFenceJump)
with en5
{depth=16777206 isDepth=0 rangeXAdd=48 rideX=720 current_pal=0;
		spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
else
{
timeline_position-=1
}

