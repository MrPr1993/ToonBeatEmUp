/// @description Pyramid Area

if __view_get( e__VW.XView, 0 )>=4328-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oCatman)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oCatman)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 196+64-32,oCatman)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 196+64,oCatman)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 196+64+32,oCatman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
timeline_position-=1
