/// @description Insert description here
// You can write your code in this editor

oControl.nopleasewait=0;

if oControl.betatest
{
if keyboard_check_pressed(ord("P"))
{
global.FishData=0
global.FishData[20]=0;
}

}

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

var _fishdist=240+x;


with oPlayer
{
var _fishdist=oFishingMinigame.x-240;
if _fishdist<=100-240 var _fishget=fish_choose(0,1)
else if _fishdist<=200-240 var _fishget=fish_choose(0,1,2)
else if _fishdist<=300-240 var _fishget=fish_choose(0,1,2,3)
else if _fishdist<=400-240 var _fishget=fish_choose(0,1,2,4)
else if _fishdist<=500-240 var _fishget=fish_choose(1,2,3,4,5)
else if _fishdist<=600-240 var _fishget=fish_choose(1,2,3,4,5,6)
else if _fishdist<=700-240 var _fishget=fish_choose(1,2,3,4,5,6,7)
else if _fishdist<=800-240 var _fishget=fish_choose(3,4,5,6,7,8,9)
else if _fishdist<=900-240 var _fishget=fish_choose(3,4,5,6,7,8,10)
else var _fishget=fish_choose(5,6,7,8,10)

specialtimes[2]=_fishget
}



if z>32 {Thrown=2 image_index=1
		if x<248 {with oPlayer canmove=1 Thrown=0 exit;}
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

if playerNO=1 oControl.altresult2a=altresult2
if playerNO=2 oControl.altresult2b=altresult2
if playerNO=3 oControl.altresult2c=altresult2
if playerNO=4 oControl.altresult2d=altresult2