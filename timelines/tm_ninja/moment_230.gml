/// @description Bikers
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(enA)
{PlaySound(snd_carengine2)
en1=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
with en1
{canmove=0 anim=2500 image_xscale=1 specialhit=burglarbike_hit canbeGrabbed=0}
en2=instance_create(__view_get( e__VW.XView, 0 )+320+64,176+32,oEnemy1B)
with en2
{canmove=0 anim=2500 image_xscale=-1 specialhit=burglarbike_hit canbeGrabbed=0
}
}
else
{
timeline_position-=1
}
