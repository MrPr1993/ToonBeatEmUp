/// @description After them
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2560,1)


enA=instance_create_depth(1698,132,-1,oEntryBreak) with enA
{image_xscale=-1 spawnSprFX=spr_ninjabun_idle1 spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1 
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-8
	xSpeed=0
	ySpeed=1
	}
enB=instance_create(1664, 165,oEnemy1) with enB
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30+2 }
enC=instance_create(1664+64, 165,oSwing) with enC
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30+64 image_xscale=-1 }

}
else
timeline_position-=1

