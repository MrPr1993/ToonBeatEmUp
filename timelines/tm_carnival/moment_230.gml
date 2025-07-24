/// @description Plane 
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
//and !instance_exists(en5)
//and !instance_exists(en6)
//and !instance_exists(en7)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,1158+320,1)

oGunRange.away=1

en1=instance_create(928+128,176+32,oEntryBalloon)
en1.rideX=928+128 en1.horseSpd=0

en2=instance_create(928+128,176+32+64,oEntryBalloon)
en2.rideX=928+128 en2.horseSpd=0

en3=instance_create_depth(1104,176,-1,oEntryPoseBoard) with en3 {rangeX=x-32 enemy_switch("MR.LAR",0)}


en4=instance_create_depth(1184,176,-1,oEntryPoseBoard) with en4
{
boardspr=spr_poseboard2
behindspr=spr_burglarB_front
spawnFall=spr_burglarB_front
spawnEnemy=oEnemy1B rangeX=x-32
}


}
else
timeline_position-=1

