/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=3280-2-320
{
en6=instance_create_depth(__view_get( e__VW.XView, 0)+320-128,180,-1,oEntryBreak)
with en6
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; image_xscale=-1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 spawnX=0 
	}
	
en7=instance_create_depth(__view_get( e__VW.XView, 0)+320-128,220,-1,oEntryBreak)
with en7
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; image_xscale=-1;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 spawnX=0  enemy_switch("PETI",0)
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-64, 240,oSkeleton)
with P2en1 {canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+64, 240,oSkeleton)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+64, 260,oSkeleton)
with P2en3 {canAttack=5 alarm[1]=60 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

