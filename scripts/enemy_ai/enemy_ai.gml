/// @description /AI settings
function enemy_ai() {
	if reFocusTime=0
	{
	if targetEnemy=-1
	if oPlayer.dead=0
	targetEnemy=oPlayer
	////////AI SETUP
	{		if leaveMode=1 
		
		{if (canAttack!=7 and canAttack!=8) { canAttack=8}
		if hurt=1 canAttack=8
		}
if leaveMode=1 or leaveMode=2
{if canmove=1
		{
			
	if canAttack=7 ////Run On-Screen
	if leaveMode=1 or leaveMode=2
	{RunAnimRecharge=1
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
		anim=1 dashing=2 doubledash=0.2 RunAnimRecharge=1 
	key_up=0 key_down=0
	}
	
	if canAttack=8 ////Run Away
	if leaveMode=1 or leaveMode=2
	{if leaveMode=2 {leaveMode=0 canAttack=choose(1,2) alarm[1]=2 exit;}
	image_xscale=leaveDir RunAnimRecharge=1
	if x!=clamp(x,oControl.camX-sprite_get_width(mask_index)/2,oControl.camX+320+sprite_get_width(mask_index)/2)
instance_destroy()
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
	anim=1 dashing=2 doubledash=0.2 RunAnimRecharge=1
	if leaveAnim!=-1 {canmove=0 AnimFrame=0 anim=leaveAnim}
	key_up=0 key_down=0
	}}
	}
else	
	if targetEnemy!=-1
	{
	if instance_exists(targetEnemy)
	{
	targetX=targetEnemy.x
	targetY=targetEnemy.y
	} else {
	if instance_number(oEnemy1)!=1
	fight_target(oEnemy1)
	else {targetEnemy=-1 exit;}
	}


	if hurt=0 and canmove=1 and oControl.ignore=0 and targetEnemy.dead=0
	{
	{
	thrownDMG=0

	///Set up who they're targeting to


	y=clamp(y,0,__view_get( e__VW.YView, 0 )+240)

	////Dash if off-screen
	var checkRun= x<__view_get( e__VW.XView, 0 )-64 or x>__view_get( e__VW.XView, 0 )+320+64
	or canAttack=5
	or distance_to_object(targetEnemy)>90
	if checkRun
	{dashing=2*canRun doubledash=0.2*canRun RunAnimRecharge=1}
	else
	{dashing=0 doubledash=0 RunAnimRecharge-=0.1}

	if canAttack=0 ///Stand back from opponent
	{anim=1
	{dashing=0 doubledash=0}

	if x=clamp(x,targetX-rangeX-8-sprite_get_width(mask_index)/2,targetX+rangeX+8+sprite_get_width(mask_index)/2)
	{if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}

	if y!=clamp(y,targetY-rangeY/2,targetY+rangeY/2)
	if y!=clamp(y,targetY,targetY)
	{
		if y!=clamp(y,targetY-rangeY,targetY+rangeY)
	{if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}
	

		if image_xscale=1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	
	}
	else {key_up=0 key_down=0}
	}
	else {key_up=0 key_down=0}
	}

	if canAttack=1 ///Try to get to the opponent
	{anim=1
	if x!=clamp(x,targetX-rangeX-8-sprite_get_width(mask_index)/2,targetX+rangeX+8+sprite_get_width(mask_index)/2)
	{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
		}else 
		{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}	
		if y!=clamp(y,-targetY/2,targetY/2) {
			//anim=0 key_left=0 key_right=0
		
			}else 
			{
			if place_meeting(x,y,targetEnemy)
			if image_xscale=1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}	
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

 
	 if x<__view_get( e__VW.XView, 0 )+16 {canAttack=1}
	  if x>__view_get( e__VW.XView, 0 )+320-16 {canAttack=1}
	 }



	 if canAttack=3 ///Forwards
	{
	{if image_xscale=-1 {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}
	anim=1
	if y!=clamp(y,targetY-rangeY,targetY+rangeY)
	if y!=clamp(y,targetY,targetY)
	{if y>targetY {key_up=0 key_down=0} else {key_down=0 key_up=0}}
	else {key_up=0 key_down=0}
	}
	}

	 if canAttack=4 ///Go Forwards
	if y=clamp(y,targetY-1,targetY+1)
	{
	if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	}

	 if canAttack=5 ///Move On-Screen
	{anim=1
	{if image_xscale=-1 {key_left=-1 key_right=0} else {key_right=1 key_left=0}}
	{key_up=0 key_down=0}
	}

	if canAttack=6 or canAttack=60 ///Stand Still until player gets close
	{if canAttack=6 anim=0 if canAttack=60 anim=1
	{dashing=0 doubledash=0}
	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{isIdle=0 alarm[1]=2 canAttack=choose(0,1,2,3,4)}
	}
	
	if canAttack=0 or canAttack=1 or canAttack=3 or canAttack=4  ////Move apart from other enemies
	{
	var closeally=instance_nearest(x,y,oEnemy1)
	if instance_exists(closeally) if place_meeting(x,y,closeally)
	{if closeally.y<y {key_up=choose(1,0)} if closeally.y>y {key_down=choose(1,0)}}
	}
	
	if canAttack=1
	if x=clamp(x,targetX-32,targetX+32) if canAttack!=0 canAttack=0
	//if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}
	
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	
	}
	
	}
	else
	reFocusTime-=1





}
