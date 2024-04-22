/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-320-640
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,176+16,oAlienRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oAlienRobot)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,240+16,oAlienRobot)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

