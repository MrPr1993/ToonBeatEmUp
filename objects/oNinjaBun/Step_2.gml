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
	{animFrame=0 canmove=0 specialcheck0=0
	
if distance_to_point(targetEnemy.x,targetEnemy.y)>50
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
	anim=11 else anim=12
}
	else
	anim=13
	}
	
if anim=11 ///Card Throw
{if animFrame=0 prevanim=0 sprite_index=spr_ninjabun_card
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.1)
 if animFrame=3
 if prevanim!=61
{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.z=z-56 card.image_xscale=image_xscale
	}
	else
	{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.z=z-56 card.image_xscale=image_xscale card.sprite_index=spr_cigarproj card.HitSound=snd_hit card.HitSpark=spr_hitflash
	}
	
frame_set(3,3,0.5)
frame_set(4,4,0.1)
frame_set(5,0,0.25) if animFrame=6 {animFrame=0 canmove=1 atk=0 anim=0}
}

if anim=12 //Card Throw Air
{
if animFrame=0 {sprite_index=spr_ninjabun_hit }
frame_set(0,10,0.5) if animFrame=1 {zLock=z-148 ground=0 zSpeed=-4}
if animFrame=clamp(animFrame,1,22) z=lerp(z,zLock,0.1)
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
	frame_set(18,13,0.25) if animFrame=19 {sprite_index=spr_ninjabun_cardair z+=32}
	frame_set(19,0,0.25) if animFrame=20
	{PlaySoundNoStack(snd_swing2) card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=6*image_xscale
	 card.image_xscale=image_xscale
	card.zSpeed=6 card.sprite_index=spr_ninjabun_cardproj2 card.image_speed=0
	card.z=z-24
	}
	frame_set(20,1,0.5)
	frame_set(21,2,0.1)  if animFrame=22 {sprite_index=spr_ninjabun_jump}
	frame_set(22,0,0.1)
if sprite_index=spr_ninjabun_jump if ground {animFrame=10 image_index=10 anim=6 canmove=1}
}

if anim=13 ///Attack
{

sprite_index=spr_ninjabun_attack MoveType=0
frame_set(0,0,0.25) if animFrame=1 if specialcheck0=2 {animFrame=0 anim=14 exit;}
frame_set(1,1,0.25) if animFrame=2 PlaySoundNoStack(snd_swing) if animFrame=clamp(animFrame,2,3) atk=1 else atk=0
frame_set(2,2,0.25)
frame_set(3,1,0.25)
frame_set(4,0,0.1)
frame_set(5,0,0.1)

	if animFrame>5
	{
	if specialcheck0=2{specialcheck0=3}
	if specialcheck0=1{specialcheck0=2 animFrame=0 anim=13}
	if specialcheck0=1 or specialcheck0=2 animFrame=0
	}


	if animFrame>5 {

	if specialcheck0=3{animFrame=0 anim=14}
	if specialcheck0=1{specialcheck0=2 animFrame=0 anim=13}
	if specialcheck0=0
	{hurt=0 atk=0 canmove=1 hit=0}
	if specialcheck0=1 or specialcheck0=2 animFrame=0

	}

}

if anim=14 ///Attack Kick
{sprite_index=spr_ninjabun_kick MoveType=1
frame_set(0,0,0.1) 
frame_set(1,1,0.25) if animFrame=2 PlaySoundNoStack(snd_swing) if animFrame=clamp(animFrame,2,3) {sentflying=2*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) if animFrame=6 {animFrame=0 canmove=1 atk=0 anim=0}
}

	if anim=5 ///Hit Air - has own unique take to break fall if alive
	{
	atk=0 sprite_index=ThrownSpr
	hurt=1 recovery=120

	recovery=30

	if hitBack=0
	{image_index=animFrame }
	else
	{if hashitBack=1
	image_index=animFrame+13 else image_index=animFrame}


//60


	image_speed=0 animFrame=clamp(animFrame,3,5)
	animFrame+=0.1
	//Land on ground
	if ground 
	{
	if (DeathCryOnce=0 and (prevanim!=8 or prevanim!=9))
	{ground=0 zSpeed=-6 animFrame=0 anim=60 key_jump_hold=0 exit;}///Break out of fall

	
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
 
	 animFrame=6.8 anim=6
 
	///if hitBackFaceDown=1 and hashitBackFaceDown=1
	///{sentflying=-sentflying hitBack=1 hasBounce=1}

	 if hasGroundRoll=1 and groundRoll=1
	 {groundRoll=0 HitType=2 event_user(0)}

 
	 }}
	}
	
	///Instantly Tech From Fall
	if anim=60
	{thrownAtk=0 Throw=0
	if animFrame=0 sprite_index=ThrownSpr
	frame_set(0,11,0.25)
	frame_set(1,12,0.25)
	frame_set(2,13,0.25)
	frame_set(3,14,0.25)
	frame_set(4,11,0.25)
	frame_set(5,12,0.25)
	frame_set(6,13,0.25)
	frame_set(7,14,0.5) if animFrame=8 sprite_index=JumpSpr
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)

	
	if ground {animFrame=10 image_index=10 anim=6}
	}
	
	if anim=61 ///Cigar Girl
{if animFrame=0 sprite_index=spr_ninjabun_cigar MoveType=1 prevanim=61
frame_set(0,0,0)  if animFrame<0.5 if x=clamp(x,targetX-idleRange,targetX+idleRange) animFrame=1
frame_set(1,1,0.1)
frame_set(2,2,0.05) 
frame_set(3,3,0.1) 
frame_set(4,4,0.1) 
frame_set(5,4,0.25) if animFrame>5 {animFrame=3 anim=11}
}
