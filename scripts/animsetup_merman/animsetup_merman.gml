// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_merman(){
	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1
	script_execute(animsetup_enemy)



if anim=10
{
if targetEnemy.x=clamp(targetEnemy.x,x-60,x+60)
anim=12
else
{
if weaponspr=-1 {anim=65
	
	} else {anim=11 if oControl.betatest=1 if keyboard_check(vk_control) anim=13}
if targetEnemy.x=clamp(targetEnemy.x,x-80,x+80)
specialcheck0=0 else specialcheck0=1
}
if weaponspr=-1 anim=65
}

if anim=11
{atkcol_set(46,0,28,2.95,1,19)
damage=weaponDamage
MoveType=1

sprite_index=spr_merman_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1) if AnimFrame=clamp(AnimFrame,2,3) {sentflying=((4*image_xscale)) atk=1} else {atk=0 sentflying=0}
if AnimFrame=2 {ground=0 zSpeed=-3}
frame_set(2,2,0.1) if AnimFrame=clamp(AnimFrame,2,2.9) if ground {AnimFrame=3 sentflying=0} else AnimFrame=2.5
frame_set(3,3,0.05)
frame_set(4,0,0.1)
if AnimFrame>4.5 {canmove=1}
}

if anim=12
{
	atkcol_set(31,0,39,1.75,1,33)
 sprite_index=spr_merman_punch damage=0.1 
frame_set(0,0,0.25) MoveType=1 
frame_set(1,1,0.1) if AnimFrame=clamp(AnimFrame,2,3) {atk=1} else {atk=0}
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)

if AnimFrame>4.5 {canmove=1}
}

if anim=13
{sprite_index=spr_merman_throws

///Thow spear
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-21,-42,76,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-55,-68,29,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-58,-68,29,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,-21,-77,26,weaponcolor)

frame_set(0,0,0.25)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.25)
if AnimFrame=4
{PlaySound(snd_swing)
projectile_create(x,y+1,z-70,16,weaponspr,6*image_xscale,spr_merman_spear,spr_blood,weaponDamage,1,1,HitForce,HitForceZ)
projectile.HitSound=snd_cut projectile.canDestroy=0

weaponspr=-1
}
frame_set(4,4,0.5)
frame_set(5,5,0.05)
frame_set(6,0,0.1)
if AnimFrame>6.5 {canmove=1}
}

if anim=65 ///Air Kick
{
if AnimFrame=clamp(AnimFrame,0,0.9)
weaponanim(weaponspr,weaponIndex,-9,-31,42*image_xscale,weaponcolor)
if AnimFrame=clamp(AnimFrame,1,1.9)
weaponanim(weaponspr,weaponIndex,-24,-43,64*image_xscale,weaponcolor)

if AnimFrame=0 sprite_index=spr_merman_airkick atkcol_set(14,0,10,1.45,1,29) MoveType=1
frame_set(0,0,0.05)
if AnimFrame=1 {image_index=1 sentflying=3*image_xscale PlaySoundNoStack(snd_swing) ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if AnimFrame>1.5 if ground {AnimFrame+=0.1 sprite_index=ThrownSpr image_index=10 sentflying=0 atk=0} else {sprite_index=spr_merman_airkick sentflying=3*image_xscale atk=1}

if AnimFrame>3 and ground {canmove=1}
}

}