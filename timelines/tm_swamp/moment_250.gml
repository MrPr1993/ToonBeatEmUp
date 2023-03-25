if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2560,1)


en1=instance_create(__view_get( e__VW.XView, 0)-64,132-8,oEntryFenceJump)
with en1
{depth=16777208 isDepth=0 ySpeed=1.5 rideX=1820 xAdd=100
	spawnFall=spr_burglarB_front
	moveSpr=spr_burglarB_move
	spawnEnemy=oEnemy1B	
}
en2=instance_create(__view_get( e__VW.XView, 0)-64,132-8,oEntryFenceJump)
with en2
{depth=16777208 isDepth=0 ySpeed=1.5 rideX=2000 xAdd=100
	spawnFall=spr_burglar_front
	moveSpr=spr_burglar_move
	spawnEnemy=oEnemy1	
}


}
else
{
timeline_position-=1
}
