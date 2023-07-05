/// @description Baddies Appear 8

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)-64,176,oMerman)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)-64,210,oMerman)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

