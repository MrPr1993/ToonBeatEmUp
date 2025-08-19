if __view_get( e__VW.XView, 0 )>=8680-2
{
en10=instance_create_depth(8734, 190,-1,oEntryBreak)
with en10
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; current_pal=0;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 
	}
	
en11=instance_create_depth(8734, 229,-1,oEntryBreak)
with en11
{instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 my_pal_sprite=spr_plantpal;
	shellSpawnSpd=0.25 spawnSprFX=spr_plant_rise hidden=1; current_pal=0;
	spawnFall=spr_plant_stand	spawnEnemy=oPlant
	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
	}

//8848
en12=instance_create(8848, 190,oAreaSpawner) with en12
{
spawnX=0 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=mask_none
turn0=-1 

enemytype0=oZombieMan  turn0=-1 name0="MORTI" hp0=0.15 pal0=2 palS0=spr_zombiepal;
enemytype1=oZombieWoman turn1=-1 name1="RIGORA" hp1=0.15 pal1=2 palS1=spr_zombiepal;
enemytype2=oBeeLady turn2=-1
enemyMax=2
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178,oZombieWoman)
with P2en1 {enemy_switch("RIGORA",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178+32,oZombieWoman)
with P2en2 {enemy_switch("RIGORA",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178+64,oZombieWoman)
with P2en3 {enemy_switch("RIGORA",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}