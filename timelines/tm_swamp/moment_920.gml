/// @description Plants Appear


if __view_get( e__VW.XView, 0 )>=4680
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oPlant)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oPlant)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

}
else
{
timeline_position-=1
}