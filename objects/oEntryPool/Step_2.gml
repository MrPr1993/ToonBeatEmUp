/// @description Insert description here
// You can write your code in this editor
if trainFX=1
{trainzSet=oTrainFXSpot
trainz=trainzSet.Train1Y*ground
}
/// @description Insert description here
// You can write your code in this editor
if __view_get( e__VW.XView, 0 )>rangeX+rangeXAdd if spawned=0 {spawned=1 visible=1}

z+=zSpeed

if spawned=1
{visible=1 sprite_index=spawnFall if canEvent0=1 event_user(0)
	
if 	splashscr!=-1 splashscr();
	
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
		//with spawnEnemy {hurt=1 canmove=0 animFrame=10 anim=25}
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}
