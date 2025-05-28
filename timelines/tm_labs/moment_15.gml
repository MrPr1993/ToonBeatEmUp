/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=596-2
{
PlaySound(snd_carengine2)


en6=instance_create(__view_get( e__VW.XView, 0 )-64,190,oEnemy1)
with en6
{canmove=0 anim=2500 image_xscale=1 specialhit=burglarbike_hit canbeGrabbed=0 enemy_switch("MR.LAR",0)}
en5=instance_create(__view_get( e__VW.XView, 0 )+320+64,240,oEnemy1B)
with en5
{canmove=0 anim=2500 image_xscale=-1 specialhit=burglarbike_hit canbeGrabbed=0 enemy_switch("MR.LAD",0)
}

////
if playernumber>=2 {P3en1=instance_create(__view_get( e__VW.XView, 0)-64,170,oEnemy1)
with P3en1 {image_xscale=-1 enemy_switch("MR.LAR",0) canAttack=5 alarm[1]=60}}

if playernumber>=3 {P3en2=instance_create(__view_get( e__VW.XView, 0)-64,224,oEnemy1B)
with P3en2 {image_xscale=-1 enemy_switch("MR.LAD",0) canAttack=5 alarm[1]=60}}

if playernumber>=4 {P3en3=instance_create(__view_get( e__VW.XView, 0)-64,270,oEnemy1)
with P3en3 {image_xscale=-1 enemy_switch("MR.LAR",0) canAttack=5 alarm[1]=60}}
////


}
else
{
timeline_position-=1
}

