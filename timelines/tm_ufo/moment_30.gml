/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-320-640
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oAlienRobot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oAlienRobot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oAlienRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

