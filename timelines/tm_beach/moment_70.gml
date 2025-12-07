/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3920-2-640-320
{





////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+48, 454,oLobster)
with P2en1 {canAttack=5 alarm[1]=40 image_xscale=-1}}

en1=instance_create(__view_get( e__VW.XView, 0)+320+48,454+16,oLobster)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=40 canAttack5Move=11}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 454+32,oLobster)
with P2en2 {canAttack=5 alarm[1]=40 image_xscale=-1}}

en2=instance_create(__view_get( e__VW.XView, 0)+320+48,454+48,oLobster)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=40 canAttack5Move=11}


if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+48, 454+64,oLobster)
with P2en3 {canAttack=5 alarm[1]=40 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}
