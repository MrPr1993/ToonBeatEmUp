/// @description Insert description here
// You can write your code in this editor

if shaketime!=0
{shaketime-=1
if shakefrom=-1
{if shake!=-1 shake-=1 else shake=1}
else
{if shake!=1 shake+=1 else shake=-1}
}
else shake=0

if recovery!=0 recovery-=1

if destroyed=1
{z+=zSpeed zSpeed+=0.45
if z>16 {zSpeed=0 z=16
	if results=0
	{results=1 PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10
	alarm[1]=60
	}
	}
}

if npcDriverOn=1
{npcDriverTimer+=1

if npcDriverTimer=80
{driver.hspeed=0 with driver
	{shaketime=10 sprite_index=spr_burglar_hit image_speed=0 image_index=24}
}
	
	if npcDriverTimer=160 with driver
	{sprite_index=spr_burglar_cry image_speed=0.25}

}

