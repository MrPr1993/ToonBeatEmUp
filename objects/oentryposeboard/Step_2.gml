/// @description Insert description here
// You can write your code in this editor
if trainFX=1
{trainzSet=oTrainFXSpot
trainz=trainzSet.Train1Y*ground
}
/// @description Insert description here
// You can write your code in this editor
if __view_get( e__VW.XView, 0 )>rangeX+rangeXAdd //if spawned=0 {spawned=1 visible=1}
if boardact=0
{boardact=1 
behindind=2
}

if boardact=1 
{if boardind<3 boardind+=0.25 else {
	if spawned!=1
	{spawned=1 visible=1 boardact=2
	
	boardded=instance_create_depth(x,y,-1,oFlashFX) with boardded
	{alarm[0]=0 image_speed=0 depth=16777000 hspeed=0 vspeed=0 isDepth=0}
	boardded.sprite_index=boardspr boardded.image_index=3
	boardspr=-1
	boardind=3.1
	}
	}
}

z+=zSpeed

if spawned=1
{visible=1 sprite_index=spawnFall if canEvent0=1 event_user(0)
spawned=2 zSpeed=spawnSpeedZ depth=-y
}

if spawned=2
{zSpeed+=0.45/fallSpdSub sprite_index=spawnFall shadow=shadowSpr x+=xSpeed y+=ySpeed image_index=spawnFallIndex
	if z>0 if ground=0 {spawned=3 ground=1 zSpeed=0 z=0 shadow=-1
		
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) if name!=-1 spawn.name=name
		if enemyID!=-1 spawn.enemyID=enemyID
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
		if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
		//with spawnEnemy {hurt=1 canmove=0 AnimFrame=10 anim=25}
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}
