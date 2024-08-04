enemy_endstep()
throw_step()

overwriteHitAir=1

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if bub!=-1
if anim!=12 {with bub instance_destroy() bub=-1}

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
	frame_set(7,14,0.5) if AnimFrame=8 sprite_index=spr_siren_shoot
	frame_set(8,0,0) sentflying=lerp(sentflying,0,0.1)

	
	if ground {AnimFrame=10 image_index=10 anim=6}
	}

	///Attacks
if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>60
anim=12
else
anim=11

if current_pal=1 if anim=12 anim=13
}
	
	if anim=11 ///Attack Stand
	{//anim=11 exit;
		hit=0   
	if AnimFrame=0
sprite_index=spr_siren_attack
atkcol_set(37,0,14,2.25,1,64)
	MoveType=1 damage=0.15
	image_index=AnimFrame image_speed=0 if AnimFrame<2 sentflying=lerp(sentflying,-24*image_xscale,0.1) else sentflying=lerp(sentflying,0,0.1)
	 if AnimFrame=clamp(AnimFrame,2,2.5) {atk=1} else {atk=0}
	if AnimFrame=clamp(AnimFrame,0,2)
	AnimFrame+=0.2 else AnimFrame+=0.25 if AnimFrame>7.75 {hurt=0 atk=0 canmove=1 hit=0
	}
	if AnimFrame=2 {PlaySoundNoStack(snd_femenemy5) PlaySoundNoStack(snd_swing)}
	}



///Ranged Attack
if anim=12
{sprite_index=spr_siren_shoot
	//if AnimFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.1)
if AnimFrame=11111
{
	bub=instance_create_depth(x+32*image_xscale,y,depth,oFlashFX)
	bub.z=z-64
	bub.sprite_index=spr_siren_proj1
	bub.image_index=0.1 bub.animEnd=0
	bub.image_speed=0.25
	bub.alarm[0]=9999999
	bub.image_xscale=1
	bub.image_yscale=1
}
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25) if AnimFrame=11
{//with bub instance_destroy() bub=-1
PlaySound(snd_femenemy5) PlaySound(snd_flame)
card=instance_create_depth(x+32*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
card.sprite_index=spr_siren_proj3
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
{card.zSpeed=1 card.zSpeedAdd=-0.1} else card.sidespeedadd=0.1*image_xscale
card.z=z-64 card.image_xscale=image_xscale card.disappearHit=0 card.damage=0.1
}
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)

if AnimFrame>15.75 {canmove=1 atk=0}
}

///mermaid punch
if anim=13
{damage=0.2
if AnimFrame=0 {sprite_index=spr_siren_charge specialtimes[0]=0}
frame_set(0,0,0.1)
frame_set(1,1,0.1) if AnimFrame=2 {PlaySound(snd_femenemy5) PlaySoundNoStack(snd_swing)}
frame_set(2,2+specialtimes[0],0.01) if AnimFrame=clamp(AnimFrame,2,3)
{atk=1 sentflying=4*image_xscale specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0}
if AnimFrame=3 {sprite_index=spr_siren_attack}
frame_set(3,4,0.25)
frame_set(4,3,0.25)
frame_set(5,2,0.25)
frame_set(6,5,0.25)
if AnimFrame>6.5 canmove=1

}