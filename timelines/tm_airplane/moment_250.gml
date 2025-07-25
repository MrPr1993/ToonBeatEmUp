if oControl.ambushtime>=160
{PlaySound(snd_carengine2) oControl.ambushtime=0
en6=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
with en6
{canmove=0 anim=2500 image_xscale=1 specialhit=burglarbike_hit canbeGrabbed=0}
en7=instance_create(__view_get( e__VW.XView, 0 )+320+64,176+32,oEnemy1B)
with en7
{canmove=0 anim=2500 image_xscale=-1 specialhit=burglarbike_hit canbeGrabbed=0
}
}
else
{
oControl.ambushtime++;
timeline_position-=1
}
