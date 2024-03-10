/// @description Insert description here
// You can write your code in this editor



enemy_endstep()
throw_step()

if specialcheck0!=0 specialcheck0-=1
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
anim=12 else anim=11
if anim=12 if specialcheck0!=0 anim=11

if anim=11 if distance_to_point(targetEnemy.x,targetEnemy.y)>60 specialcheck1=1 else specialcheck1=0

if anim=12 if current_pal=1 or current_pal=2 anim=13
}

if anim=11
{
atkcol_set(34,0,0,2.35,1,133)
sprite_index=spr_snowgirl_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if animFrame=clamp(animFrame,2,2.2)
if specialcheck1=1
{PlaySound(snd_hwolf3) PlaySound(snd_swing)
ground=0 sentflying=4*image_xscale zSpeed=-4 specialcheck1=0
}
frame_set(2,2,0.1)
frame_set(3,3,0.05) MoveType=4 damage=0.2 
if animFrame=4 {selfatk.atk=1 oControl.quakeFXTime=10 PlaySound(snd_quakeground)
flashFX(x+34*image_xscale,y,z,spr_hitground,0,1,99,1,1,c_white,1) fx.isDepth=0 fx.depth=6000
}if animFrame=clamp(animFrame,4,4.9) atk=1 else atk=0
frame_set(4,4,0.5)
frame_set(5,5,0.05)
frame_set(6,0,0.1)
if animFrame>6.5 canmove=1
}

if anim=12
{
if animFrame=0 {specialcheck0=0}	

sprite_index=spr_snowgirl_breath
frame_set(0,0,0.125)
frame_set(1,1,0.125)
frame_set(2,2,0.125)
frame_set(3,1,0.05)
frame_set(4,0,0.25) if animFrame>5 if specialcheck0=0 {specialcheck0=200 

sm=instance_create_depth(x+32*image_xscale,y+1,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-16 sm.dizzyHit=0 sm.MoveType=6 sm.isPharaoh=0
		sm.sprite_index=spr_bigsmoke sm.mainSmoke=spr_bigsmoke
	}
frame_set(5,3,0.25)
frame_set(6,4,0.25)
frame_set(7,3,0.25)
frame_set(8,4,0.25)
frame_set(9,3,0.25)
frame_set(10,4,0.25)
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.25)
frame_set(15,4,0.25)
frame_set(16,4,0.25)
frame_set(17,0,0.25)

if animFrame>17.75 {canmove=1 atk=0}
}

if anim=13
{
	
	if animFrame=0 { sprite_index=spr_snowgirl_attack specialtimes[0]=2
	MoveType=1 image_index=0 image_speed=0 damage=0.2
	if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	}
	
	{damage=0.4
	if animFrame=clamp(animFrame,1,1.5) if ground {
			 targetXcheck=targetEnemy.x
	 targetYcheck=targetEnemy.y
	 if x<targetXcheck targetXcheck=1 else targetXcheck=-1
 
	 if y!=clamp(y,targetYcheck-8,targetYcheck+8)
	 {if y<targetYcheck targetYcheck=1 else targetYcheck=-1}
	else targetYcheck=0 
		sprite_index=spr_snowgirl_attack2 specialcheck2=2 PlaySoundNoStack(snd_jump) PlaySound(snd_hwolf3) z-=2 ground=0 zSpeed=-7}
	if !ground 
	{MoveType=4 animFrame=2.9 SoundCount0=0 image_index=animFrame
	isThrow=0 throwing=0 atkAddX=0 atkAddY=0 atkAddZ=32 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	if place_free(x+specialcheck2*targetXcheck,y) x+=specialcheck2*image_xscale
	if place_free(x,y+specialcheck2*targetYcheck) if y<__view_get( e__VW.YView, 0 )+240-2 y+=specialcheck2*targetYcheck
	if zSpeed>0 z+=0.45 
	}else image_index=0

	 image_speed=0
	if animFrame=clamp(animFrame,2,3) and zSpeed>-1 atk=1 else atk=0
	}
	
		if animFrame=clamp(animFrame,3,3.5) if sprite_index=spr_snowgirl_attack2
	{
	if SoundCount0=0 {SoundCount0=1 sprite_index=spr_snowgirl_attack image_index=0 PlaySoundNoStack(HitGround)}
	oControl.quakeFXTime=10
	}
	
		if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else {if ground 

	animFrame+=0.1 if sprite_index=sprite_index=spr_snowgirl_attack and ground {animFrame+=0.001 if animFrame>3 image_index=clamp(image_index,0,1.4)}} if animFrame>4.5 {
		if specialtimes[0]=0 {hurt=0 atk=0 canmove=1 hit=0}
		else {specialtimes[0]-=1 animFrame=1 }
		
		}
	
	
}