enemy_endstep()
throw_step()

overwriteAttack=1

if anim=10
{
sprite_index=spr_catman_attack
if animFrame=0 special0=0
selfatk.isCut=1 damage=0.02 selfatk.MoveType=0 selfatk.recovery=4 selfatk.HitSound=snd_cut selfatk.HitSpark=spr_blood
frame_set(0,0,0.25)
frame_set(1,1,0.05) if animFrame=2 {if special0=0 zSpeed=-6 special0=1}
frame_set(2,2,0.25) if animFrame=clamp(animFrame,2,4) {atk=1 sentflying=2*image_xscale} else {atk=0 sentflying=0}
frame_set(3,3,0.25) if animFrame=4 if ground animFrame=5 else animFrame=2
if ground and animFrame=clamp(animFrame,2,4) animFrame=2
frame_set(4,0,0.25)
frame_set(5,0,0.25)
frame_set(6,1,0.25)

if animFrame>6.75 {canmove=1}
}