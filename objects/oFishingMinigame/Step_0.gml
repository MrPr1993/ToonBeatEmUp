/// @description Insert description here
// You can write your code in this editor

depth=oPlayer.depth+1

x+=spdX
y+=spdY
z+=spdZ

if Thrown=0
{image_index=0
spdX=0 spdY=0 spdZ=0
}

if Thrown=1
{image_index=0
if spdZ<4 spdZ+=0.45	

if z>32 {Thrown=2 image_index=1
	
splash=instance_create_depth(x,y,-1,oFlashFX) splash.sprite_index=spr_watersplashsmall	splash.z=32
	
	}

with oEnemySpawner
__view_set( e__VW.XView, 0, oFishingMinigame.x-160 )
}

if Thrown=2
{image_index+=0.1 if image_index=2.9 image_index=1
with oEnemySpawner
__view_set( e__VW.XView, 0, oFishingMinigame.x-160 )	
spdX=lerp(spdX,0,0.1) spdY=lerp(spdY,0,0.1) 
spdZ=0 

if oPlayer.key_charge
{
	if spdX>-2 spdX-=0.1
	if x<248 {with oPlayer canmove=1 Thrown=0}

if oPlayer.key_up
spdY-=0.1
if oPlayer.key_down
spdY+=0.1

	}
		y=clamp(y,164-32,232-32)
}