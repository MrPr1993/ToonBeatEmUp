/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()


///Robot Variation will have own attack
	if anim=12 ///Laser Attack
	{
	HitForce=-4
	HitForceZ=-4
atkcol_set(211,0,39,13.15,1,19)
	if animFrame<3
	{
	robotArmLAngle=lerp(robotArmLAngle,90,0.1)
	robotArmRAngle=lerp(robotArmRAngle,90,0.1)
	}
	else
	{
	robotArmLAngle=lerp(robotArmLAngle,-90,0.5)
	robotArmRAngle=lerp(robotArmRAngle,-90,0.5)
	}

	sprite_index=spr_robot_chest damage=0.2
selfatk.spriteFX=spr_elecflash
selfatk.HitSound=snd_shocked

	frame_set(0,0,0.25)
	frame_set(1,1,0.25)
	frame_set(2,2,0.04) if animFrame=3 {PlaySoundNoStack(snd_laserbeam)}
	frame_set(3,3,0.25)
	frame_set(4,4,0.25)
	frame_set(5,3,0.25)
	frame_set(6,4,0.25)
	frame_set(7,3,0.25)
	frame_set(8,4,0.25)
	frame_set(9,3,0.25)
	frame_set(10,4,0.25)
	frame_set(11,3,0.25)
	frame_set(12,5,0.05)

	atkAddX=192 selfatk.image_xscale=12*image_xscale
	MoveType=3

	if animFrame=clamp(animFrame,3,11)
	{atk=1 }

	else {atk=0}

	if animFrame>12.75 {hurt=0 atk=0 canmove=1 hit=0}

	}