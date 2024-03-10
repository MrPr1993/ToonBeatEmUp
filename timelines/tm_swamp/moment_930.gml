if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{
with oControl
{
goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7000,1)


en1=instance_create_depth(__view_get( e__VW.XView, 0)+320+64,200-32,-1,oZombieWoman)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=30
	enemy_switch("RIGORA",0)
	}

en2=instance_create_depth(__view_get( e__VW.XView, 0)+320+64,200+32,-1,oZombieMan)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=30
	enemy_switch("MORTI",0)	
	}

en3=instance_create_depth(5375, 166,-1,oEntryBreak)
with en3
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_zombiepal;
	shellSpawnSpd=0.25 spawnSprFX=spr_zombiew_rise hidden=1;
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieWoman
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=2
	enemy_switch("RIGORA",0)
	}
en4=instance_create_depth(5375, 166+64,-1,oEntryBreak)
with en4
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_zombiepal;
	shellSpawnSpd=0.25 spawnSprFX=spr_zombiew_rise hidden=1;
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieWoman
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=2
	enemy_switch("RIGORA",0)
	}

en5=instance_create(6144, 136,oAreaSpawner) with en5
{
spawnX=6144-240 ///768
enemytype0=oZombieMan MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 enemyMax=0 name0="MORTI" hp0=0.15
pal0=2 palS0=spr_zombiepal;
}

en6=instance_create(6336, 136,oAreaSpawner) with en6
{
spawnX=6336-240 ///768
enemytype0=oBeeLady MaxSpawnFrame=0 visible=1 turn0=-1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap

}



en7=instance_create_depth(6770, 166,-1,oEntryBreak)
with en7
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_zombiepal;
	shellSpawnSpd=0.25 spawnSprFX=spr_zombiem_rise hidden=1;
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=2
	enemy_switch("MORTI",0)	
	}
en8=instance_create_depth(6770, 166+64,-1,oEntryBreak)
with en8
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_zombiepal;
	shellSpawnSpd=0.25 spawnSprFX=spr_zombiem_rise hidden=1;
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=2
	enemy_switch("MORTI",0)	
	}


}
else
{
timeline_position-=1
}