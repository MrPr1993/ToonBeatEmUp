/// @description Baddies Appear 1 - Plant Area

if __view_get( e__VW.XView, 0 )>=1680-2-320
{


	



////
if playernumber>=3 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200,oEntryBreak)
with P2en1
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; spawnFall=spr_plant_stand spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0}}

en1=instance_create(__view_get( e__VW.XView, 0)+320-64,220,oEntryBreak)
with en1
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; spawnFall=spr_plant_stand spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0}

if playernumber>=2 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320-64,240,oEntryBreak)
with P2en2
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; spawnFall=spr_plant_stand spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0}}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,260,oEntryBreak)
with en2
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1;	spawnFall=spr_plant_stand	spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0 enemy_switch("PETI",0)
	}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320-64,280,oEntryBreak)
with P2en3
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; spawnFall=spr_plant_stand spawnEnemy=oPlant image_xscale=-1
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 rangeX=0}}
////	


}
else
{
timeline_position-=1
}

