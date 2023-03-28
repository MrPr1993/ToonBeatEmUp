/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if __view_get( e__VW.XView, 0)>rangeX+rangeXAdd 
{
if spawned=0
{
if arriveDir=1
x=__view_get( e__VW.XView, 0)-100+xAdd
if arriveDir=-1
x=__view_get( e__VW.XView, 0)+320+100+xAdd
 spawned=1 visible=1 z=spawnZ
}

}

depth=-y

if spawned=1
{x+=horseSpd image_speed=0.25

	
shadow=shadowSpr z+=arriveZspeed

if z>arriveZMax-arriveAdd{zSpeed=spawnSpeedZ horsespr=sprite_index event_user(0) z+=arriveAdd arriveAdd=0 spawned=2 isDepth=1 hspeed=0 ground=0}

if arriveDir=1
if x>rideX {zSpeed=spawnSpeedZ  horsespr=sprite_index event_user(0) z+=arriveAdd arriveAdd=0 spawned=2 isDepth=1 hspeed=0 ground=0}

if arriveDir=-1
if x<=rideX {zSpeed=spawnSpeedZ  horsespr=sprite_index event_user(0) z+=arriveAdd arriveAdd=0 spawned=2 isDepth=1 hspeed=0 ground=0}

}

if spawned=2
{z+=zSpeed
	if z>arriveZMax ground=1 
	riderSpr=-1 zSpeed+=0.45/fallSpdSub sprite_index=spawnFall shadow=shadowSpr x+=xSpeed y+=ySpeed image_index=spawnFallIndex
	if ground{spawned=3 ground=1 zSpeed=0 z=0 shadow=-1
		
		spawn=instance_create_depth(x,y,-1,spawnEnemy) if name!=-1 spawn.name=name
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal//spawn.zSpeed=-4
		if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
		//with spawnEnemy {hurt=1 canmove=0 animFrame=10 anim=25}
		
		if 	spawnAnim!=-1 {spawn.anim=spawnAnim; spawn.animFrame=spawnAnimFrame; spawn.canmove=spawnCanMove; }
		
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}
