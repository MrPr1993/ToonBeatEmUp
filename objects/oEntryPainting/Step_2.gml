/// @description Insert description here
// You can write your code in this editor
if trainFX=1
{trainzSet=oTrainFXSpot
trainz=trainzSet.Train1Y*ground
}
/// @description Insert description here
// You can write your code in this editor
if __view_get( e__VW.XView, 0 )>rangeX+rangeXAdd if spawned=0 {PlaySound(snd_steal) alarm[0]=60 spawned=4 visible=1}

z+=zSpeed

if spawned=1
{visible=1
	shadow=spr_shadow
spawned=2 zSpeed=spawnSpeedZ depth=-y
}

if spawned=2
{zSpeed+=0.45/2 shadow=shadowSpr x+=xSpeed y+=ySpeed 
	if z>0 if ground=0 {spawned=3 ground=1 zSpeed=0 z=0 shadow=-1
		
		spawn=instance_create_depth(x,y+spawnYAdd,-1,spawnEnemy) if name!=-1 spawn.name=name
		spawn.z=z spawn.my_pal_sprite=my_pal_sprite spawn.current_pal=current_pal
		if hp!=-1
		{spawn.hp=hp; spawn.maxhp=maxhp;}
		if isPainting
		{
spawn.frameSpr=frameSpr
spawn.paintingSpr=paintingSpr
		}
		
		//with spawnEnemy {hurt=1 canmove=0 animFrame=10 anim=25}
		
		}
}

if spawned=3
{if !instance_exists(spawn) instance_destroy()
}

if spawned=4
{
if shake=-1 shake=2 else shake-=1
}