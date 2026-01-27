if __view_get( e__VW.XView, 0 )>=3638+320
{

en3=instance_create_depth(4576,160-8,-1,oEntryBreak) with en3
{image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun
	shellSpawnSpd=0.1 
		rangeXAdd=-240
	spawnSpeedZ=-7
	xSpeed=0
	ySpeed=2 current_pal=0;
	}
	
en4=instance_create_depth(4720,160-8,-1,oEntryBreak) with en4
{image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1  spawnAnimSpr=spr_ninjabun_shake
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-7 spawnDelay=240
	xSpeed=0 
	ySpeed=2 enemy_switch("KONI",0)
	}
	
if playernumber>=2 {P2en2=instance_create_depth(4720-32,160-8,-1,oEntryBreak) with P2en2
	{
image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1  spawnAnimSpr=spr_ninjabun_shake
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-7 spawnDelay=240
	xSpeed=0 
	ySpeed=2 enemy_switch("KONI",0)
	}
}

if playernumber>=3 {P2en3=instance_create_depth(4720+32,160-8,-1,oEntryBreak) with P2en3
	{
image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1  spawnAnimSpr=spr_ninjabun_shake
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-7 spawnDelay=240
	xSpeed=0 
	ySpeed=2 enemy_switch("KONI",0)
	}
}

if playernumber>=4 {P2en4=instance_create_depth(4720-64,160-8,-1,oEntryBreak) with P2en4
	{
image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1  spawnAnimSpr=spr_ninjabun_shake
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-7 spawnDelay=240
	xSpeed=0 
	ySpeed=2 enemy_switch("KONI",0)
	}
}
	
	en5=instance_create(4630, 165,oFatBurglar) with en5
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30}

}
else
{
timeline_position-=1
}
