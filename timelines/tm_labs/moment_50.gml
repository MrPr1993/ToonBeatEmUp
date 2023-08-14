/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=1530-2-320+640+320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oRobot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

}
else
{
timeline_position-=1
}

