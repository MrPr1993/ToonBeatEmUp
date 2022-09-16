/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=128
{
en4=instance_create(__view_get( e__VW.XView, 0 ),176+32,oEntryBalloon)
en4.rideX=532 
en5=instance_create(__view_get( e__VW.XView, 0 )+320,176+32,oEntryBalloon)
en5.rideX=532 en5.image_xscale=-1 en5.horsepal=2 en5.arriveDir=-1
with en5
{horseSpd=-2
	spawnFall=spr_burglarB_jump
	riderSpr=spr_burglarB_balloon
	spawnEnemy=oEnemy1B
}

}
else
{
timeline_position-=1
}

