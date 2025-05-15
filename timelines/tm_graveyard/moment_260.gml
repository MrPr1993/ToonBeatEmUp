/// @description Plane 2
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
with thunder
{sprite_index=spr_whitecol oControl.quakeFXTime=10 image_alpha=1 image_xscale=999999 image_yscale=99999999 isfading=1 PlaySound(snd_thunder)}
	
	
en1=instance_create(__view_get( e__VW.XView, 0 )+160-64,224-32,oEntryBreak)
with en1
{rangeX=0 instaSpawn=1
spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
	current_pal=1 
}
en2=instance_create(__view_get( e__VW.XView, 0 )+160-64,224+32,oEntryBreak)
with en2
{rangeX=0 instaSpawn=1
spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiem_rise
	spawnFall=spr_zombiem_stand	spawnEnemy=oZombieMan	xSpeed=0 ySpeed=0 zSpeed=0 ground=1
current_pal=1 name="ZOMBOBBY" my_pal_sprite=spr_zombiepal

enemy_switch("ZOMBOBBY",0)
}
en3=instance_create(__view_get( e__VW.XView, 0 )+160+64,224,oEntryBreak)
with en3
{rangeX=0 instaSpawn=1
spawnSpeedZ=0 shellSpr=0 shellSprMax=5 isDepth=1 image_xscale=-1
	shellSpawnSpd=0.25	spawnSprFX=spr_zombiew_rise
	spawnFall=spr_zombiew_stand	spawnEnemy=oZombieWoman	xSpeed=0 ySpeed=0 zSpeed=0 ground=1

}
}
else
timeline_position-=1

