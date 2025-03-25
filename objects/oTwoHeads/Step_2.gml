enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=10
{
AnimFrame=0 canmove=0 specialcheck0=0
	
		
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
if AnimFrame=0  PlaySound(snd_twoheads3)
MoveType=1 damage=0.2
sprite_index=spr_twoheads_attack1
image_index=AnimFrame
atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
frame_set(0,0,0.1)
frame_set(1,0,0.25)
frame_set(2,1,0.25)
if AnimFrame=clamp(AnimFrame,2,2.99){atk=1 sentflying=1*image_xscale
} else { atk=0 sentflying=0}
frame_set(3,2,0.05)
frame_set(4,3,0.5)
if AnimFrame>4.5 {atk=0 canmove=1}
}
///Kick Air
if anim=12
{
if AnimFrame=0  {PlaySound(choose(snd_twoheads10,snd_twoheads3,snd_twoheads11))}
damage=0.2  MoveType=1
atkcol_set(29,0,-9,1.75,1,64)
if AnimFrame<1 {atk=0 sprite_index=spr_twoheads_attack1 image_index=3 AnimFrame+=0.1}
else if !ground {sprite_index=spr_twoheads_jump AnimFrame+=0.1 if AnimFrame>3 {sprite_index=spr_twoheads_attack2
	if AnimFrame>3 {atk=1 image_index=1 sentflying=8*image_xscale zSpeed=8} else {atk=0 image_index=0 sentflying=0 zSpeed=0} }}
else {atk=0 sprite_index=spr_twoheads_attack1 image_index=3 sentflying=lerp(sentflying,0,0.1)
	AnimFrame+=0.1 if AnimFrame>8 canmove=1
	}

if AnimFrame=1 {ground=0 zSpeed=-16 sentflying=-4*image_xscale}
}

///Bullet Fire
if anim=13
{var ismoving=0;
	
var shootf2=2;
var shootf3=3;
var shootf4=4;
var shootf5=5;
	
if AnimFrame=0  {PlaySound(choose(snd_twoheads3,snd_twoheads10,snd_twoheads8))}
	if AnimFrame=0 {specialcheck4=choose(1,-1) specialcheck3=0
		
		specialcheck5=6}

if specialcheck5!=6
if AnimFrame=clamp(AnimFrame,0,6)
{
if y>oControl.wallY+4 and specialcheck4=-1 {ismoving=1 y-=2}
if y<oControl.camY+240-4 and specialcheck4=1 {ismoving=1 y+=2}
}		
		
sprite_index=spr_twoheads_shoot
frame_set(0,0,0.1)
frame_set(1,1,0.1)

if specialcheck5!=6
if ismoving=1 {specialcheck3+=0.1 if specialcheck3>=6 specialcheck3=0;
sprite_index=spr_twoheads_shootmove
shootf2=6+specialcheck3;
shootf3=0+specialcheck3;
shootf4=6+specialcheck3;
shootf5=6+specialcheck3;
}

frame_set(2,shootf2,0.25)


if AnimFrame=3
{PlaySound(snd_gun) 
bul1=instance_create_depth(x+10*image_xscale,y+1,-1,oProjectile) bul1.z=-62 bul1.hspeed=4*image_xscale bul1.image_xscale=image_xscale bul1.damage=0.1
bul1=instance_create_depth(x+(10+23)*image_xscale,y+1,-1,oProjectile) bul1.z=-62 bul1.hspeed=4*image_xscale bul1.image_xscale=image_xscale bul1.damage=0.1
flashFX(x+10*image_xscale,y+1,z-62,spr_gunflash,0,1,0,1,1,c_white,1)
flashFX(x+10*image_xscale,y+1,z-62,spr_gunflash,0,1,0,1,1,c_white,1)
	}



frame_set(3,shootf3,0.5)
frame_set(4,shootf4,0.5)

frame_set(5,shootf5,0.5) if AnimFrame>6 if specialcheck5!=1 {specialcheck5-=1 AnimFrame=2}
frame_set(6,2,0.05)
frame_set(7,1,0.1)
frame_set(8,0,0.1)
if AnimFrame>8 canmove=1

}	

///Lasso
if anim=14
{if AnimFrame=0 {specialcheck4=32 specialcheck5=-1}
	sprite_index=spr_twoheads_lasso if AnimFrame=0 specialcheck5=3
frame_set(0,0,0.05)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1) if AnimFrame=4 if specialcheck5!=1 {specialcheck5-=1 AnimFrame=1}
frame_set(4,4,0.01)

if AnimFrame=clamp(AnimFrame,4,5)
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

frame_set(5,0,0.05) if AnimFrame>5.7 canmove=1
}

if hp<=0
x=clamp(x,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.XView, 0 )+320-32)
