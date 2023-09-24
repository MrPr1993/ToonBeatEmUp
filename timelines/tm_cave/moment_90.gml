/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en5=instance_create_depth(__view_get( e__VW.XView, 0)+320-64,180,-1,oEntryBreak)
with en5
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; image_xscale=-1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
	}
	
en6=instance_create_depth(__view_get( e__VW.XView, 0)+320-64,220,-1,oEntryBreak)
with en6
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; image_xscale=-1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
	}

}
else
{
timeline_position-=1
}

