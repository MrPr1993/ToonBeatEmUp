/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1


if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<80
anim=11
else
anim=12 

if current_pal=1 or current_pal=3 if anim=12 anim=14

if current_pal=3 if anim=12 anim=choose(12,14)
}

if anim=11
{
	 hit=0  sprite_index=spr_fairy_attack
MoveType=1 damage=0.15
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.1 else animFrame+=0.1
	if animFrame=2 {ground=0 sentflying=4*image_xscale zSpeed=-4}
	if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
}


if anim=12
{atkcol_set(49,0,15,2.85,1,45)
	sprite_index=spr_fairy_attack2
frame_set(0,0,0.25) 
frame_set(1,1,0.1) if animFrame=2
{
//26, -43

projectile_create(x+26*image_xscale,y+1,z-43,32,spr_fairy_heart,2*image_xscale,mask_small,spr_hitflash,0.2,1,2,0,0)
if current_pal=3 {projectile.MoveType=6 projectile.HitType=6}
}
frame_set(2,2,0.5)
frame_set(3,3,0.05)
frame_set(4,0,0.1)

selfatk.HitSpark=spr_hitflash

if animFrame>4.5 canmove=1
}

	///Diving Down
	if anim=13
	{z+=2 sprite_index=spr_fairy_fly image_index+=0.2 zSpeed=0
		
	if ground {anim=0 recovery=0 canmove=1}
	}
	
	///Ballerina Spin
	if anim=14
	{atkcol_set(0,0,0,0.8,1,45)
		MoveType=1
		if animFrame=0 {specialtimes[0]=1 sprite_index=spr_fairy_attack2 image_index=1} damage=0.2
	frame_set(0,1,0.25) if animFrame=1
	{ground=0 sentflying=1*image_xscale zSpeed=-10
	sprite_index=spr_fairy_spin animFrame=1.2
	}
	if ground {if sprite_index=spr_fairy_spin
	{sentflying=0 animFrame=2 sprite_index=spr_fairy_attack image_index=0 atk=0}}
	else{
		atk=1
	image_index+=specialtimes[0] if image_index>7.9 image_index=0
		
	specialtimes[0]=lerp(specialtimes[0],0,0.01)}
	
	frame_set(2,0,0.25) if animFrame>2.5 canmove=1
	
	}