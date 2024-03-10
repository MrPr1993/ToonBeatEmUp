/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=596-2
{
PlaySound(snd_carengine2)


en6=instance_create(__view_get( e__VW.XView, 0 )-64,190,oEnemy1)
with en6
{canmove=0 anim=2500 image_xscale=1 specialhit=burglarbike_hit canbeGrabbed=0 enemy_switch("MR.LAR",0)}
en5=instance_create(__view_get( e__VW.XView, 0 )+320+64,240,oEnemy1B)
with en5
{canmove=0 anim=2500 image_xscale=-1 specialhit=burglarbike_hit canbeGrabbed=0 enemy_switch("MR.LAR",0)
}

}
else
{
timeline_position-=1
}

