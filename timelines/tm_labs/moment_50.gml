/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=1530-2-320+640+320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 }
if playernumber>=2 en3.y-=24
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+48,oRobot)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,176,oNurse)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oNurse)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60}}
////

}
else
{
timeline_position-=1
}

