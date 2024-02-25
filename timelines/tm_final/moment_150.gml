/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=10380-2-320
{
en12=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oStrongBurg)
with en12 {image_xscale=-1 canAttack=5 alarm[1]=60}

en13=instance_create(__view_get( e__VW.XView, 0)-64,208,oBoxer)
with en13 {image_xscale=1 canAttack=5 alarm[1]=60}

}
else
{
timeline_position-=1
}

