/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteStand=1
overwriteMove=1

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if atkBuffer1!=0 atkBuffer1-=1

canbeGrabbed=1

if anim=0 or anim=1 {sprite_index=StandSpr
	
	if specialtaunt!=-1
	if oControl.p1.dead=1 
	and oControl.p2.dead=1 
	and oControl.p3.dead=1 
	and oControl.p4.dead=1 
	sprite_index=spr_harpye_taunt
	
	image_index+=0.1 if image_index>7-0.1 image_index=0}

if anim=0 or anim=1
{hover=1
if x!=clamp(x,targetEnemy.x-8,targetEnemy.x+8)
if targetEnemy.x>x-64*image_xscale image_xscale=1 else image_xscale=-1


if (key_left=0 and key_right=0 and key_up=0 and key_down=0)
{
sprite_index=StandSpr
}
else
{
sprite_index=MoveSpr
}
}

if anim=0 or anim=1 or anim=4
{
z=lerp(z,-8+hoverZ,0.1)
zSpeed=0

if anim=0 or anim=1
{
if targetEnemy.x>x image_xscale=1 else image_xscale=-1

sprite_index=StandSpr
}

if hover=1
hoverZ=lerp(hoverZ,2,0.025) if hoverZ>1.8 hover=-1
if hover=-1
hoverZ=lerp(hoverZ,-2,0.025) if hoverZ<-1.8 hover=1
}

if anim=10
{
AnimFrame=0 canmove=0 specialcheck0=0
	
		
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
anim=12
}
	else
	anim=11 
	
	if atkBuffer1=0
	if current_pal=2 {anim=choose(11,13) atkBuffer1=choose(280,320,360,400)}

	
if anim=13 if x!=clamp(x,oControl.camX-20,oControl.camX+320+20)
anim=11
}

if anim=11 ///Charge
{if AnimFrame=0 PlaySound(snd_femenemy4)
	sprite_index=spr_harpye_attack2
	atkcol_set(-7,0,3,1.75,1,64) damage=0.10 MoveType=1
if AnimFrame=0 {sentflying=-4*image_xscale image_index=0} AnimFrame+=0.1

if AnimFrame=clamp(AnimFrame,2,6) {atk=1 sentflying=8*image_xscale image_index+=0.25 if image_index=4.75 image_index=1
	if image_index=1 PlaySoundNoStack(snd_swing2)
	} else {atk=0 image_index=0 sentflying=lerp(sentflying,0,0.5)}
		if AnimFrame>8 {canmove=1 sentflying=0 alarm[1]=60} zSpeed=0
	}

if anim=12
{
if AnimFrame=0  {specialtimes[0]=0}
damage=0.2 
atkcol_set(29,0,-9,1.75,1,64)
if AnimFrame<1 {atk=0 sprite_index=spr_harpye_stand image_index=3 AnimFrame+=0.1}
else if !ground {specialtimes[0]+=0.5 sprite_index=spr_harpye_stand image_index=specialtimes[0] AnimFrame+=0.1 if AnimFrame>3 {sprite_index=spr_harpye_attack1
	if AnimFrame>3 {specialtimes[0]=0 atk=1 image_index=0 sentflying=8*image_xscale zSpeed=8} else {atk=0 image_index=0 zSpeed=0} }}
else {atk=0 sprite_index=spr_harpye_attack1 image_index=specialtimes[0] specialtimes[0]+=0.25 image_index=clamp(image_index,1,2) sentflying=lerp(sentflying,0,0.1)
	AnimFrame+=0.05 if AnimFrame>8 canmove=1 
	}

if sprite_index=spr_harpye_stand {ground=0 zSpeed=-4}
}

if anim=13 ///Sing
	{if AnimFrame=0 {PlaySoundNoStack(snd_harpye)}
		
		sprite_index=spr_harpye_sing
	frame_set(0,0,0.1)
	frame_set(1,1,0.25) if AnimFrame=2
	{proj=instance_create_depth(x+11*image_xscale,y+1,depth+1,oProjectile) with proj
		{sprite_index=spr_harpyesong mask_index=mask_small spriteFX=spr_hitflash
			dizzyAtk=1 damage=0.02 
			} proj.z=z-48 proj.addXSpeed=0.1*image_xscale
		proj.hspeed=2*image_xscale proj.spdZ=3 proj.addZSpeed=-0.45
		}
	frame_set(2,2,0.25)
	frame_set(3,1,0.25)
	frame_set(4,2,0.25)
	frame_set(5,1,0.25)
	frame_set(6,2,0.25)
	frame_set(7,1,0.25)
	frame_set(8,2,0.25)
	frame_set(9,1,0.25)
	frame_set(10,2,0.25)
	frame_set(11,1,0.25)
	frame_set(12,2,0.25)
	frame_set(13,1,0.25)
	frame_set(14,2,0.25)
	frame_set(15,1,0.25)
	frame_set(16,2,0.25)
	frame_set(17,1,0.25)
	frame_set(18,2,0.25)
	frame_set(19,1,0.1)
	frame_set(20,0,0.1)
	if AnimFrame>20.7 {canmove=1 sentflying=0 alarm[1]=60}

	}

