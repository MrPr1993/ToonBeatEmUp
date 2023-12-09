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
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>120
	anim=choose(12) else anim=choose(13,14,65)
}
	else
	anim=11
}


if anim=11 //Hook Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)
MoveType=1 damage=0.2 isCut=1 selfatk.HitSound=snd_cut selfatk.HitSpark=spr_blood
if animFrame=0 {specialtimes[0]=0}
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_martianb_attack1

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
	atkcol_set(48,0,3,1.75,1,96)
frame_set(0,4,0.1)
frame_set(1,0,0.25)
if animFrame=2 PlaySound(snd_swing5)
frame_set(2,1,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0}

frame_set(3,2+specialtimes[0],0.05)
if animFrame>3 specialtimes[0]+=0.25 specialtimes[0]=clamp(specialtimes[0],0,1.5)
frame_set(4,4,0.5)
if animFrame>4.5 canbeGrabbed=1

if animFrame>4.5 {atk=0 canmove=1}
}

if anim=12 ///Air Kick
{if animFrame=0 sprite_index=spr_martianb_attack2 image_index=0 atkcol_set(28,0,10,1.45,1,29) MoveType=1
frame_set(0,0,0.05)
if animFrame=1 {image_index=1 sentflying=3*image_xscale PlaySound(snd_martianb7) PlaySoundNoStack(snd_swing) ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if animFrame>1.5 if ground {animFrame+=0.1 sprite_index=spr_martianb_attack2 image_index=0 sentflying=0 atk=0} else {image_index=1 sprite_index=spr_martianb_attack2 sentflying=3*image_xscale atk=1}

if animFrame>3 and ground {canmove=1}
}


if anim=13
{if animFrame=0 {specialcheck0=300 specialtimes[0]=0}
sprite_index=spr_martianb_attack3
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.25)
frame_set(4,1,0.25)
frame_set(5,2,0.25)
frame_set(6,3,0.25)
frame_set(7,1,0.25)
frame_set(8,2,0.25)
frame_set(9,3,0.25)
frame_set(10,1,0.5)
frame_set(11,2,0.5)
frame_set(12,3,0.5)
frame_set(13,1,0.5)
frame_set(14,2,0.5)
frame_set(15,4,0.2) if animFrame=16
{
projectile_create(x+29*image_xscale,y,z-56,-32,spr_martian_stunproj,4*image_xscale,mask_small,spr_hitflash,0.05,0,2,0,0)
projectile.dizzyAtk=1
}
frame_set(16,5,0.5)
frame_set(17,6+specialtimes[0],0.05) if animFrame>17 if specialtimes[0]<3.5 specialtimes[0]+=0.1
frame_set(18,1,0.5)
if animFrame>18.5 canmove=1
}

if anim=14 //Rapier Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)
if animFrame=0 {specialtimes[0]=0}
canbeGrabbed=0
MoveType=1 damage=0.2 isCut=1 HitSound=snd_cut selfatk.HitSpark=spr_blood
sprite_index=spr_martianb_attack4

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
	atkcol_set(48,0,3,2.5,1,96)
	
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.05)
frame_set(3,3,0.25) if animFrame=4 PlaySound(choose(snd_martianb4,snd_martianb5))
frame_set(4,4+specialtimes[0],0.01)

if animFrame=clamp(animFrame,4,4.99){
	if !audio_is_playing(snd_swing5) PlaySound(snd_swing5)
	atk=1 sentflying=2*image_xscale specialtimes[0]+=0.5 if specialtimes[0]=10 specialtimes[0]=0
} else { atk=0 sentflying=0}
frame_set(5,16,0.05)
if animFrame>4 specialtimes[0]+=0.25 if specialtimes[0]=9 specialtimes[0]=0 
frame_set(6,17,0.5)
frame_set(7,18,0.5)
if animFrame>6.5 canbeGrabbed=1

if animFrame>7.5 {atk=0 canmove=1}
}


if anim=65 //Cannon Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)
if animFrame=0 {specialtimes[0]=0}
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_martianb_attack5


frame_set(0,0,0.1) if animFrame=1 PlaySound(snd_martianb2)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) if animFrame=6
{projectile_create(x+66,y,z-61,32,spr_martianb_proj,4*image_xscale,mask_small,spr_hitflash,0.25,1,1,4,-4)
oControl.quakeFX=10 PlaySound(snd_explosion)
}
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.25)
frame_set(9,9,0.25)
frame_set(10,4,0.25)

if animFrame>10.5 {atk=0 canmove=1}
}


if anim=100 ///Intro
{sprite_index=spr_martianb_intro
	
frame_set(0,0,0.5)
frame_set(1,1,0.5)
frame_set(2,2,0.5)
frame_set(3,3,0.5)
frame_set(4,4,0.5)
frame_set(5,5,0.5)
frame_set(6,6,0.5)
frame_set(7,7,0.05)
frame_set(8,8,0.1) if animFrame=9 {PlaySound(snd_martianb1)}
frame_set(9,9,0.1)
frame_set(10,10,0.005) 
frame_set(11,11,0.1)
frame_set(12,12,0.1)
if animFrame>12.5 {atk=0 canmove=1}
}