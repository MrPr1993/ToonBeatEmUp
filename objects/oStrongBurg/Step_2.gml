enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if anim=10
{
anim=11
}

if anim=11
{damage=0.2 MoveType=1
if animFrame=0 {sprite_index=spr_strongburg_hit image_index=10 specialcheck5=0}
frame_set(0,image_index,0.1) if animFrame=1 {sprite_index=spr_strongburg_spin PlaySound(snd_swing)}
frame_set(1,0,0.25) if animFrame=clamp(animFrame,1,7) {atk=1 sentflying=1*image_xscale} else {atk=0 sentflying=0}
frame_set(2,1,0.25) 
frame_set(3,2,0.25) if animFrame=clamp(animFrame,2,5) atkcol_set(1,0,45,3.15,1,56) else atkcol_set(1,0,45,6.15,1,56)
frame_set(4,3,0.25)
frame_set(5,4,0.25)
frame_set(6,5,0.25) if animFrame=7 {if specialcheck5!=6 {animFrame=1 specialcheck5+=1} else {sprite_index=spr_strongburg_hit image_index=10}}
frame_set(7,10,0.05) if animFrame>7.5 {canmove=1 anim=0}
}