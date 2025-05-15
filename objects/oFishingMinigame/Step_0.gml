/// @description Insert description here
// You can write your code in this editor

oControl.nopleasewait=0;

if fishout!=3
{
x+=spdX
y+=spdY
z+=spdZ
}
if fishout=0
{depth=oPlayer.depth+1

if Thrown=0
{image_index=0
spdX=0 spdY=0 spdZ=0

fishstr=0
}

if Thrown=1
{image_index=0
if spdZ<4 spdZ+=0.45	

if z>32 {Thrown=2 image_index=1
	 PlaySound(snd_splash1)
flashFX(x,y,z+6,spr_watersplashsmall,0,0.5,10,1,1,c_white,1)
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
}
else{depth=oPlayer.depth-1	imageang=90 
	if fishout!=3
	{
	x=lerp(x,oPlayer.x,0.01)
	y=lerp(y,oPlayer.y+1,0.01)	
	}
if z>0 and spdZ>0 {z=0 spdZ=0} else spdZ+=0.45
}
if fishout=2
{
imageang=0
}
if fishout=3
image_speed=0.25