if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(en11)
and !instance_exists(en12)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,10380,1)

   





en1=instance_create_depth(9064,156,-1,oEntryFenceJump) with en1
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=9064-200 newSpawn=1 newSpawnX=9064-240 rideX=9064
enemy_switch("MR.LAR",0)
}
en2=instance_create_depth(9158,156,-1,oEntryFenceJump) with en2
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=9158-200 newSpawn=1 newSpawnX=9158-240 rideX=9158
enemy_switch("MR.LAR",0)
}
en3=instance_create_depth(9436,156,-1,oEntryFenceJump) with en3
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=9436-200 newSpawn=1 newSpawnX=9436-240 rideX=9436
	spawnFall=spr_burglarB_front	moveSpr=spr_burglarB_run	spawnEnemy=oEnemy1B enemy_switch("MR.LAD",0)
	
	
}

en4=instance_create_depth(9668,156,-1,oEntryFenceJump) with en4
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=9668-200 newSpawn=1 newSpawnX=9668-240 rideX=9668
	spawnFall=spr_burglarB_front	moveSpr=spr_burglarB_run	spawnEnemy=oEnemy1B enemy_switch("MR.LAD",0)
}

en5=instance_create_depth(10000,156,-1,oEntryFenceJump) with en5
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=10000-200 newSpawn=1 newSpawnX=10000-240 rideX=10000

}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oSneak)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.PROWL",0)}	
en7=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oSneak)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.PROWL",0)}


}
else
timeline_position-=1;