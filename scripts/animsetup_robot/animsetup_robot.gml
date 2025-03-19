/// @description Animation Setup - Enemy
function animsetup_robot() {

	///Make sure to have these on if you want to overwrite some animations
	overwriteStand=1
	overwriteMove=1
	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

	animsetup_enemy()

	robotArmLX=-14
	robotArmLY=-64
	robotArmRX=14
	robotArmRY=-64

	if hurt=1
	{
	robotArmLIndex=0
	robotArmRIndex=0
	}

	if anim=0///Stand
	{
	atk=0
	sprite_index=StandSpr

image_index=AnimFrame

	if oControl.p1.dead=1 
	and oControl.p2.dead=1 
	and oControl.p3.dead=1 
	and oControl.p4.dead=1
	{
	if AnimFrame>4
	{
	robotArmLAngle=lerp(robotArmLAngle,-45,0.1)
	robotArmRAngle=lerp(robotArmRAngle,45,0.1)
	}
else
{
	robotArmLAngle=lerp(robotArmLAngle,45,0.1)
	robotArmRAngle=lerp(robotArmRAngle,-45,0.1)
}	
	AnimFrame+=0.25 if AnimFrame>8 AnimFrame=0
	exit;
	}

	if AnimFrame<1
	{	robotArmLY=lerp(robotArmLY,-64,0.5)	robotArmRY=lerp(robotArmRY,-64,0.5)	}
	else if AnimFrame<3.90
	{	robotArmLY=lerp(robotArmLY,-70,0.1)	robotArmRY=lerp(robotArmRY,-70,0.1)	}
else if AnimFrame<4 {	robotArmLY=lerp(robotArmLY,-60,0.5)	robotArmRY=lerp(robotArmRY,-60,0.5)	}
	else if AnimFrame<1+4
	{	robotArmLY=lerp(robotArmLY,-64,0.5)	robotArmRY=lerp(robotArmRY,-64,0.5)	}
	else if AnimFrame<3.90+4
	{	robotArmLY=lerp(robotArmLY,-70,0.1)	robotArmRY=lerp(robotArmRY,-70,0.1)	}
else {	robotArmLY=lerp(robotArmLY,-60,0.5)	robotArmRY=lerp(robotArmRY,-60,0.5)	}

if AnimFrame<4
{	robotArmLAngle=lerp(robotArmLAngle,0,0.1)
	robotArmRAngle=lerp(robotArmRAngle,0,0.1)}
	else
{	robotArmLAngle=lerp(robotArmLAngle,10,0.1)
	robotArmRAngle=lerp(robotArmRAngle,10,0.1)}
	
	AnimFrame+=0.05 if AnimFrame>8 AnimFrame=0
	}

	if anim=1 ///Move
	{


	sprite_index=MoveSpr

	if AnimFrame=clamp(AnimFrame,1,2) or AnimFrame=clamp(AnimFrame,3,4)
	{
	robotArmLY=lerp(robotArmLY,-60,0.5)
	robotArmRY=lerp(robotArmRY,-60,0.5)
	robotArmLAngle=lerp(robotArmLAngle,45+11,0.1)
	robotArmRAngle=lerp(robotArmRAngle,45-11,0.1)
	}
	else 
	{
	robotArmLY=lerp(robotArmLY,-64,0.5)
	robotArmRY=lerp(robotArmRY,-64,0.5)
	robotArmRAngle=lerp(robotArmRAngle,45+11,0.1)
	robotArmLAngle=lerp(robotArmLAngle,45-11,0.1)
	}
	image_index=AnimFrame

	if AnimFrame>4 AnimFrame=0 else AnimFrame+=0.1
	}



	if anim=10 ///Check Enemy Distance
	{AnimFrame=0
	if distance_to_object(targetEnemy)>40
	{
	if x>__view_get( e__VW.XView, 0 )+16 and x<__view_get( e__VW.XView, 0 )+320-16
	anim=12 else {anim=1 canmove=1

	if x<__view_get( e__VW.XView, 0 )+16 key_right=1
	if x>__view_get( e__VW.XView, 0 )+320-16 key_left=-1

	}
	}
	else
	anim=11
	}///

	if anim=11 ///Swinging Arm Attack
	{
	if AnimFrame=0
	{
	robotArmLX=-14
	robotArmLY=-64
	robotArmRX=14
	robotArmRY=-64}

	if AnimFrame<0.5
	{
	targetX=targetEnemy.x
	targetY=targetEnemy.y
	}

	hit=0 MoveType=0 
	///Change the attack colission settings here
	if robotArmR=1
	{
	atkAddX=0
	atkAddY=0
	atkAddZ=0
	selfatk.image_xscale=3
	selfatk.image_yscale=1.5
	selfatk.height=96
	}
	else 
	{
	atkAddX=32
	atkAddY=0
	atkAddZ=0
	selfatk.image_xscale=1
	selfatk.image_yscale=1
	selfatk.height=96
	}

	if robotArmR=1// and x!=clamp(x,targetX-16,targetX+16)
	{
	if robotArmL=1 damage=0.3 else damage=0.2
	MoveType=2
	sprite_index=AtkSpr
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,4.5)
	 {if robotArmLAngle>360-33 robotArmLAngle=0
	 if robotArmLAngle=33
	 PlaySoundNoStack(snd_swing4)
	  atk=1 robotArmLAngle+=33 robotArmRAngle-=33 robotArmRIndex=2  robotArmLIndex=1 
	 if place_free(x+1*image_xscale,y)
	 x+=1*image_xscale } else 
	  {atk=0 robotArmLAngle=0 robotArmRAngle=0 robotArmRIndex=0  robotArmLIndex=0}
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.05 else AnimFrame+=0.05 if AnimFrame>8 {hurt=0 atk=0 canmove=1 hit=0
	}}
	else
	{
	sprite_index=ThrownSpr damage=0.15 MoveType=1
	if AnimFrame<1
	image_index=0
	if AnimFrame>2 {sprite_index=StandSpr image_index=0}
	  image_speed=0
	if AnimFrame=clamp(AnimFrame,1,2)
	AnimFrame+=0.1 
	else
	AnimFrame+=0.05

	if AnimFrame=clamp(AnimFrame,1,2)
	{if place_free(x+4*image_xscale,y) if image_index=!16 {PlaySound(snd_swing) PlaySound(snd_swing4) image_index=16} x+=4*image_xscale atk=1}
	else atk=0
	if AnimFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0}
	}
	}




	///

	if anim=110
	{robotArmLX=-16 robotArmLY=-61 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=16 robotArmRY=-61
	robotArmLXscale=-1
	}else robotArmLXscale=1
 


	///////Arms to adapt when hit
	if sprite_index=ThrownSpr
	{
	if image_index=clamp(image_index,0,0.9)
	{robotArmLX=-27 robotArmLY=-70 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=27 robotArmRY=-70} 
	if image_index=clamp(image_index,1,1.9)
	{robotArmLX=-16 robotArmLY=-73 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=16 robotArmRY=-73}
	if image_index=clamp(image_index,2,2.9)
	{robotArmLX=-18 robotArmLY=-67 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=18 robotArmRY=-68}
	if image_index=clamp(image_index,3,3.9)
	{robotArmLX=-17 robotArmLY=-55 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=17 robotArmRY=-55}
	if image_index=clamp(image_index,4,4.9)
	{robotArmLX=-13 robotArmLY=-39 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=-18 robotArmRY=-55}
	if image_index=clamp(image_index,5,5.9)
	{robotArmLX=-6 robotArmLY=-29 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=-6 robotArmRY=-29}
	if image_index=clamp(image_index,6,6.9)
	{robotArmLX=10 robotArmLY=-21 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=-10 robotArmRY=-21}
	if image_index=clamp(image_index,7,7.9)
	{robotArmLX=-13 robotArmLY=4 robotArmLAngle=90 robotArmRAngle=90
	robotArmRX=-13 robotArmRY=4}
	if image_index=clamp(image_index,8,8.9)
	{robotArmLX=-13 robotArmLY=8 robotArmLAngle=90 robotArmRAngle=90
	robotArmRX=-13 robotArmRY=8}
	if image_index=clamp(image_index,9,9.9)
	{robotArmLX=-3 robotArmLY=-18 robotArmLAngle=45 robotArmRAngle=45
	robotArmRX=-3 robotArmRY=-18}
	if image_index=clamp(image_index,10,10.9)
	{robotArmLX=-19 robotArmLY=-28 robotArmLAngle=11 robotArmRAngle=11
	robotArmRX=19 robotArmRY=-28}
	if image_index=clamp(image_index,11,11.9)
	{robotArmLX=-13 robotArmLY=4 robotArmLAngle=90 robotArmRAngle=90
	robotArmRX=-13 robotArmRY=4}
	if image_index=clamp(image_index,12,12.9)
	{robotArmLX=0 robotArmLY=-12 robotArmLAngle=180 robotArmRAngle=180
	robotArmRX=0 robotArmRY=-12}
	if image_index=clamp(image_index,13,13.9)
	{robotArmLX=17 robotArmLY=-30 robotArmLAngle=270 robotArmRAngle=270
	robotArmRX=17 robotArmRY=-30}
	if image_index=clamp(image_index,14,14.9)
	{robotArmLX=-3 robotArmLY=-45 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=-3 robotArmRY=-45}
	if image_index=clamp(image_index,15,15.9)
	{robotArmLX=-13 robotArmLY=-64 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=-13 robotArmRY=-64}
	if image_index=clamp(image_index,16,16.9)
	{robotArmLX=-12 robotArmLY=-63 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=12 robotArmRY=-63}
	if image_index=clamp(image_index,17,17.9)
	{robotArmLX=2 robotArmLY=-66 robotArmLAngle=0 robotArmRAngle=0
	robotArmRX=2 robotArmRY=-66}
	if image_index=clamp(image_index,18,18.9)
	{robotArmLX=12 robotArmLY=-34 robotArmLAngle=90 robotArmRAngle=90
	robotArmRX=13 robotArmRY=-34}
	if image_index=clamp(image_index,19,19.9)
	{robotArmLX=11 robotArmLY=-17 robotArmLAngle=110 robotArmRAngle=110
	robotArmRX=11 robotArmRY=-17}
	if image_index=clamp(image_index,20,20.9)
	{robotArmLX=12 robotArmLY=-36 robotArmLAngle=90 robotArmRAngle=90
	robotArmRX=12 robotArmRY=-36}
	if image_index=clamp(image_index,21,21.9)
	{robotArmLX=12 robotArmLY=-26 robotArmLAngle=-22 robotArmRAngle=-22
	robotArmRX=12 robotArmRY=-26}
	if image_index=clamp(image_index,22,22.9)
	{robotArmLX=2 robotArmLY=-41 robotArmLAngle=110 robotArmRAngle=110
	robotArmRX=2 robotArmRY=-41}
	if image_index=clamp(image_index,23,23.9)
	{robotArmLX=-13 robotArmLY=4 robotArmLAngle=80 robotArmRAngle=80
	robotArmRX=-13 robotArmRY=4}
	}

	if sprite_index=spr_robot_flat
	{robotArmLX=-21 robotArmLY=-6 robotArmLAngle=66 robotArmRAngle=66
	robotArmRX=0 robotArmRY=-6}

	if sprite_index=spr_robot_frozen
	{robotArmLX=-14 robotArmLY=-64 robotArmLAngle=14 robotArmRAngle=14
	robotArmRX=14 robotArmRY=-64}


		if sprite_index=spr_robot_burned
	{robotArmLX=-14 robotArmLY=-64 robotArmLAngle=14 robotArmRAngle=14
	robotArmRX=14 robotArmRY=-64}



}
