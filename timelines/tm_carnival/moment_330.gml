/// @description After Robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}


en1=instance_create(4173,176+32,oEntryBalloon)
en1.rideX=4173
en2=instance_create(4173,176+64,oEntryBalloon)
en2.rideX=4173 en2.image_xscale=-1 en2.horsepal=2 en2.arriveDir=-1
with en5
{horseSpd=-2
	spawnFall=spr_burglarB_jump
	riderSpr=spr_burglarB_balloon
	spawnEnemy=oEnemy1B
}

en3=instance_create_depth(4220,176,-1,oEntryPoseBoard) with en3
{
boardspr=spr_poseboard4
behindspr=spr_burglarB_front
spawnFall=spr_burglarB_front
spawnEnemy=oEnemy1B
spawnEnemy=oEnemy1B rangeX=x-32
}


en4=instance_create(4646,176+48,oEntryBalloon)
en4.rideX=x+160
en4.rideX=4700
with en4
{
	spawnFall=spr_wrestler_hit
	spawnFallIndex=3
	riderSpr=spr_wrestler_balloon
	spawnEnemy=oWrestler
	
	spawnAnim=5;
	spawnAnimFrame=3;
	spawnCanMove=1;
	splashsnd=snd_femenemy8;
	
}

en5=instance_create(4646,176+64,oEntryBalloon)
en5.rideX=x+160 en5.image_xscale=-1 en5.horsepal=2 en5.arriveDir=-1
with en5
{horseSpd=-2
	spawnFall=spr_sneak_jump
	riderSpr=spr_sneak_balloon
	spawnEnemy=oSneak
	enemy_switch("MR.SLINK",0)
}


spawner_followset("WaveSet1",0,5270,1)
}
else
timeline_position-=1

