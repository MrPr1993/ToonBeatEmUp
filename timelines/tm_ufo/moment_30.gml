/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-320-640
{
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178,oAlienRobot)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,202,oAlienRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 226,oAlienRobot)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,250,oAlienRobot)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 274,oAlienRobot)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////




}
else
{
timeline_position-=1
}

