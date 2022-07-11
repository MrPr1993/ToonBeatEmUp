/// @description Insert description here
// You can write your code in this editor

depth=-1000

if buffer!=0 {buffer-=1 if fire=0 firing=100 state=0}
else
{

	
	
if place_meeting(x,y,oPlayer)
if fire=0
fire=1



}

if fire=0 
{
image_index=0 shootbuffer=0
	
if x!=clamp(x,targetEnemy.x-2,targetEnemy.x+2)
{
if targetEnemy.x<x x-=1
else x+=1
}

if y!=clamp(y,targetEnemy.y-2,targetEnemy.y+2)
{
if targetEnemy.y<y y-=1
else y+=1
}
}

if fire=1
{if image_index!=1.75 image_index+=0.25 else image_index=0
	if firing=0
		{
		fire=2 shootbuffer=0
		PlaySound(snd_gun)
		
		}
	else
	firing-=1

}

if fire=2
{image_index=2
	
if shootbuffer!=3
shootbuffer+=1
	
if firing!=10 firing+=1 else {firing=100 fire=0 buffer=100}

}