/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=532
{
en2=instance_create(__view_get( e__VW.XView, 0 )+320+64,176+32,oEnemy1)
with en2
{canmove=0 anim=2500 image_xscale=-1 specialhit=burglarbike_hit canbeGrabbed=0
}

}
else
{
timeline_position-=1
}

