/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if __view_get( e__VW.XView, 0)>rangeX+rangeXAdd if spawned=0 
{
	if newSpawn=0
	x=__view_get( e__VW.XView, 0)-100+xAdd
	else
	x=newSpawnX
	
	spawned=1 visible=1
	
	}

//144

if isDepth=1
depth=-y

z+=zSpeed

if spawned=1
{hspeed=horseSpd*image_xscale image_speed=runSpd sprite_index=moveSpr
if image_xscale=1
if x>rideX {hspeed=0 zSpeed=spawnSpeedZ event_user(0) spawned=2}
if image_xscale=-1
if x<rideX {hspeed=0 zSpeed=spawnSpeedZ event_user(0) spawned=2}
}

if spawned=2
{riderSpr=-1 zSpeed+=0.45/fallSpdSub sprite_index=spawnFall image_index=spawnFallIndex
	if zSpeed>0 {isDepth=1 shadow=shadowSpr x+=xSpeed y+=ySpeed}
	if z>0 if ground=0 {spawned=3 ground=1 zSpeed=0 z=0 shadow=-1 
		
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) if name!=-1 spawn.name=name
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
		if enemyID!=-1 spawn.enemyID=enemyID
		if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
		//with spawnEnemy {hurt=1 canmove=0 animFrame=10 anim=25}
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}
