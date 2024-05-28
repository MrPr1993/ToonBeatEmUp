/// @description Insert description here
// You can write your code in this editor
/// @description Attack
if ContinueMode=0
{
ai_actions() {	alarmCheck1=alarm[1]
	if canAttack!=6
	alarm[1]=round(choose(60,70,80,90))
	else {canAttack=6 exit;}


	if canmove=1 and  act=1 and canAttack!=6 and canGrab=0 and oControl.ignore=0
	{
	canAttack=choose(2,3)

	if y=clamp(y,targetY-1,targetY+1)
	canAttack=4

	if targetX>x image_xscale=1 else image_xscale=-1

	if canAttack=0 {

	canAttack=choose(2,3)

	} else 

	canAttack=choose(1,2)

	AIchoose=choose(0,1)

	AIchoose=0

	if hurt=0 and targetEnemy.ignore=0 and (targetEnemy.hurt=0 or (targetEnemy.anim=30 or targetEnemy.anim=31 ))
	{
	if x=clamp(x,targetX-rangeAtk,targetX+rangeAtk)
	if y=clamp(y,targetY-rangeAtk*0.1,targetY+rangeAtk*0.1)
	{
	///Attack
	if x>targetX image_xscale=-1 else image_xscale=1

	if x<__view_get( e__VW.XView, 0 )+16 {key_right=1 key_left=0}
	if x>__view_get( e__VW.XView, 0 )+320-16 {key_left=-1 key_right=0}




	if AIchoose=1 
	if ground or atkAir=1
	{
	ground=0
	zSpeed=-16
	}

	if ground or atkAir=1
	{
	if x<__view_get( e__VW.XView, 0 )+16 {key_right=1 key_left=0}
	if x>__view_get( e__VW.XView, 0 )+320-16 {key_left=-1 key_right=0}
	///
	if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+range,y,targetEnemy))
	or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-range,y,targetEnemy))
	{
	///Stand Attack
	if (x>__view_get( e__VW.XView, 0 )-sprite_get_width(mask_index)/2 and x<__view_get( e__VW.XView, 0 )+320+sprite_get_width(mask_index)/2)
	{canmove=0 AnimFrame=0
	image_index=0 anim=10} else alarm[1]=2
	}
	else
	{
	if (x>__view_get( e__VW.XView, 0 )-sprite_get_width(mask_index)/2 and x<__view_get( e__VW.XView, 0 )+320+sprite_get_width(mask_index)/2)
	{canmove=0 AnimFrame=0
	image_index=0 anim=10} else alarm[1]=2
	}

	}
	///else {anim=15 sentflying=2 zSpeed=-4}
	with selfatk
	{
	alarm[0]=4
	}
	///
	}
	else canAttack=0
	}
	if alarmCheck1>80 choose(canAttack=0,1)

	}



}
}