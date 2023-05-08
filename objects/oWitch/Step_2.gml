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
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150
	anim=12 else 
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150/2
	anim=11 else anim=13
}

if anim=11 ///Sumon Plant
{
sprite_index=spr_witch_attack1
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25) //if animFrame=11
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)
if animFrame>15.75 {canmove=1 atk=0}
}

if anim=12 ///Fire
{
sprite_index=spr_witch_attack2
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.5)
frame_set(3,2,0.5)
frame_set(4,2,0.5)
frame_set(5,2,0.5)
frame_set(6,2,0.5)
frame_set(7,2,0.5)
frame_set(8,2,0.5)
frame_set(9,2,0.5)
frame_set(10,1,0.25) //if animFrame=11
frame_set(11,3,0.25)
frame_set(12,4,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.05)
frame_set(15,0,0.25)
if animFrame>15.75 {canmove=1 atk=0}
}

if anim=13 ///Teleport
{if animFrame=0 sprite_index=spr_witch_attack1
frame_set(0,0,0.1) if animFrame=1
{
var teled=0; repeat(6) {dust_make(x-10,y,z-4*teled,-0.1,0,-0.1-0.1*teled) teled+=1}
teled=0; repeat(6) {dust_make(x+10,y,z-4*teled,0.1,0,-0.1-0.1*teled) teled+=1}

if instance_nearest(x,y,oPlayer).x< __view_get( e__VW.XView, 0 )+160
x=__view_get( e__VW.XView, 0 )+160+32*random_range(1,5)
else
x=__view_get( e__VW.XView, 0 )+32*random_range(1,5)

var teled=0; repeat(6) {dust_make(x-10,y,z-4*teled,-0.1,0,-0.1-0.1*teled) teled+=1}
teled=0; repeat(6) {dust_make(x+10,y,z-4*teled,0.1,0,-0.1-0.1*teled) teled+=1}
sprite_index=spr_witch_attack2
}
frame_set(1,1,0.05)
frame_set(2,0,0.1)

if animFrame>2.75 {canmove=1 atk=0}
}

if anim=100 ///Intro
{if animFrame=0 sprite_index=spr_witch_intro
frame_set(0,0,0.01)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.1)
frame_set(5,5,0.05)
frame_set(6,6,0.1)
frame_set(7,7,0.01)
frame_set(8,8,0.1)
frame_set(9,9,0.05) if animFrame=10 {
bowl=instance_create_depth(x+16*image_xscale,y+1,-1,oCameoChar) 
bowl.z=z-57 bowl.image_xscale=image_xscale;
with bowl
{
shadow=mask_none
sprite_index=spr_witch_bowl anim=99 image_speed=0

newscript=function()
{z+=6
if z>0 {
flashFX(x,y,z,sprite_index,1,0.5,99,image_xscale,1,c_white,1)
instance_destroy();
}
}

}

}
frame_set(10,10,0.01)
frame_set(11,11,0.1)
frame_set(12,12,0.1)
frame_set(13,13,0.01) if animFrame=14 sprite_index=spr_witch_attack1
frame_set(14,0,0.1)
if animFrame>14.5 canmove=1
}