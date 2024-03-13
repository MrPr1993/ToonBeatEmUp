/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=10
{
animFrame=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<80
{
if targetEnemy.anim!=30 or targetEnemy!=31
anim=12 else {anim=0 alarm[1]=30}}
else
{anim=11}
}

if anim=11 and animFrame=clamp(animFrame,2,7) canbeGrabbed=0 else canbeGrabbed=1

///Rollout/Tackle
if anim=11
{
	if current_pal=6
	{damage=0.25
	 hit=0
	 if animFrame=0
	if sprite_index!=spr_wrestler_airattack
	{
sprite_index=spr_wrestler_airattack 

	 targetX=targetEnemy.x
	 targetY=targetEnemy.y
	 if x<targetX targetX=1 else targetX=-1
 
	 if y!=clamp(y,targetY-8,targetY+8)
	 {if y<targetY targetY=1 else targetY=-1}
	else targetY=0 
	  
	}
	if sprite_index=spr_wrestler_airattack
	{
		MoveType=1
		if animFrame=clamp(animFrame,1,2) if ground {PlaySoundNoStack(snd_swing) PlaySound(snd_hwolf3) z-=2 ground=0 zSpeed=-8}
	if !ground 
	{MoveType=4 animFrame=2.9
	isThrow=0 throwing=0 atkcol_set(7,0,0,1.75,1,64)
	if place_free(x+2*targetX,y) x+=2*image_xscale
	//if place_free(x,y+2*targetY) if y<view_yview[0]+240-2 y+=2*targetY
	if zSpeed>0 z+=0.45
	}

	image_index=animFrame image_speed=0
	if animFrame=clamp(animFrame,2,3) and !ground atk=1 else atk=0
	}
	
	if animFrame>2.5 {if ground if sprite_index!=spr_wrestler_hit {sprite_index=spr_wrestler_hit image_index=21
		PlaySoundNoStack(snd_quakeground) oControl.quakeFXTime=10
		}
	
	if animFrame>3.5 image_index=22
	}



	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else {if ground animFrame+=0.1 if sprite_index=spr_wrestler_airattack and ground { if animFrame=3.9 {oControl.quakeFXTime=10 groundhit_fx()}  animFrame+=0.2}} if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}	
	
	exit;
	}
	

sprite_index=ThrownSpr if animFrame=0 special0=2
frame_set(0,23,0.1) atkcol_set(7,0,0,1.75,1,64)
frame_set(1,22,0.1) if animFrame=clamp(animFrame,2,7) {atk=1 sentflying=4*image_xscale} else {atk=0 sentflying=0}
frame_set(2,14,0.2) MoveType=4 damage=0.25
frame_set(3,13,0.2)
frame_set(4,12,0.2)
frame_set(5,11,0.2) 
frame_set(6,14,0.2) if animFrame>6 if special0!=0 {special0-=1 animFrame=2}
frame_set(7,22,0.1) 
frame_set(8,23,0.1)
if animFrame>8 {atk=0 canmove=1 anim=0}
}

/////Grab Charge
if anim=12
{
	atkcol_set(13*2,0,0,0.85,1,1) damage=0 MoveType=0
animFrame+=0.01 //selfatk.HitSound=-1
if animFrame<0.25 {sprite_index=StandSpr image_index=1}
else
{
if targetEnemy.anim=30 or targetEnemy=31
{canmove=1 anim=0 alarm[0]=60 exit;}
	atk=1 
	sprite_index=MoveSpr image_index+=0.25
if x<targetEnemy.x {image_xscale=1 sentflying=2}
else {image_xscale=-1 sentflying=-2}
if y!=clamp(y,targetEnemy.y-2,targetEnemy.y+2)
if y>targetEnemy.y {if place_free(x,y-1) y-=1}
else {if place_free(x,y+1) y+=1}
}
if animFrame>2 {atk=0 canmove=1 anim=0}
}

if anim=6666 ///Grab Enemy
{
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if animFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_wrestler_grab
if image_index<1
{image_index+=0.05 special1=1 special2=0}
else
image_index+=0.25 if image_index>4 image_index=0 hspeed=0 canmove=0

if image_index=2 {special1=0 ground=0 zSpeed=-14 
	
	PlaySound(snd_jump)

	}
if ground=0 {image_index=2.6 x=clamp(x,__view_get( e__VW.XView, 0 ),__view_get( e__VW.XView, 0 )+320-16) sentflying=-1*image_xscale} else sentflying=0

if targetID!=-1 
{
if ground=1 if image_index=clamp(image_index,2.3,2.9)
{oControl.quakeFXTime=10 PlaySoundNoStack(snd_hitgroundheavy) image_index=3 
	targetID.hp-=0.125 with targetID event_user(11)
	hground=instance_create_depth(targetID.x+targetID.headPosX[6]*targetID.image_xscale,y,depth,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z
	
	}


targetID.y=y targetID.z=z
targetID.GrabFrameExtra+=0.2
if targetID.GrabFrameExtra=3.8
targetID.GrabFrameExtra=0
sentFlying=0 
targetID.anim=31
targetID.hit=2
targetID.hitSource=id
targetID.ground=0 
targetID.atk=0
targetID.hurt=1


if image_index<1
{targetID.x=x+24*image_xscale
targetID.image_index=GrabFrame
targetID.image_xscale=-image_xscale
}
else
{
	if !ground
	{targetID.x=x+32*image_xscale zSpeed+=0.45
	if special1<2 special1+=0.1 
targetID.image_index=3+special1
targetID.image_xscale=image_xscale
	}else targetID.image_index=6
}

targetID.recovery=0


if targetID.key_up_pressed
or targetID.key_down_pressed
or targetID.key_left_pressed
or targetID.key_right_pressed
{grabMax+=1 shaketime=10

if grabMax>4
{
HitType=1 event_user(0) sentflying=-2*image_xscale zSpeed=-2

if targetID!=-1
{
with targetID
{
	animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
	throw_quickrelease() ground=0 zSpeed=-2 sentflying=-1*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
canmove=1 hurt=0 recovery=30}
}
throwing=0 throwcombo=2
targetID=-1
}
}

if image_index>3.5 
{
with targetID
{
animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
throw_quickrelease() ground=0 zSpeed=-8 sentflying=4*image_xscale hurt=1 hitBack=1 animFrame=0 anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
recovery=30}
throwing=0 throwcombo=2
targetID=-1
animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
throw_quickrelease() ground=0 zSpeed=-2 sentflying=-1*image_xscale canmove=1

}
}



if targetID!=-1
{
if targetID.anim!=30 and targetID.anim!=31
{
targetID.ground=0 
targetID=-1

throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
alarm[1]=2
}}



{
///Drag Enemy
if targetID!=-1
{
targetID.targetHeightHit=1 targetID.isGrabbed=1 
with targetID {sprite_index=ThrownSpr event_user(1)}
 targetID.depth=depth+1
}
grabX=48*image_xscale grabY=0 grabZ=0 

atk=0 
animFrame+=0.01 if animFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
if targetID!=-1
with targetID
{recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 animFrame=0 ground=0 zSpeed=-4 sentflying=-2*image_xscale image_index=GrabFrame anim=5 shaketime=10
canmove=0 hurt=1
}throwing=0 animFrame=0 anim=0 canmove=0 throwcombo=2 canmove=1 alarm[0]=60
targetID=-1 }
}


////Forcibly Break Out With Special Attacks
if animFrame<4 and targetID!=-1
{
if targetID.key_right_pressed
or targetID.key_right_pressed
or targetID.key_jump
or targetID.key_attack
animFrame+=0.25

////Instantly use Special
if (targetID.key_shield_pressed or targetID.key_super)
if targetID.pow>4
or targetID.hp>=powhp
{grabZ=0 targetID.z=z
with targetID {anim=0 hurt=0 ground=0 isGrabbed=0

powlock=1 pow=0 
if pow>4 powcheck=1 else if hp>=powhp powcheck=0
canmove=0 targetID=-1 animFrame=0 atk=1
anim=17 throwATK=0
   recovery=60}
targetID=-1
}
}
////Instantly use Super	

}