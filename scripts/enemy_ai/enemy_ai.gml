/// @description /AI settings
function enemy_ai() {
	if reFocusTime=0
	{
	if targetEnemy=-1
	if oPlayer.dead=0
	targetEnemy=oPlayer
	////////AI SETUP
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

	if x!=clamp(x,targetX-rangeX-64,targetX+rangeX+64)
	{if x<targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}

	if y!=clamp(y,targetY-rangeY/2,targetY+rangeY/2)
	if y!=clamp(y,targetY,targetY)
	{if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}}
	else {key_up=0 key_down=0}
	}

	if canAttack=1 ///Try to get to the opponent
	{anim=1
	if x!=clamp(x,targetX-rangeX-64,targetX+rangeX+64)
	{if x>targetX {anim=1 key_left=-1 key_right=0} else {anim=1 key_right=1 key_left=0}}

	if y!=clamp(y,targetY-rangeY/2,targetY+rangeY/2)
	if y!=clamp(y,targetY,targetY)
	{if y>targetY {anim=1 key_up=1 key_down=0} else {anim=1 key_down=1 key_up=0}}
	else {key_up=0 key_down=0}
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

	if canAttack=6 ///Stand Still until player gets close
	{anim=0
	{dashing=0 doubledash=0}
	if x=clamp(x,targetX-idleRange,targetX+idleRange)
	{isIdle=0 alarm[1]=2 canAttack=choose(0,1,2,3,4)}
	}
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	}
	else {key_left=0 key_right=0 key_up=0 key_down=0 key_attack=0}
	}
	else
	reFocusTime-=1





}
