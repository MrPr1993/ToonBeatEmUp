/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if current_pal=0
{
	DeathCry=snd_fzombie1//snd_deathcry2
	DamageVoice1=snd_fzombie2
	DamageVoice2=snd_fzombie2
	DamageVoice3=snd_fzombie2
}
if current_pal=1
{
	DeathCry=snd_mzombie1//snd_deathcry2
	DamageVoice1=snd_mzombie2
	DamageVoice2=snd_mzombie2
	DamageVoice3=snd_mzombie2
}

	///Attacks
if anim=10
{
AnimFrame=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<60
{
anim=11
}
else
{
if current_pal=0
anim=13
else
anim=12
}
}
	
	if anim=11 ///Attack Stand
	{sprite_index=spr_skeleton_kick selfatk.MoveType=1
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if AnimFrame=2 PlaySoundNoStack(snd_swing)
	frame_set(2,2,0.1)
	
	if AnimFrame=clamp(AnimFrame,2,2.2) {sentflying=4*image_xscale atk=1} else {sentflying=0 atk=0}
	frame_set(3,0,0.1)
	damage=0.1
	if AnimFrame>3.75 {anim=0 canmove=1}
	}
	
		if anim=12 ///Bone Throw
	{sprite_index=spr_skeleton_bonethrow
	frame_set(0,0,0.1)
	frame_set(1,1,0.25) 
	frame_set(2,2,0.05) if AnimFrame=3 
	{PlaySoundNoStack(snd_swing)
 if AnimFrame=3
{card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.image_speed=0 card.Spin=-22.5*image_xscale card.sprSpin=0 card.sprite_index=spr_bone
	card.z=z-64 card.image_xscale=image_xscale card.HitSound=snd_hit card.HitSpark=spr_hitflash
	card.haspal=1 card.my_pal_sprite=my_pal_sprite card.current_pal=current_pal	
	}
	}
	frame_set(3,3,0.25)
	frame_set(4,4,0.05)
	frame_set(5,0,0.25)
	damage=0.1
	if AnimFrame>5.75 {anim=0 canmove=1}
	}
	
if anim=13 ///Ballerina Dance
{

if AnimFrame=3 {PlaySound(snd_swing)}

	sprite_index=spr_skeleton_ballerina

	if ground=1
	{
	image_index=0
	}else {image_index+=0.5 if image_index=6.5 {image_index=1 PlaySoundNoStack(snd_swing2)}}

	if AnimFrame<3 sentflying=0*image_xscale
	else {
	if zSpeed>0
	sentflying=lerp(sentflying,0,0.1) else { sentflying=6*image_xscale}
	}

	atkcol_set(2,0,30,3.15,1,25)

	MoveType=1 damage=0.1

	if AnimFrame=clamp(AnimFrame,3,6) atk=1 else atk=0

	flashZ=32

	if AnimFrame=clamp(AnimFrame,3,8) {ground=0 z-=4 sentflying=2*image_xscale}

	frame_set(0,image_index,0.2)
	frame_set(1,image_index,0.2)
	frame_set(2,image_index,0.05)
	frame_set(3,image_index,0.1)
	frame_set(4,image_index,0.1)
	frame_set(5,image_index,0.1)
	frame_set(6,image_index,0.1)
	frame_set(7,image_index,0.1)
	frame_set(8,image_index,0.1)

	if AnimFrame>6 and ground=1 {canmove=0 AnimFrame=9 anim=6 }
}
	
	if anim=61 ///Out of Character
{if AnimFrame=0 sprite_index=spr_skeleton_ooc MoveType=1 prevanim=61
frame_set(0,0,0.1)  if AnimFrame<2 if x=clamp(x,targetX-idleRange,targetX+idleRange) AnimFrame=2.1
frame_set(1,1,0.1) if AnimFrame=2 AnimFrame=0
frame_set(2,2,0.1) 
frame_set(3,3,0.05) 
frame_set(4,2,0.1) 
frame_set(5,2,0.25) if AnimFrame>5 {canmove=1 anim=0}
}

///Break Apart
if dead=1 if visible
{

					iceFX=0;
					
					PlaySoundNoStack(snd_break)
					
		repeat(9)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-0
if iceFX=1 or iceFX=5 part.z=z-8
if iceFX=2 or iceFX=6 part.z=z-16
if iceFX=3 or iceFX=7 part.z=z-24
part.image_angle=random(360) part.sprite_index=spr_bone
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(24,32)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
	iceFX+=1;
if iceFX=8 part.sprite_index=spr_skeleton_skull
} iceFX=0;

	canmove=0
	hurt=1
	shaketime=30
	throwing=0 dead=1;
	visible=0 disappearTime=0 alarm[2]=90///Instantly kill and shatter character while frozen
}
