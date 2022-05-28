/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()
overwriteAttack=1
	///Attacks
if anim=10
{
animFrame=0
if distance_to_point(targetEnemy.x,targetEnemy.y)<60
{
anim=11
}
else
anim=12
}
	
	if anim=11 ///Attack Stand
	{sprite_index=spr_skeleton_kick selfatk.MoveType=1
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if animFrame=2 PlaySoundNoStack(snd_swing)
	frame_set(2,2,0.1)
	
	if animFrame=clamp(animFrame,2,2.2) {sentflying=4*image_xscale atk=1} else {sentflying=0 atk=0}
	frame_set(3,0,0.1)
	damage=0.1
	if animFrame>3.75 {anim=0 canmove=1}
	}
	
		if anim=12 ///Bone Throw
	{sprite_index=spr_skeleton_bonethrow
	frame_set(0,0,0.1)
	frame_set(1,1,0.25) 
	frame_set(2,2,0.05) if animFrame=3 
	{PlaySoundNoStack(snd_swing)
 if animFrame=3
{card=instance_create_depth(x+16*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
	card.image_speed=0 card.Spin=-22.5*image_xscale card.sprSpin=0 card.sprite_index=spr_bone
	card.z=z-64 card.image_xscale=image_xscale card.HitSound=snd_hit card.HitSpark=spr_hitflash
	}
	}
	frame_set(3,3,0.25)
	frame_set(4,4,0.05)
	frame_set(5,0,0.25)
	damage=0.1
	if animFrame>5.75 {anim=0 canmove=1}
	}
	
	if anim=61 ///Out of Character
{if animFrame=0 sprite_index=spr_skeleton_ooc MoveType=1 prevanim=61
frame_set(0,0,0.1)  if animFrame<2 if x=clamp(x,targetX-idleRange,targetX+idleRange) animFrame=2.1
frame_set(1,1,0.1) if animFrame=2 animFrame=0
frame_set(2,2,0.1) 
frame_set(3,3,0.05) 
frame_set(4,2,0.1) 
frame_set(5,2,0.25) if animFrame>5 {canmove=1 anim=0}
}

