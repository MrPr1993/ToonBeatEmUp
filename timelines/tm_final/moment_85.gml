/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=6340-2-320-320
{
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,208-24,oMonk)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,208+24,oMonk)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

