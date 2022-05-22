/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2238
{
en4=instance_create(2310, 150,oEntryFenceJump)
with en4
{depth=16777215 isDepth=0 rideX=2310+160 xAdd=0
	spawnFall=spr_ninjabun_jump
	moveSpr=spr_ninjabun_run rangeX=0 rangeXAdd=0
	spawnEnemy=oNinjaBun}	

en5=instance_create(__view_get( e__VW.XView, 0 )+320+48,224,oSamurai)
with en5
{canAttack=3 alarm[1]=60 image_xscale=-1
}
}
else
{
timeline_position-=1
}

