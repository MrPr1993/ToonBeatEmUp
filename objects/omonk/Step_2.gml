/// @description Insert description here
// You can write your code in this editor

enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

overwriteHitAir=1

if DeathCryOnce=0 hasBounce=0 else hasBounce=1

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
	frame_set(7,14,0.5) if AnimFrame=8 sprite_index=spr_monk_jump
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)

	
	if ground {AnimFrame=10 image_index=10 anim=6}
	}

if anim=10
{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>80
	anim=12 else anim=11
	
	if current_pal=0
	if anim=11 anim=13
	
	if current_pal=4 if anim=11 anim=choose(11,13)
	
}

if anim=11 ///Attack Stand
{ hit=0  
atkcol_set(35,0,42,1.85,1,22)
sprite_index=AtkSpr MoveType=1 damage=0.2
image_index=AnimFrame image_speed=0 if AnimFrame=2 {PlaySoundNoStack(snd_swing) 
		flashFX(x+40*image_xscale,y+1,z-55,spr_monk_attackfx,0,0.5,30,image_xscale,1,c_white,1)
		fx.hspeed=sentflying+4*image_xscale	
	}
 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0 if AnimFrame==clamp(AnimFrame,2,2.2) sentflying=8*image_xscale else sentflying=0
if AnimFrame=clamp(AnimFrame,0,1.5)
AnimFrame+=0.1 else AnimFrame+=0.1 if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
}}

if anim=12
{sprite_index=spr_monk_attack2
atkcol_set(7,0,12,1.05,1,38)

frame_set(0,0,0.25)
frame_set(1,1,0.05) if AnimFrame=2 {ground=0 zSpeed=-4 sentflying=8*image_xscale AnimFrame=2.1


	
	}
if AnimFrame=2.1 {image_index=2
	atk=1 MoveType=1 damage=0.2
		
	if ground {AnimFrame=3 atk=0}}
frame_set(3,1,0.1)
frame_set(4,0,0.1)
if AnimFrame>4.5 canmove=1
}

if anim=13 ///ORAORAORAORAORARA
{damage=0.02 MoveType=0 
selfatk.NoKnock=1
sprite_index=spr_monk_attack3 targetHeight=choose(0,1,2)
if AnimFrame=0 {specialtimes[0]=0}
if AnimFrame=clamp(AnimFrame,1.9,2.1) {MoveType=1 damage=0.1}
specialtimes[0]+=0.5 if specialtimes[0]=3 specialtimes[0]=0

frame_set(0,0,0.05)
frame_set(1,1+specialtimes[0],0.01) if AnimFrame=clamp(AnimFrame,1,1.9)
{if specialtimes[0]=clamp(specialtimes[0],0,1.5) atk=1 else atk=0
if AnimFrame<1.1 sentflying=2*image_xscale else sentflying=0
if AnimFrame>0.90 selfatk.NoKnock=0
}else if AnimFrame=clamp(AnimFrame,2,2.5) {selfatk.MoveType=1 selfatk.damage=0.1 atk=1} else atk=0
frame_set(2,4,0.05)
frame_set(3,0,0.1)
if AnimFrame>3.5 canmove=1
}

///AI for enemy doing blocks
if canmove=1 and (anim=0 or anim=1)
if distance_to_object(targetEnemy)<48
and (targetEnemy.y=clamp(targetEnemy.y,y-8,y+8))
and (
(image_xscale=1 and x<targetEnemy.x and targetEnemy.image_xscale=-1)
or (image_xscale=-1 and x>targetEnemy.x and targetEnemy.image_xscale=1)
)
{
if targetEnemy.atk=1 if anim!=65
{AnimFrame=0 canmove=0 recovery=0
anim=65 canBlock=1
}
}


///Block
if anim=65
{canBlock=1
sprite_index=spr_monk_block
AnimFrame+=0.1 
if AnimFrame>6 {canmove=1 anim=0 alarm[1]=2}
}

if anim=65 or anim=61
canBlock=1 else canBlock=0

///Block Hit
if anim=61
{canBlock=1 AnimFrame+=0.1 shaketime=30
if AnimFrame<0.5
{
if place_free(x+0.1*-image_xscale,y) x+=0.1*-image_xscale
}
sprite_index=spr_monk_block
if AnimFrame>2 {anim=65}
}