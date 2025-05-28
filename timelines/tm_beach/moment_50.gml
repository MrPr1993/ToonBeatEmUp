/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=3280-2-640-320-320-2
{
PlaySound(snd_carengine2)
en3=instance_create(__view_get( e__VW.XView, 0)+320+80,492,oBoxer)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=80 enemy_switch("MS.JAB",0)}

en4=instance_create(__view_get( e__VW.XView, 0 )-64,492-16,oEnemy1)
with en4
{canmove=0 anim=2500 image_xscale=1 specialhit=burglarbike_hit canbeGrabbed=0 enemy_switch("MR.LAR",0)}
en5=instance_create(__view_get( e__VW.XView, 0 )+320+64,492+16,oEnemy1B)
with en5
{canmove=0 anim=2500 image_xscale=-1 specialhit=burglarbike_hit canbeGrabbed=0 enemy_switch("MR.LAR",0)
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 492+32,oBoxer)
with P2en1 {enemy_switch("MS.JAB",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 492-16,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 492+16,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////


}
else
{
timeline_position-=1
}

