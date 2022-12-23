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
{
sprite_index=spr_martian_attack
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
frame_set(15,4,0.2)
frame_set(16,5,0.5)
frame_set(17,6,0.05)
frame_set(18,0,0.5)
if animFrame>18.5 canmove=1
}