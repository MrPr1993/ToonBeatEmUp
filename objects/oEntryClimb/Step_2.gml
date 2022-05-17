/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if trainFX=1
{trainzSet=oTrainFXSpot
trainz=trainzSet.Train1Y*ground
}

if __view_get( e__VW.XView, 0 )>rangeX+rangeXAdd if spawned=0 {spawned=1 visible=1}

z+=zSpeed

if spawned=1
{visible=1 sprite_index=spawnSpr
	
frame_set(0,0,0.2)
frame_set(1,1,0.2)
frame_set(2,2,0.01)
frame_set(3,1,0.1)
frame_set(4,2,0.2)
frame_set(5,3,0.2)
frame_set(6,4,0.2) 
frame_set(7,4,0.2) 
if animFrame>7 {spawned=2 zSpeed=spawnSpeedZ}
}

if spawned=2
{zSpeed+=0.45 sprite_index=spawnFall shadow=shadowSpr image_index=spawnFallIndex
	if z>0 if ground=0 {spawned=3 ground=1 zSpeed=0 z=0 shadow=-1
		
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) if name!=-1 spawn.name=name
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
				if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
	
		//with spawnEnemy {hurt=1 canmove=0 animFrame=10 anim=25}
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}
