/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1

if anim=10
{special0=0
if distance_to_point(targetEnemy.x,targetEnemy.y)>40
anim=12
else
anim=11
}

if anim=11
{
hit=0
atkcol_set(35,0,42,1.85,1,22) MoveType=1 damage=0.1
frame_set(0,0,0.1) if animFrame>1 sprite_index=spr_cobra_kick else sprite_index=spr_cobra_attack
frame_set(1,0,0.1) if animFrame=clamp(animFrame,2,3) {atk=1 sentflying=2*image_xscale} else {atk=0 sentflying=0}
frame_set(2,1,0.5)
frame_set(3,2,0.1) 
frame_set(4,0,0.1)
if animFrame>4.75 {canmove=1}
}

if anim=12
{sprite_index=spr_cobra_attack
hit=0
atkcol_set(35,0,42,1.85,1,22) MoveType=1 damage=0.5
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=clamp(animFrame,3,5) atk=1 else atk=0
frame_set(2,2,0.5) if animFrame<3 atkcol_set(30,0,58,2.05,1,19)
else if special0=0 atkcol_set(50,0,46,3.05,1,35) else atkcol_set(92,0,46,0.85,1,35)
frame_set(3,3,0.5) 
frame_set(4,4,0.5) if animFrame=5 {if special0!=24 {special0+=1 animFrame=3}}
frame_set(5,2,0.25)
frame_set(6,0,0.25)
if animFrame>6.75 {canmove=1}
}

