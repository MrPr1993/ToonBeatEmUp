/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3920-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oLadybot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,256,oLadybot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=11}

}
else
{
timeline_position-=1
}

