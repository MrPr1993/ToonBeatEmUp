enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=10
{
animFrame=0 canmove=0 specialcheck0=0
	
		
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>150
	anim=choose(13,13,13,13,13,12) else anim=12
}
	else
	anim=11
}

///Kick
if anim=11
{
if animFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_twoheads_attack1
image_index=animFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,0,0.25)
frame_set(2,1,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1 sentflying=1*image_xscale
} else { atk=0 sentflying=0}
frame_set(3,2,0.05)
frame_set(4,3,0.5)
if animFrame>4.5 {atk=0 canmove=1}
}
///Kick Air
if anim=12
{
if animFrame=0  {PlaySound(choose(snd_twoheads10,snd_twoheads3,snd_twoheads11))}
damage=0.2 
atkcol_set(29,0,-9,1.75,1,64)
if animFrame<1 {atk=0 sprite_index=spr_twoheads_attack1 image_index=3 animFrame+=0.1}
else if !ground {sprite_index=spr_twoheads_jump animFrame+=0.1 if animFrame>3 {sprite_index=spr_twoheads_attack2
	if animFrame>3 {atk=1 image_index=1 sentflying=8*image_xscale zSpeed=8} else {atk=0 image_index=0 sentflying=0 zSpeed=0} }}
else {sprite_index=spr_twoheads_attack1 image_index=3 sentflying=lerp(sentflying,0,0.1)
	animFrame+=0.1 if animFrame>8 canmove=1
	}

if animFrame=1 {ground=0 zSpeed=-16 sentflying=-4*image_xscale}
}

///Bullet Fire
if anim=13
{
if animFrame=0  {PlaySound(choose(snd_twoheads3,snd_twoheads10,snd_twoheads8))}
	if animFrame=0 specialcheck5=6 sprite_index=spr_twoheads_shoot
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.25) if animFrame=3
{PlaySound(snd_gun) 
bul1=instance_create_depth(x+10*image_xscale,y+1,-1,oProjectile) bul1.z=-62 bul1.hspeed=4*image_xscale bul1.image_xscale=image_xscale bul1.damage=0.1
bul1=instance_create_depth(x+(10+23)*image_xscale,y+1,-1,oProjectile) bul1.z=-62 bul1.hspeed=4*image_xscale bul1.image_xscale=image_xscale bul1.damage=0.1
flashFX(x+10*image_xscale,y+1,z-62,spr_gunflash,0,1,0,1,1,c_white,1)
flashFX(x+10*image_xscale,y+1,z-62,spr_gunflash,0,1,0,1,1,c_white,1)
	}
frame_set(3,3,0.5)
frame_set(4,4,0.5)
frame_set(5,5,0.5) if animFrame>6 if specialcheck5!=1 {specialcheck5-=1 animFrame=2}
frame_set(6,2,0.05)
frame_set(7,1,0.1)
frame_set(8,0,0.1)
if animFrame>8 canmove=1

}	

///Lasso
if anim=14
{if animFrame=0 {specialcheck4=32 specialcheck5=-1}
	sprite_index=spr_twoheads_lasso if animFrame=0 specialcheck5=3
frame_set(0,0,0.05)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1) if animFrame=4 if specialcheck5!=1 {specialcheck5-=1 animFrame=1}
frame_set(4,4,0.01)

if animFrame=clamp(animFrame,4,5)
{
if specialcheck5=-1
{specialcheck5=0
lass=instance_create_depth(x,y,-1,oFlashFX) with lass
{sprite_index=spr_twoheads_stand image_speed=0 alarm[0]=300} lass.hspeed=4*image_xscale
}
else
{
if lass!=-1
{
specialcheck4=lass.x
if collision_rectangle(specialcheck4-24,specialcheck4+24,y-4,y+4,oPlayer,0,false)
{tarl=collision_rectangle(specialcheck4-24,specialcheck4+24,y-4,y+4,oPlayer,0,false)
with tarl zSpeed=-8
}
}
}
}

frame_set(5,0,0.05) if animFrame>5.7 canmove=1
}
