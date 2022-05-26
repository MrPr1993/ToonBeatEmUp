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
{
if x!=clamp(x,targetEnemy.x-8,targetEnemy.x+8)
if targetEnemy.x>x image_xscale=1 else image_xscale=-1


if (key_left=0 and key_right=0 and key_up=0 and key_down=0)
{
sprite_index=StandSpr
}
else
{
sprite_index=MoveSpr
}
}

if anim=0 or anim=1 or anim=4 or anim=11 or anim=13
{
z=lerp(z,-24+hoverZ,0.1)
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

if atkBuffer1!=0 {atkBuffer2=0 atkBuffer1-=1}
else atkBuffer2=1

if anim=10
{animFrame=0 canmove=0 specialcheck0=0

if atkBuffer2=1 {atkBuffer2=0 atkBuffer1=choose(130,180) anim=choose(13,13,13,14,14) exit;}
if distance_to_point(targetEnemy.x,targetEnemy.y)>100 anim=11 else anim=12
}
if anim=11 ///Charge
{if animFrame=0 PlaySound(snd_harpy11)
	sprite_index=spr_harpy_charge
	atkcol_set(-7,0,3,3.95,1,114) damage=0.15 MoveType=1
if animFrame=0 {sentflying=-8*image_xscale image_index=0 Immune=1} animFrame+=0.1

if animFrame=clamp(animFrame,2,6) {atk=1 sentflying=8*image_xscale image_index+=0.25 if image_index=4.75 image_index=1
	if image_index=1 PlaySoundNoStack(snd_swing2)
	} else {atk=0 image_index=0 sentflying=lerp(sentflying,0,0.5)}
		if animFrame>8 {Immune=0 canmove=1 sentflying=0 alarm[1]=60} zSpeed=0
	}
if anim=12 ///Drop
{if animFrame=0 PlaySound(choose(snd_harpy8,snd_harpy10))
	sprite_index=spr_harpy_drop canbeGrabbed=0 atkcol_set(0,0,-3,3.05,1,27)
	damage=0.2 MoveType=4
if animFrame=0 image_index=0 if image_index=0 animFrame+=0.1 if image_index=0 zSpeed=0
if animFrame=1 {animFrame=2 image_index=1 zSpeed=-12 sentflying=4*image_xscale }
if image_index=1 {if x=clamp(x,targetEnemy.x-16,targetEnemy.x+16) sentflying=lerp(sentflying,0,0.1) if zSpeed>0 {zSpeed=12 atk=1}}
if ground if image_index>=1 {atk=0
	if image_index=1
	{oControl.quakeFXTime=20 PlaySound(snd_hitgroundheavy)
		flashFX(x,y,z,spr_hitground,0,0.5,10,1,1,c_white,1)
		}
	image_index+=0.25 animFrame+=0.25 if animFrame>4 {canmove=1 sentflying=0 alarm[1]=60}}
}

if anim=13 ///Sing
	{if animFrame=0 {PlaySound(choose(snd_harpy4,snd_harpy5,snd_harpy6))}
		
		sprite_index=spr_harpy_sing
	frame_set(0,0,0.1)
	frame_set(1,1,0.25) if animFrame=2
	{proj=instance_create_depth(x+22*image_xscale,y+1,depth+1,oProjectile) with proj
		{sprite_index=spr_harpysong mask_index=mask_small spriteFX=spr_hitflash
			dizzyAtk=1 damage=0.05 
			} proj.z=z-78 proj.addXSpeed=0.3*image_xscale
		proj.hspeed=2*image_xscale proj.spdZ=7 proj.addZSpeed=-0.45
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
	if animFrame>20.7 {canmove=1 sentflying=0 alarm[1]=60}

	}
	
	if anim=14 ///Wings
	{if animFrame=0 {specialcheck0=30 PlaySound(snd_harpy9)}
	
	specialcheck0-=1 if specialcheck0=0 {specialcheck0=30
		PlaySoundNoStack(snd_steal) card=instance_create_depth(x+(24+animFrame*4)*image_xscale,y+1,depth,oNinjaBunCard) card.hspeed=6*image_xscale
	 card.image_xscale=image_xscale
	card.zSpeed=6 card.sprite_index=spr_harpy_feather card.image_speed=0
	card.z=z-24
		}
	
		sprite_index=spr_harpy_wind
		image_index+=0.25
		zSpeed=0 z-=0.25 sentflying=-0.1*image_xscale
oPlayer.x+=3*image_xscale
	animFrame+=0.1
		if animFrame>20.7 {canmove=1 sentflying=0 alarm[1]=60}
	}
