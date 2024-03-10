/// @description Baddies Appear 1 - Plant Area

if __view_get( e__VW.XView, 0 )>=1680-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200+24,oEntryBreak)
with en1
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0
	
	
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,200+64,oEntryBreak)
with en2
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0
	
	enemy_switch("FAUNA",0)
	}	
	
	


}
else
{
timeline_position-=1
}

