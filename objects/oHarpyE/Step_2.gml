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

canbeGrabbed=1

if anim=0 or anim=1 {sprite_index=StandSpr image_index+=0.1 if image_index>7-0.1 image_index=0}

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
animFrame=0 canmove=0 specialcheck0=0
	
		
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
anim=12
}
	else
	anim=11
}

if anim=11 ///Charge
{if animFrame=0 PlaySound(snd_femenemy4)
	sprite_index=spr_harpye_attack2
	atkcol_set(-7,0,3,1.75,1,64) damage=0.10 MoveType=1
if animFrame=0 {sentflying=-4*image_xscale image_index=0} animFrame+=0.1

if animFrame=clamp(animFrame,2,6) {atk=1 sentflying=8*image_xscale image_index+=0.25 if image_index=4.75 image_index=1
	if image_index=1 PlaySoundNoStack(snd_swing2)
	} else {atk=0 image_index=0 sentflying=lerp(sentflying,0,0.5)}
		if animFrame>8 {canmove=1 sentflying=0 alarm[1]=60} zSpeed=0
	}

if anim=12
{
if animFrame=0  {specialtimes[0]=0}
damage=0.2 
atkcol_set(29,0,-9,1.75,1,64)
if animFrame<1 {atk=0 sprite_index=spr_harpye_stand image_index=3 animFrame+=0.1}
else if !ground {specialtimes[0]+=0.5 sprite_index=spr_harpye_stand image_index=specialtimes[0] animFrame+=0.1 if animFrame>3 {sprite_index=spr_harpye_attack1
	if animFrame>3 {specialtimes[0]=0 atk=1 image_index=0 sentflying=8*image_xscale zSpeed=8} else {atk=0 image_index=0 zSpeed=0} }}
else {atk=0 sprite_index=spr_harpye_attack1 image_index=specialtimes[0] specialtimes[0]+=0.25 image_index=clamp(image_index,1,2) sentflying=lerp(sentflying,0,0.1)
	animFrame+=0.05 if animFrame>8 canmove=1 
	}

if sprite_index=spr_harpye_stand {ground=0 zSpeed=-4}
}


