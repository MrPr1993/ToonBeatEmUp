/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3920-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oLadybot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+24,oLadybot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}

////
if playernumber>=3 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200-24,oRobot)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}}

if playernumber>=2 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+48,oEnemy1B)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oEnemy1)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}}
////



}
else
{
timeline_position-=1
}

