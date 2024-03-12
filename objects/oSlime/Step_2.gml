enemy_endstep()
throw_step()

 height=100
canbeGrabbed=1

overwriteHitAir=1
	overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

if bombRecharge!=0 bombRecharge-=1

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
	
	if anim=12222 ///Slime Launcher
{ hit=0  bombRecharge=choose(320,340,360,380,400)
sprite_index=spr_slime_shoot MoveType=0 damage=0.1
image_index=animFrame image_speed=0

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.1)
if animFrame=4
{PlaySoundNoStack(snd_swing5)
spit=instance_create_depth(x+33*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-70 spit.image_xscale=image_xscale

spit.sprite_index=spr_slime_proj 
spit.my_pal_sprite=my_pal_sprite  spit.current_pal=current_pal
with spit
{MoveType=1 haspal=1
hitflash=spr_slime_proj2
endflash=spr_slime_proj2

hitSnd=snd_hit
}

}
frame_set(4,4,0.25)
frame_set(5,5,0.1)
frame_set(6,1,0.1) if animFrame>6.5 canmove=1
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
	
	if current_pal=1 if anim=11  anim=12222
	
	if anim=11 if current_pal=5 anim=choose(11,12)
	
	
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
	frame_set(9,2,0.25) if animFrame=10 {sprite_index=spr_slime_uppercut
	{if current_pal=3 or current_pal=4 or current_pal=5  {animFrame=0 anim=14}	
	}
	
	
	}
	
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
	
		///Diving Down
	if anim=13
	{sprite_index=spr_slime_entry  //zSpeed=0 
	if ground {image_index+=0.5}
	if image_index>5.5 { animFrame=1 anim=60}
	}
	
	///Slime catch
if anim=14
{damage=0 MoveType=0
sprite_index=spr_slime_catch
atkcol_set(20,0,0,0.85,1,1)
frame_set(0,0,0.25) if animFrame=clamp(animFrame,1,2) atk=1 else atk=0
frame_set(1,1,0.5)
frame_set(2,2,0.1)
frame_set(3,0,0.25)
if animFrame>3.5 canmove=1
}

if anim=6666 ///Grab Enemy
{canBounce=0
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if animFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_slime_grab
if image_index<1
image_index+=0.1
else
image_index+=0.1 if image_index>2 image_index=0 hspeed=0 canmove=0

if image_index=1 PlaySoundNoStack(snd_hit)

if targetID!=-1 
{
targetID.x=x+12*image_xscale
targetID.y=y targetID.z=z-20
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
targetID.image_index+=0.1

targetID.recovery=0

targetID.showmash=1

if targetID.key_up_pressed
or targetID.key_down_pressed
or targetID.key_left_pressed
or targetID.key_right_pressed
{grabMax+=1 shaketime=10

if grabMax>4
{
HitType=1 

 canBounce=0
	hurt=1
	ground=0
	zSpeed=-6
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5

sentflying=-2*image_xscale zSpeed=-2

if targetID!=-1
{
targetID.x=x+24*image_xscale
with targetID
{
animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
throw_quickrelease() ground=0 zSpeed=-2 sentflying=-1*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
canmove=1 hurt=0 recovery=30
}

}
throwing=0 throwcombo=2
targetID=-1
}
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
with targetID {sprite_index=ThrownSpr event_user(1) image_index=GrabFrame}
targetID.image_xscale=-image_xscale targetID.depth=depth+1
}
grabX=12*image_xscale grabY=0 grabZ=z-20 

atk=0 
animFrame+=0.02 if animFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
if targetID!=-1
with targetID
{recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 animFrame=0 ground=0 zSpeed=-4 sentflying=-2*image_xscale image_index=GrabFrame anim=5 shaketime=10
canmove=0 hurt=1
}throwing=0 animFrame=0 anim=0 canmove=0 throwcombo=2 canmove=1 alarm[0]=60
targetID=-1 }


if targetID!=-1
{
if image_index=1 
{
with targetID {hp-=0.04 PlaySound(snd_hit) event_user(11) shaketime=10}
	} //34,67
if image_index<1 targetID.image_index=GrabFrame else targetID.image_index=1
if targetID.hp<0 or targetID.dead=1
{
with targetID
{
	animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
	HitForceReact=-4*image_xscale throw_quickrelease() ground=0 zSpeed=-4 sentflying=-2*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
}
throwing=0 animFrame=0 canmove=1 throwcombo=2 alarm[0]=60
}
}
}


////Forcibly Break Out With Special Attacks
if animFrame>0.1 and targetID!=-1
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