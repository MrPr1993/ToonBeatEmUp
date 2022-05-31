/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
en4=instance_create(__view_get( e__VW.XView, 0)-64,168,oEntryFenceJump)
with en4
{depth=16777206 isDepth=0 rideX=575
		spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak}
en5=instance_create(__view_get( e__VW.XView, 0)-64-100,168,oEntryFenceJump)
with en5
{depth=16777206 isDepth=0 rangeXAdd=48 rideX=720
		spawnFall=spr_sneak_front
	moveSpr=spr_sneak_move
	spawnEnemy=oSneak}


}
else
{
timeline_position-=1
}

