

if hasAI=0
{
if canControl=1
{
if automove=0
{
controller_setup()
}
}}
else
{
if automove=0
{canControl=0
controller_setup()
if instance_exists(oEnemy1)
{
targetEnemy=instance_nearest(x,y,oEnemy1)
if instance_exists(targetEnemy)
{
player_ai()
}
}
}
}
hasAI=0

if oControl.betatest=1
{if keyboard_check_pressed(vk_backspace)
{automoveX=round(mouse_x) automoveY=round(mouse_y) automove=1}
}
	

player_extramovesettings()

if hp<=0
if DeathCryOnce=0
{DeathCryOnce=1 disappearTime=24
PlaySound(DeathCry)
}

//if carry=1
//walkSpeed=1 else walkSpeed=2

if weaponLife<=0 and spawnID!=-1 and canmove=1 and weaponIsGun=0
event_user(1)

if weaponCanFlash=0 weaponFlash=2
else
{
if (weaponLife<=1 and weaponIsGun=0)
or (weaponLife<=0 and weaponIsGun=1)
{
if weaponFlash<=0 weaponFlash=2 else weaponFlash-=0.25
}else weaponFlash=2
}


///Here you set up the time the player will idle
if anim=0 and canmove=1
isIdle+=0.06 else isIdle=0

character_physics()

if hurt=1 and powlock=1 powlock=0
if powlock=0
if pow<5 pow+=0.01 else pow=5

pow=0

if takingitem!=0 takingitem-=1 else takingitem=0

if hurt=1 throwcombo=2
if hurt=1 if carry=1{dropitem=0 event_user(2)}
if hurt=0 specialDead=0

comboHit=selfatk.comboHit
selfatk.targetHeight=targetHeight
selfatk.flashX=flashX
selfatk.flashY=flashY
selfatk.flashZ=flashZ
selfatk.canSuper=canSuper

if canmove=1
{

if -key_left 
{//if x>view_xview[0]+16
if place_free(x-walkSpeed-dashing,y) x-=walkSpeed+dashing if ground image_xscale=-1
if dashing=2 doubledash=0.2}

if -key_left and key_right {key_left=0  key_right=1}

if key_right
{//if x<view_xview[0]+320-16
if place_free(x+walkSpeed+dashing,y) x+=walkSpeed+dashing
  if ground image_xscale=1
if dashing=2 doubledash=0.2}

if -key_left_pressed or key_right_pressed
{
if doubledash=0 doubledash=1 else {
if carry=0 {doubledash=1 dashing=2}}}

if key_up_pressed or -key_down_pressed
{if key_up and dodging=1 {dodgetime=0 dodging=0 dodge=0} if -key_down and dodging=-1 {dodgetime=0 dodging=0 dodge=0}
	
	if dodge=0 {if key_up dodging=-1 else dodging=1 dodge=1 dodgetime=10}else 
	if dodgetime!=0
	{dodge=0 player_dodge()}
}

//	dodge=0
//	dodging=0


if key_up
{if y>__view_get( e__VW.YView, 0 )+8 if dodge=1 if dodging=1 {dodging=0 dodge=0}
if place_free(x,y-walkSpeed) y-=walkSpeedY}

if key_up and key_down {key_up=0 key_down=1}

if key_down
{if y<__view_get( e__VW.YView, 0 )+240-4 if dodge=1 if dodging=-1 {dodging=0 dodge=0}
if place_free(x,y+walkSpeed) y+=walkSpeedY}

if ground
if !key_up and !key_down and !-key_left and !key_right
{if anim!=0 image_index=0 anim=0}
else
{if anim!=1 image_index=0 anim=1}


if (key_attack and key_jump)
or (key_attack and key_jump_hold)
or (key_jump and key_charge)
{
{
if weaponspawn!=-1 or carry=1 anim=24 else event_user(3)
event_user(5)}
}
else
{
if key_punchback
if canmove=1 and ground
{canmove=0 animFrame=0 anim=83}

if key_taunt
if canmove=1 and ground
{canmove=0 animFrame=0 anim=84}


///Attack
if key_attack
{
if !key_jump
event_user(3) else 
{
if ground=1 and carry=0 and weaponspawn=-1 {player_punchback()}
	else
	{
if weaponspawn!=-1 or carry=1 event_user(5) else event_user(3)}
}
}

if key_jump
{
if !key_attack
event_user(6) else 
{
if ground=1 and carry=0 and weaponspawn=-1 {player_punchback()}
else
{
if weaponspawn!=-1 or carry=1 event_user(5) else event_user(6)}
}
}


///Super Attack
if key_super
event_user(8)
if (key_shield and key_jump)
or (key_shield and key_jump_hold)
or (key_jump and key_shield)
event_user(8)
else{
///Special Attack
if key_shield_pressed
{
if !key_jump_hold and ground
event_user(4)
}}

///Grab Enemy
if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+16,y,parEnemy))
or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-16,y,parEnemy))
or (image_xscale=-1 and key_down and dashing=0 and place_meeting(x-16,y,parEnemy))
or (image_xscale=-1 and key_up and dashing=0 and place_meeting(x-16,y,parEnemy))
or (image_xscale=1 and key_down and dashing=0 and place_meeting(x+16,y,parEnemy))
or (image_xscale=1 and key_up and dashing=0 and place_meeting(x+16,y,parEnemy))
{if ground and canmove=1 and carry=0
throw_command(instance_nearest(x,y,oEnemy1),24*image_xscale,0,0,GrabFrame,30,1)
}

}
}


if automove
{
if distance_to_point(automoveX,automoveY)>automoveDist
{doubledash=automoveDash
if x>automoveX {key_right=0; key_left=-1}
else {key_right=1; key_left=0}

if y>automoveY {key_up=1; key_down=0}
else {key_up=0; key_down=1}

if x=clamp(x,automoveX-2,automoveX+2) {x=automoveX key_left=0 key_right=0 image_xscale=automoveFace}
if y=clamp(y,automoveY-2,automoveY+2) {y=automoveY key_up=0 key_down=0}

}else {key_left=0 key_right=0 key_up=0 key_down=0 automove=0 doubledash=0 image_xscale=automoveFace}
}