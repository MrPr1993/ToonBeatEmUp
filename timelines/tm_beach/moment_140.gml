if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,6480+320,1)

en1=instance_create_depth(5918,128,-1,oEntryFenceJump) with en1
{depth=16777213 isDepth=0 ySpeed=2 spawnSpeedZ=-4 rangeXAdd=0 rangeX=0 newSpawn=1 newSpawnX=6280 rideX=6120
			spawnFall=spr_lobster_front image_xscale=-1
	moveSpr=spr_lobster_move
	spawnEnemy=oLobster enemy_modify(spr_lobsterpal,1,"PINCHER",0,0.3,0.3)}

en2=instance_create(__view_get( e__VW.XView, 0)-64,196,oLobster)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}
}
else
timeline_position-=1;