if __view_get( e__VW.XView, 0 )>=1585
{
en4=instance_create(1808,192,oFatBurglar)
///2848
with en4
{image_xscale=-1 z=-320 canmove=0 anim=11 PlaySoundNoStack(snd_fatburglar)
sprite_index=AtkSpr2 AnimFrame=2.9 ground=0 zSpeed=8 specialcheck2=0
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166+24,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166+48,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}
