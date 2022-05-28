if __view_get( e__VW.XView, 0 )>=3638
{
//en4
enA=instance_create_depth(4020,132,-1,oEntryBreak) with enA
{image_xscale=-1 spawnSprFX=spr_ninjabun_idle1 spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1 
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-8
	xSpeed=0
	ySpeed=1
	enemy_modify(spr_ninjapal,2,"NOUSAGI",0,0.3,0.3)
	}
enB=instance_create_depth(4166,132,-1,oEntryBreak) with enB
{image_xscale=-1 spawnSprFX=spr_ninjabun_desk spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1 
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-8
	xSpeed=0
	ySpeed=2
	enemy_modify(spr_ninjapal,2,"NOUSAGI",0,0.3,0.3)
	} //4326
enC=instance_create_depth(4326,132,-1,oEntryBreak) with enC
{image_xscale=-1 spawnSprFX=spr_ninjabun_idle1 spawnFall=spr_ninjabun_jump canEvent0=0 
	shellSprMax=1.8 spawnEnemy=oNinjaBun hideShadow=1
	shellSpawnSpd=0.1 
		rangeXAdd=-240 isDepth=0 depth=16777212 
	spawnSpeedZ=-8
	xSpeed=0
	ySpeed=2
	}
	enD=instance_create_depth(__view_get( e__VW.XView, 0 )+320+48,180,-1,oSamurai) with enD
	{image_xscale=-1 canAttack=5 alarm[1]=40
	enemy_modify(spr_ninjapal,2,"MUGI",0,0.3,0.3)
		}
	enE=instance_create_depth(__view_get( e__VW.XView, 0 )+320+48,180+48,-1,oSamurai) with enE
	{image_xscale=-1 canAttack=5 alarm[1]=40
		enemy_modify(spr_ninjapal,2,"MUGI",0,0.3,0.3)
		}
en1=instance_create(3984, 165,oEnemy1B) with en1
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30}

en2=instance_create(4288, 165,oSneak) with en2
{canmove=0 isIdle=1 alarm[1]=60 anim=70002 idleRange=30
	enemy_modify(my_pal_sprite,1,"MR. BLAST",0,0.2,0.2)
}


}
else
{
timeline_position-=1
}
