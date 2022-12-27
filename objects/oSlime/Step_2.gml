enemy_endstep()
throw_step()

 height=100
canbeGrabbed=1

overwriteHitAir=1
	overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1


if DeathCryOnce=0 hasBounce=0 else hasBounce=1

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


	image_speed=0 animFrame=clamp(animFrame,3,5)
	animFrame+=0.1
	//Land on ground
	if ground 
	{
	if (DeathCryOnce=0 and (prevanim!=8 or prevanim!=9))
	{animFrame=0 anim=60 key_jump_hold=0 exit;}///Break out of fall

	
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
	frame_set(0,9,0.25) if animFrame=1 sprite_index=spr_slime_down
	frame_set(1,4,0.25)
	frame_set(2,3,0.25)
	frame_set(3,2,0.25)
	frame_set(4,1,0.25)
sentflying=lerp(sentflying,0,0.1)
	
	if animFrame>4.9 canmove=1
	}
	

	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150
	anim=12 else anim=11
	}
	//if distance_to_point(targetEnemy.x,targetEnemy.y)>60
	////Slime attack
	if anim=11
	{canbeGrabbed=0 atkcol_set(19,0,-1,1.05,1,130) damage=0.2 MoveType=1
		if animFrame=0 {sprite_index=spr_slime_down specialcheck0=0}
	frame_set(0,0,0.25)
	frame_set(1,1,0.25)
	frame_set(2,2,0.25) if animFrame=clamp(animFrame,2,9) height=0
	frame_set(3,3,0.25)
	frame_set(4,4,0.25) if animFrame=clamp(animFrame,5,8) 
	{
if targetEnemy.y=clamp(targetEnemy.y,y-16,y+16)
{
if targetEnemy.x=clamp(targetEnemy.x,x-16,x+56) and image_xscale=1 animFrame=8
if targetEnemy.x=clamp(targetEnemy.x,x-56,x+16) and image_xscale=-1 animFrame=8		
}


		specialcheck0+=1
		if (specialcheck0>80)
		or (image_xscale=1 and x>targetEnemy.x+64)
		or (image_xscale=-1 and x<targetEnemy.x-64)
		{animFrame=1 anim=60 }
		}
	frame_set(5,5,0.25) 
	frame_set(6,6,0.25) 
	frame_set(7,7,0.25) if animFrame=7.75 animFrame=5
	frame_set(8,3,0.25) 
	if animFrame=clamp(animFrame,5,11) {sentflying=2*image_xscale if animFrame=10 sentflying=16*image_xscale} else sentflying=0
	frame_set(9,2,0.25) if animFrame=10 sprite_index=spr_slime_uppercut
		if animFrame=clamp(animFrame,10,10.9) {atk=1 } else { atk=0 }
		
	frame_set(10,0,0.5)
	frame_set(11,1,0.05) if animFrame=11 sprite_index=spr_slime_down
	
	frame_set(12,0,0.1)	if animFrame>12 canmove=1
	}
	
	if anim=12
	{atkcol_set(64+specialcheck1,0,45,1.75,1,21) if animFrame=0 {specialcheck1=-32 specialcheck2=0}
	sprite_index=spr_slime_punch  damage=0.25 MoveType=1
	frame_set(0,0,0.25) 
	frame_set(1,1,0.25) 
	frame_set(2,2,0.1) 
	frame_set(3,1,0.25) 
	frame_set(4,3,0.5) if animFrame=5 {specialcheck2=8 }
	frame_set(5,4,0.01) if animFrame>5 if animFrame<5.5 {if specialcheck2<12 {specialcheck2+=0.45 atk=1}} else {specialcheck2-=0.9 
		
		if animFrame>5.98 atk=0
		}
	frame_set(6,0,0.25) 
	specialcheck1+=specialcheck2
	frame_set(7,1,0.1) 
	frame_set(8,0,0.1) 
	if animFrame>8.5 canmove=1
	}