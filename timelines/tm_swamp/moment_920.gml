/// @description Plants Appear


if __view_get( e__VW.XView, 0 )>=4680
{


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oPlant)
with P2en1 {canAttack=5 alarm[1]=30 canAttack5Move=12 image_xscale=-1}}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,174,oPlant)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 198,oPlant)
with P2en2 {canAttack=5 alarm[1]=30 canAttack5Move=12 image_xscale=-1}}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,222,oPlant)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 246,oPlant)
with P2en3 {canAttack=5 alarm[1]=30 canAttack5Move=12 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}