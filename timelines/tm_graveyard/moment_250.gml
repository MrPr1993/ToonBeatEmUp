///@description Zombie Time!

if !instance_exists(en1) and noextraenemies
{
with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunderclap)}
	
en1=instance_create_depth(__view_get( e__VW.XView, 0 )+160-64,224,-1,oEntryBreak)
with en1
{rangeX=0 instaSpawn=1
	spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=0
	}
en2=instance_create_depth(__view_get( e__VW.XView, 0 )+160+64,224,-1,oEntryBreak)
with en2
{rangeX=0 instaSpawn=1
spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 image_xscale=-1 ground=1
	current_pal=0
}
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+160, 200,oZombieMan)
with P2en1 {rangeX=0 instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=0}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+160-32, 200,oZombieMan)
with P2en2 {rangeX=0 instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=0}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+160+32, 200,oZombieMan)
with P2en3 {rangeX=0 instaSpawn=1 spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 ground=1 current_pal=0}}

}
else
{
timeline_position-=1
}
