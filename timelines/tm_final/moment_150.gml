/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=10380-2-320
{
en12=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oStrongBurg)
with en12 {image_xscale=-1 canAttack=5 alarm[1]=60}

en13=instance_create(__view_get( e__VW.XView, 0)-64,208,oBoxer)
with en13 {image_xscale=1 canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,200,oSneak)
with P2en1 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,220,oSneak)
with P2en2 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,240,oSneak)
with P2en3 {enemy_switch("MR.PROWL",0) image_xscale=-1 canAttack=5 alarm[1]=60}}
////

}
else
{
timeline_position-=1
}

