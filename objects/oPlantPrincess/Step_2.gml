/// @description Insert description here
// You can write your code in this editor
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
	anim=choose(13,14,12) else anim=11
}

if anim=11 ///Bite Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_plantprincess_attack1

frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
if animFrame=clamp(animFrame,3,4.99)
{atk=1 sentflying=8*image_xscale} else { atk=0 sentflying=0}
frame_set(4,4,0.5)
frame_set(5,5,0.05)
frame_set(6,2,0.5)
if animFrame>6.5 canbeGrabbed=1

if animFrame>6.5 {atk=0 canmove=1}
}

if anim=12 ///Slam Attack
{sprite_index=spr_plantprincess_attack2
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25) if animFrame=clamp(animFrame,1,5.99) sentflying=4*image_xscale else sentflying=0
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25) 
if animFrame=clamp(animFrame,6,6.99) atk=1 else atk=0
frame_set(7,7,0.5)
frame_set(8,3,0.05)
frame_set(9,2,0.25)
frame_set(10,1,0.25)
if animFrame>10.7 canmove=1
}

if anim=13 ///Slam Attack
{sprite_index=spr_plantprincess_attack3
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.05)
frame_set(3,3,0.25) 
frame_set(4,4,0.1)
frame_set(5,5,0.05)
frame_set(6,3,0.05) 
frame_set(7,1,0.5)
if animFrame>7.7 canmove=1
}

if anim=14 ///Slam Attack
{sprite_index=spr_plantprincess_attack4
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.05)
frame_set(3,3,0.25) 
frame_set(4,4,0.1)
frame_set(5,5,0.05)
frame_set(6,3,0.05) 
frame_set(7,1,0.5)
if animFrame>7.7 canmove=1
}


