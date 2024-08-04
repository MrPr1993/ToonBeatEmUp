/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

	///This overwrites the above's moves
overwriteHitAir=1
overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if DeathCryOnce=0 hasBounce=0 else hasBounce=1

	///Attacks
	if anim=10 ///Attack Stand
	{AnimFrame=0 canmove=0 specialcheck0=0
	
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
{anim=11 
	if current_pal=0
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>100
	anim=11 
	else anim=12
	}
	if current_pal=2 or current_pal=3
	anim=65
	
	if current_pal=4 anim=choose(65,9912)
	
		if current_pal=2
		{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>100
	anim=choose(11,65)
	else anim=choose(12,65)		
		}
}
	else
	anim=13
	}
	
if anim=11 ///Card Throw
{
if current_pal=2 ///Bolas
{
sprite_index=spr_ninjabun_bolas	
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.1)
frame_set(3,3,0.25) if AnimFrame=4
{PlaySoundNoStack(snd_swing2)
projectile_create(x+32*image_xscale,y,z-34,32,spr_ninjabun_bolasproj,3*image_xscale,mask_small,spr_hitflash,0.2,1,1,2,-4)

}
frame_set(4,4,0.5)
frame_set(5,5,0.1)
frame_set(6,0,0.25)
if AnimFrame>6.7 {AnimFrame=0 canmove=1 atk=0 anim=0}
exit;
}

if AnimFrame=0 prevanim=0 sprite_index=spr_ninjabun_card
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.1)
 if AnimFrame=3
 if prevanim!=61 and prevanim!=62
{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.z=z-56 card.image_xscale=image_xscale
	}
	else
	{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.z=z-56 card.image_xscale=image_xscale 
	card.sprite_index=spr_cigarproj if prevanim=62 card.sprite_index=spr_ninjadrinks
	card.HitSound=snd_hit card.HitSpark=spr_hitflash
	}
	
frame_set(3,3,0.5)
frame_set(4,4,0.1)
frame_set(5,0,0.25) if AnimFrame=6 {AnimFrame=0 canmove=1 atk=0 anim=0}
}

if anim=12 //Card Throw Air
{
if AnimFrame=0 {sprite_index=spr_ninjabun_hit }
frame_set(0,10,0.5) if AnimFrame=1 {zLock=z-148 ground=0 zSpeed=-4}
if AnimFrame=clamp(AnimFrame,1,22) z=lerp(z,zLock,0.1)
	frame_set(1,14,0.1)
	frame_set(2,13,0.25)
	frame_set(3,12,0.25)
	frame_set(4,11,0.25)
	frame_set(5,14,0.25)
	frame_set(6,13,0.25)
	frame_set(7,12,0.25)
	frame_set(8,11,0.25)
	frame_set(9,14,0.25)
	frame_set(10,13,0.25)
	frame_set(11,12,0.25)
	frame_set(12,11,0.25)
	frame_set(13,14,0.25)
	frame_set(14,13,0.25)
	frame_set(15,12,0.25)
	frame_set(16,11,0.25)
	frame_set(17,12,0.25)
	frame_set(18,13,0.25) if AnimFrame=19 {sprite_index=spr_ninjabun_cardair z+=32}
	frame_set(19,0,0.25) if AnimFrame=20
	{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=6*image_xscale
	 card.image_xscale=image_xscale
	card.zSpeed=6 card.sprite_index=spr_ninjabun_cardproj2 card.image_speed=0
	card.z=z-24
	}
	frame_set(20,1,0.5)
	frame_set(21,2,0.1)  if AnimFrame=22 {sprite_index=spr_ninjabun_jump}
	frame_set(22,0,0.1)
if sprite_index=spr_ninjabun_jump if ground {AnimFrame=10 image_index=10 anim=6 canmove=1}
}

if anim=13 ///Attack
{

sprite_index=spr_ninjabun_attack MoveType=0
frame_set(0,0,0.25) if AnimFrame=1 if specialcheck0=2 {AnimFrame=0 anim=14 exit;}
frame_set(1,1,0.25) if AnimFrame=2 PlaySoundNoStack(snd_swing) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else atk=0
frame_set(2,2,0.25)
frame_set(3,1,0.25)
frame_set(4,0,0.1)
frame_set(5,0,0.1)

	if AnimFrame>5
	{
	if specialcheck0=2{specialcheck0=3}
	if specialcheck0=1{specialcheck0=2 AnimFrame=0 anim=13}
	if specialcheck0=1 or specialcheck0=2 AnimFrame=0
	}


	if AnimFrame>5 {

	if specialcheck0=3{AnimFrame=0 anim=14}
	if specialcheck0=1{specialcheck0=2 AnimFrame=0 anim=13}
	if specialcheck0=0
	{hurt=0 atk=0 canmove=1 hit=0}
	if specialcheck0=1 or specialcheck0=2 AnimFrame=0

	}

}

if anim=14 ///Attack Kick
{sprite_index=spr_ninjabun_kick MoveType=1
frame_set(0,0,0.1) 
frame_set(1,1,0.25) if AnimFrame=2 PlaySoundNoStack(snd_swing) if AnimFrame=clamp(AnimFrame,2,3) {sentflying=2*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) if AnimFrame=6 {AnimFrame=0 canmove=1 atk=0 anim=0}
}

/////Grab Charge
if anim=9912
{selfatk.spriteFX=mask_none
	atkcol_set(13,0,0,0.85,1,1) damage=0 MoveType=0
AnimFrame+=0.01 //selfatk.HitSound=-1
if AnimFrame<0.25 {sprite_index=StandSpr image_index=1}
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
if AnimFrame>2 {atk=0 canmove=1 anim=0}
}

if anim=6666 ///Grab Enemy
{if AnimFrame=0 sprite_index=spr_ninjabun_grab shaketime=0 shake=0
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {Throw=1 grabMax=0}


frame_set(0,0,0.1) if AnimFrame=1 {ground=0 zSpeed=-64 PlaySound(snd_jump)}
frame_set(1,1,0.1)

frame_set(2,2,0.1) if AnimFrame>2 if !ground {AnimFrame=2.9 zSpeed+=1.1
	if zSpeed>0 image_index=3
	}
else if AnimFrame=3 {
oControl.quakeFXTime=10 PlaySoundNoStack(snd_hitgroundheavy)
	targetID.hp-=0.125 with targetID event_user(11)
	hground=instance_create_depth(targetID.x+targetID.headPosX[6]*targetID.image_xscale,y,depth,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z
}

frame_set(3,4,0.1)
frame_set(4,3,0.1)
if AnimFrame>4.5 {anim=60 ground=0 sentflying=-6*image_xscale zSpeed=-4 exit;}

if targetID!=-1 
{

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

targetID.recovery=0

targetID.depth=depth+1

if AnimFrame<1
{targetID.x=x+32*image_xscale targetID.z=z targetID.image_index=24
	targetID.image_xscale=-image_xscale
	}

if AnimFrame=clamp(AnimFrame,1,2)
{targetID.x=x+32*image_xscale targetID.image_index=24
targetID.z=z targetID.image_xscale=image_xscale} 

if AnimFrame=clamp(AnimFrame,2,3) {targetID.image_index=17
targetID.x=x+32*image_xscale targetID.image_xscale=image_xscale
targetID.z=z}

if AnimFrame=clamp(AnimFrame,2,3) {targetID.image_index=5
targetID.x=x+32*image_xscale targetID.image_xscale=image_xscale
targetID.z=z}

if AnimFrame=clamp(AnimFrame,3,4) {targetID.image_index=6
targetID.x=x+32*image_xscale targetID.image_xscale=image_xscale
targetID.z=z}

if AnimFrame>4
{targetID.z=z-2
with targetID
{thrownAtkDmg=0.1
AnimFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
throw_quickrelease() ground=0 zSpeed=-4 sentflying=-2*image_xscale hurt=1 hitBack=1 AnimFrame=0 anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
recovery=30}
throwing=0 throwcombo=2 shaketime=0 shake=0
targetID=-1

}
}



if targetID!=-1
{
if targetID.anim!=30 and targetID.anim!=31
{
targetID.ground=0 
targetID=-1

throwing=0 throwcombo=2
alarm[1]=2
}}


////Forcibly Break Out With Special Attacks
if AnimFrame<1 and targetID!=-1
{
if targetID.key_right_pressed
or targetID.key_right_pressed
or targetID.key_jump
or targetID.key_attack
AnimFrame+=0.25

////Instantly use Special
if (targetID.key_shield_pressed or targetID.key_super)
if targetID.pow>4
or targetID.hp>=powhp
{grabZ=0 targetID.z=z
with targetID {anim=0 hurt=0 ground=0 isGrabbed=0

powlock=1 pow=0 
if pow>4 powcheck=1 else if hp>=powhp powcheck=0
canmove=0 targetID=-1 AnimFrame=0 atk=1
anim=17 throwATK=0
   recovery=60}
targetID=-1
}
}
////Instantly use Super	


}

	if anim=5 ///Hit Air
	{
	//////If dead get cut
//	if cutDMG=1 and hasCut=0
	if hp<=0 and hasCut=1 and cutDMG!=0
	{AnimFrame=0 anim=1337 exit;}
	atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=120

	recovery=30

	if hitBack=0
	{image_index=AnimFrame }
	else
	{if hashitBack=1
	image_index=AnimFrame+13 else image_index=AnimFrame}




//60


	image_speed=0 AnimFrame=clamp(AnimFrame,3,5)
	AnimFrame+=0.1
	//Land on ground
	if ground 
	{
	if (DeathCryOnce=0 and (prevanim!=8 or prevanim!=9))
	{ground=0 zSpeed=-6 AnimFrame=0 anim=60 key_jump_hold=0 exit;}///Break out of fall

	
		hp-=thrownDMG //The character will take damage if it's a throw attack

	hground=instance_create_depth(x,y,0,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z

	{if HitGround!=-1 PlaySoundNoStack(HitGround)
	if isHeavy=1 oControl.quakeFXTime=10


	if ThrowDamage!=0 
	if isEnemy=1
	{event_user(10) hp-=ThrowDamage hpscan() hud_show() ThrowDamage=0} //If land take damage
	else hp-=ThrowDamage
 
	 recovery=10 
 
	 AnimFrame=6.8 anim=6
 
	///if hitBackFaceDown=1 and hashitBackFaceDown=1
	///{sentflying=-sentflying hitBack=1 hasBounce=1}

	 if hasGroundRoll=1 and groundRoll=1
	 {groundRoll=0 HitType=2 event_user(0)}

 
	 }}
	}
	
	///Instantly Tech From Fall
	if anim=60
	{thrownAtk=0 Throw=0
	if AnimFrame=0 sprite_index=ThrownSpr
	frame_set(0,11,0.25)
	frame_set(1,12,0.25)
	frame_set(2,13,0.25)
	frame_set(3,14,0.25)
	frame_set(4,11,0.25)
	frame_set(5,12,0.25)
	frame_set(6,13,0.25)
	frame_set(7,14,0.5) if AnimFrame=8 sprite_index=JumpSpr
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)

	
	if ground {AnimFrame=10 image_index=10 anim=6}
	}
	
	if anim=61 ///Cigar Girl
{if AnimFrame=0 sprite_index=spr_ninjabun_cigar MoveType=1 prevanim=61
frame_set(0,0,0)  if AnimFrame<0.5 if x=clamp(x,targetX-idleRange,targetX+idleRange) AnimFrame=1
frame_set(1,1,0.1)
frame_set(2,2,0.05) 
frame_set(3,3,0.1) 
frame_set(4,4,0.1) 
frame_set(5,4,0.25) if AnimFrame>5 {AnimFrame=3 anim=11}
}

	if anim=62 ///Drinks Girl
{if AnimFrame=0 sprite_index=spr_ninjabun_drinks MoveType=1 prevanim=62
frame_set(0,0,0)  if AnimFrame<0.5 if x=clamp(x,targetX-idleRange,targetX+idleRange) AnimFrame=1
frame_set(1,1,0.1) if AnimFrame=2 {if x>targetX image_xscale=-1 else image_xscale=1}
frame_set(2,2,0.05) 
frame_set(3,3,0.1) 
frame_set(4,4,0.1) 
frame_set(5,4,0.25) if AnimFrame>5 {AnimFrame=3 anim=11}
}

if anim=65 ///Air Kick
{if AnimFrame=0 sprite_index=spr_ninjabun_airkick atkcol_set(28,0,10,1.45,1,29) MoveType=1
frame_set(0,0,0.05)
if AnimFrame=1 {image_index=1 sentflying=3*image_xscale PlaySoundNoStack(snd_swing) ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if AnimFrame>1.5 if ground {AnimFrame+=0.1 sprite_index=ThrownSpr image_index=10 sentflying=0 atk=0} else {sprite_index=spr_ninjabun_airkick sentflying=3*image_xscale atk=1}

if AnimFrame>3 and ground {canmove=1}
}
