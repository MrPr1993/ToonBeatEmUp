/// @description Stage Starting
spawner_followset("WaveSet1",0,692+160,1)


en1=instance_create_depth(234+32,196,-1,oNinjaBun) with en1
{anim=61 canmove=0 image_xscale=-1}

en2=instance_create_depth(534,160,-1,oEntryBreak) with en2
{image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun
	shellSpawnSpd=0.1 
		rangeXAdd=-240
	spawnSpeedZ=-8
	xSpeed=0
	ySpeed=0.5
	}
