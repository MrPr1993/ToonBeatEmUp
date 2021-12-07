/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

///Robot Variation will have own attack
	if anim=12 ///Flamethrower Attack
	{
	if animFrame=0 {specialcheck4=10 specialcheck3=0 specialcheck5=0} 
	HitForce=-4
	HitForceZ=-4

	if animFrame<3
	{
	robotArmLX=-14
	robotArmLY=-64
	robotArmRX=14
	robotArmRY=-64
	robotArmLAngle=lerp(robotArmLAngle,15,0.1)
	robotArmRAngle=lerp(robotArmRAngle,10,0.1)
	}
	else
	{
	robotArmLX=-20
	robotArmLY=-78
	robotArmRX=lerp(robotArmRX,8,0.5)
	robotArmRY=lerp(robotArmRY,-80,0.5)
	robotArmLAngle=lerp(robotArmLAngle,5,0.5)
	robotArmRAngle=lerp(robotArmRAngle,0,0.5)
	}

	sprite_index=spr_robot_attack damage=0.2

selfatk.HitSound=snd_flame

	frame_set(0,0,0.25)
	frame_set(1,1,0.25)
	frame_set(2,2,0.04) if animFrame=3 {PlaySoundNoStack(snd_flame) atkcol_set(40,0,25,1,1,50)} //2.75}
	frame_set(3,3,0.25) if animFrame=4 atkcol_set(40*1.25,0,25,1.25,1,50)
	frame_set(4,4,0.25) if animFrame=5 atkcol_set(40*1.5,0,25,1.5,1,50)
	frame_set(5,3,0.25) if animFrame=6 atkcol_set(40*1.75,0,25,1.55,1,50)
	frame_set(6,4,0.25) if animFrame=7 atkcol_set(40*2,0,25,2,1,50)
	frame_set(7,3,0.25)
	frame_set(8,4,0.25)
	frame_set(9,3,0.25)
	frame_set(10,4,0.25) if animFrame=11 if specialcheck4!=0 {specialcheck4-=1 animFrame=9}
	frame_set(11,3,0.25)
	frame_set(12,5,0.05)

	//atkAddX=192 selfatk.image_xscale=12*image_xscale
	MoveType=6

	if animFrame=clamp(animFrame,3,11)
	{ atk=1
	}
	else {atk=0}

	if animFrame>12.75 {hurt=0 atk=0 canmove=1 hit=0}

	}