// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_merman(){
	overwriteStand=1
	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1
	script_execute(animsetup_zombie)




if anim=10
{
if targetEnemy.x=clamp(targetEnemy.x,x-60,x+60)
anim=12
else
{
anim=11
if targetEnemy.x=clamp(targetEnemy.x,x-80,x+80)
specialcheck0=0 else specialcheck0=1
}
if weaponspr=-1 anim=12
}

if anim=11
{atkcol_set(46,0,28,2.95,1,19)
damage=weaponDamage


sprite_index=spr_merman_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=clamp(animFrame,2,3) {sentflying=((4*image_xscale)*specialcheck0) atk=1} else {atk=0 sentflying=0}
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)
if animFrame>4.5 {canmove=1}
}

if anim=12
{
	atkcol_set(31,0,39,1.75,1,33)
 sprite_index=spr_merman_punch damage=0.1 
frame_set(0,0,0.25) MoveType=1 
frame_set(1,1,0.1) if animFrame=clamp(animFrame,2,3) {atk=1} else {atk=0}
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)



if animFrame>4.5 {canmove=1}
}



}