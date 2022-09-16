enemy_endstep()
throw_step()
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if bub!=-1
if anim!=12 {with bub instance_destroy() bub=-1}



	///Attacks
if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>60
anim=12
else
anim=11
}
	
	if anim=11 ///Attack Stand
	{//anim=11 exit;
		hit=0  
	if animFrame=0
sprite_index=spr_siren_attack
atkcol_set(37,0,14,2.25,1,64)
	MoveType=1 damage=0.2
	image_index=animFrame image_speed=0 if animFrame<2 sentflying=lerp(sentflying,-24*image_xscale,0.1) else sentflying=lerp(sentflying,0,0.1)
	 if animFrame=clamp(animFrame,2,2.5) {atk=1} else {atk=0}
	if animFrame=clamp(animFrame,0,2)
	animFrame+=0.2 else animFrame+=0.25 if animFrame>7.75 {hurt=0 atk=0 canmove=1 hit=0
	}
	if animFrame=2 {PlaySoundNoStack(snd_femenemy5) PlaySoundNoStack(snd_swing)}
	}



///Ranged Attack
if anim=12
{sprite_index=spr_siren_shoot
	//if animFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.1)
if animFrame=11111
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
frame_set(10,1,0.25) if animFrame=11
{//with bub instance_destroy() bub=-1
PlaySound(snd_femenemy5) PlaySound(snd_flame)
card=instance_create_depth(x+32*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=4*image_xscale
card.sprite_index=spr_siren_proj2 
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
{card.zSpeed=1 card.zSpeedAdd=-0.1} else card.sidespeedadd=0.1*image_xscale
card.z=z-64 card.image_xscale=image_xscale card.disappearHit=0 card.damage=0.1
}
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)

if animFrame>15.75 {canmove=1 atk=0}
}