/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1


if anim=10
	{animFrame=0
	if distance_to_object(targetEnemy)<40
	anim=11
	else
	if distance_to_object(targetEnemy)<80
	anim=12
	else
	anim=130
	}

	///Attacks
	if anim=11 ///Attack Stand
	{ hit=0  
sprite_index=AtkSpr
	if sprite_index=AtkSpr {MoveType=0 damage=0.04}
	
atkcol_set(28,0,53,1.75,1,24)
	
	if specialcheck1=0 or specialcheck1=2 or specialcheck1=4 or specialcheck1=6
	{
	if animFrame=clamp(animFrame,0,1) image_index=0
	if animFrame=clamp(animFrame,1,2) image_index=1
	if animFrame=clamp(animFrame,2,3) image_index=2
	if animFrame=clamp(animFrame,3,4) image_index=3
	}
	else
	{
	if animFrame=clamp(animFrame,0,1) image_index=3
	if animFrame=clamp(animFrame,1,2) image_index=2
	if animFrame=clamp(animFrame,2,3) image_index=1
	if animFrame=clamp(animFrame,3,4) image_index=0
	}

if specialcheck1=4 MoveType=1
	
	image_speed=0 selfatk.targetHeight=2
	
	
	 if animFrame=clamp(animFrame,2,2.25) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,.5) or animFrame=clamp(animFrame,3,3.5)
	animFrame+=0.25 else animFrame+=0.5 selfatk.recovery=2
	
	selfatk.flashZ=-90
	
	if animFrame>3.5 
	{
		if specialcheck0=1 specialcheck1+=1
		
		if specialcheck1=0 or specialcheck1=5
	{specialcheck1=0 specialcheck0=0 hurt=0 atk=0 canmove=1 hit=0 specialcheck0=0} else {animFrame=0}
	
	}
	}
	
	
		if anim=12 ///Jump Attack
	{hit=0 MoveType=0 canmove=0
sprite_index=spr_hwolf_attack2 image_index=0
image_speed=0 atk=1 atkcol_set(25,0,-1,1.25,1,86) damage=0.04 MoveType=1
	if animFrame=clamp(animFrame,0,1)
	animFrame+=0.01 else animFrame+=0.05 if animFrame>0.1
	 {animFrame=0 ground=0 	zSpeed=-4 anim=13 PlaySound(snd_swing) PlaySound(snd_hwolf3)}
	}
	
			if anim=13 ///Attack Stand
	{ hit=0  
sprite_index=spr_hwolf_attack2 image_index=1
sentflying=4*image_xscale
if ground {animFrame=0 anim=14}
	}
	
if anim=130 ///Swing Attack
{prevanim=12 if animFrame=0 PlaySound(snd_hwolf3)
MoveType=2 damage=0.3 
sprite_index=spr_hwolf_attack3
image_index=animFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=2*image_xscale selfatk.image_yscale=1.5
selfatk.height=128

frame_set(0,0,0.025)
if animFrame=0.025
or animFrame=0.025+0.050*1
or animFrame=0.025+0.050*5
or animFrame=0.025+0.050*9
or animFrame=0.025+0.050*13
or animFrame=0.025+0.050*17
{specialFX=1 alarm[3]=2}

frame_set(1,1,0.25)

frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){if animFrame<=2.25 {PlaySoundNoStack(snd_swing) PlaySound(snd_hwolf2)} atk=1 canbeGrabbed=0

if image_xscale=-1 and x>__view_get( e__VW.XView, 0 )+80
if place_free(x-20,y) x-=20

if image_xscale=1 and x<__view_get( e__VW.XView, 0 )+320-80
if place_free(x+20,y) x+=20

} else { atk=0 canbeGrabbed=1}


frame_set(3,3,0.05)
frame_set(4,4,0.5)

if animFrame>4.5 {atk=0 canmove=1}
}
	
	///Prepare To Jump / Land
	if anim=14
	{hit=0 MoveType=0 canmove=0
sprite_index=spr_hwolf_attack2 image_index=0
image_speed=0 atk=0
	if animFrame=clamp(animFrame,0,1)
	animFrame+=0.5 else animFrame+=0.05 if animFrame>0.1 {
 canmove=1
	}
	}
	
	///Far Away Attack
	if anim=18
	{
	
	}
	
		///Far Away Attack
	if anim=101
	{
	{sprite_index=spr_hwolf_angry image_speed=0.25
	frame_set(0,11,0.25)
	frame_set(1,14,0.25)
	frame_set(2,10,0.25)
	frame_set(3,24,0.01)
	frame_set(4,24,0.01)
	frame_set(5,24,0.01)
	if animFrame>5.5 {		
	fk=instance_create_depth(x,y,-1,oFlashFX) with fk
	{hspeed=4 sprite_index=spr_hwolf_move image_speed=0.5 animEnd=0 alarm[0]=400 FlashShadow=1}
	
	y=9999 hspeed=4
	}
	}
	}