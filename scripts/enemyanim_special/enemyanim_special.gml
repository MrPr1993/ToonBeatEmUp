// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemyanim_special(){


///Mr. Burg, Teef, Sneak
/////Standing Idling before turning
if anim=70000
{canmove=0 sprite_index=enemyIdle1
frame_set(0,0,0.1) 
frame_set(1,1,0.1) 
frame_set(1,0,0.1) 
if animFrame>2 animFrame=0

	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{animFrame=0
	if image_xscale=1 and x>targetX {anim=70001 exit;}
	if image_xscale=-1 and x<targetX {anim=70001 exit;}
	{isIdle=0 canmove=1 alarm[1]=2 canAttack=choose(0,1,2,3,4) }
	}
}
/////Turning
if anim=70001
{sprite_index=enemyIdle2 animFrame+=0.1
if animFrame>0.5 {isIdle=0 canmove=1 alarm[1]=2 canAttack=choose(0,1,2,3,4) }
}

/////Sitting
if anim=70005
{sprite_index=enemyIdle2 animFrame+=0.1
if animFrame>0.5 {isIdle=0 canmove=1 alarm[1]=2 canAttack=choose(0,1,2,3,4) }
}
}