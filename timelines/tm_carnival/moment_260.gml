/// @description Gun part 2
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1778
{

en3=instance_create_depth(1888,192,-1,oEntryClimb) with en3
{rangeX=0 z=-55}
en4=instance_create_depth(1968,192,-1,oEntryClimb) with en4
{rangeX=0 z=-55}

en5=instance_create_depth(__view_get( e__VW.XView, 0 ),232,-1,oEntryBalloon)
en5.rideX=1778+128 en5.horsepal=3
with en5
{horseSpd=2 rangeX=0
	spawnFall=spr_femburglar_jump
	riderSpr=spr_femburglar_balloon
	spawnEnemy=oFemBurglar
}

en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320,232,-1,oEntryBalloon)
en6.rideX=1778-128 en6.image_xscale=-1 en6.horsepal=4 en6.arriveDir=-1
with en6
{horseSpd=-2 rangeX=0
	spawnFall=spr_femburglar_jump
	riderSpr=spr_femburglar_balloon
	spawnEnemy=oFemBurglar
enemy_switch("MS.CHILL",0)
}


en7=instance_create_depth(__view_get( e__VW.XView, 0 )-32,232,-1,oWrestler)
enemy_switch("MS.CRUSH",0)

enG=instance_create(__view_get( e__VW.XView, 0 )+160,240,oGunRange)

}
else
{
timeline_position-=1
}
