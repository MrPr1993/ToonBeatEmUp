if __view_get( e__VW.XView, 0 )>=8680-2
{
en8=instance_create_depth(8734, 190,-1,oEntryBreak)
with en8
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
	}
	
en9=instance_create_depth(8734, 229,-1,oEntryBreak)
with en9
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
	}

//8848
en10=instance_create(2390, 190,oAreaSpawner) with en10
{
spawnX=6144-240 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1 

enemytype0=oBear//  turn0=-1 name0="MORTI" hp0=0.15 pal0=2 palS0=spr_zombiepal;
enemytype1=oBear// turn1=-1 name1="RIGORA" hp1=0.15 pal1=2 palS1=spr_zombiepal;
enemytype2=oHarpy// turn2=-1 name2="RIGORA" hp2=0.15 pal2=2 palS2=spr_zombiepal;
enemyMax=2
}

}
else
{
timeline_position-=1
}