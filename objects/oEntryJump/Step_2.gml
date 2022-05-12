/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if __view_get( e__VW.XView, 0 )>x+rangeXAdd if spawned=0 {spawned=1 visible=1}

z+=zSpeed

if spawned=1
{spawned=2 zSpeed=spawnSpeedZ z=zAppear
}

if spawned=2
{zSpeed+=0.45 sprite_index=spawnFall shadow=shadowSpr image_index=spawnFallIndex
	if z>0 if ground=0 {spawned=3 ground=1 zSpeed=0 z=0 shadow=-1
		
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) spawn.name=spawnName
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
		//with spawnEnemy {hurt=1 canmove=0 animFrame=10 anim=25}
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}
