/// @description /AI settings
function player_ai() {
	if reFocusTime=0
	{
	////////AI SETUP
	if targetEnemy!=-1
	{
	if hurt=0 and canmove=1 and oControl.ignore=0 and targetEnemy.dead=0
	{
	
	targetX=targetEnemy.x
	targetY=targetEnemy.y
	///Try to get to the opponent
	{anim=1
	if x!=clamp(x,targetX-rangeX-16-sprite_get_width(mask_index)/2,targetX+rangeX+16+sprite_get_width(mask_index)/2)
	{if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
		}else 
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}	
		if y!=clamp(y,-targetY/2,targetY/2) {
			//anim=0 key_left=0 key_right=0
		
			}else 
			{
			if place_meeting(x,y,targetEnemy)
			if  x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}	
			if canAttack!=2 {key_left=0 key_right=0 anim=0 canAttack=2 alarm[1]=8}
			}
		}
	if y!=clamp(y,targetY-rangeY/2,targetY+rangeY/2)
	if y!=clamp(y,targetY,targetY)
	{
	if y!=clamp(y,targetY-rangeY-1,targetY+rangeY-1)
	{
		if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}
	}else {key_up=0 key_down=0}
	}
	else {key_up=0 key_down=0}
	
	if key_up=0 and key_down=0 and key_left=0 and key_right=0 if anim=1 anim=0
	}

	if canAttack=2 ///Stop
	 {anim=0 key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0


	 }

	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0 key_jump=0}
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0 key_jump=0}
	}
	else
	reFocusTime-=1

if anim=35 key_attack=1



}
