// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyanim_special(){


///Mr. Burg, Teef, Sneak
/////Standing Idling before turning
if anim=70000
{canmove=0 sprite_index=enemyIdle1 isIdle=0
frame_set(0,0,0.1) 
frame_set(1,1,0.1) 
frame_set(2,0,0.1) 
if AnimFrame>2 AnimFrame=0

	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{AnimFrame=0
	if image_xscale=1 and x>targetX {AnimFrame=0 anim=70001 exit;}
	if image_xscale=-1 and x<targetX {AnimFrame=0 anim=70001 exit;}
	{isIdle=0 canmove=1 alarm[1]=2 canAttack=choose(0,1,2,3,4) }
	}
}
/////Turning-Getting Up
if anim=70001
{sprite_index=enemyIdle2 AnimFrame+=0.1 image_index=enemyIdle2Ind isIdle=0 canmove=0
if AnimFrame>0.5 {isIdle=0 canmove=1 alarm[1]=2 canAttack=choose(0,1,2,3,4) }
}

/////Facing Back
if anim=70002
{canmove=0 sprite_index=enemyIdle3 isIdle=0
image_index+=enemyIdle3Spd
	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{AnimFrame=0 anim=70001;
	if x>targetX image_xscale=-1 else image_xscale=1	
	}
}

/////Sitting
if anim=70005
{sprite_index=enemyIdle2 AnimFrame+=0.1
if AnimFrame>0.5 {isIdle=0 canmove=1 alarm[1]=2 canAttack=choose(0,1,2,3,4) }
}
}