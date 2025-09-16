/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oSnowGirl)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oFairy)
with P2en1 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 230,oFairy)
with P2en2 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 260,oFairy)
with P2en3 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

