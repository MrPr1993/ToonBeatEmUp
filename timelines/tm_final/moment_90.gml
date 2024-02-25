/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=6340-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0)+320+64,208-24,oLadybot)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60}

en7=instance_create(__view_get( e__VW.XView, 0)+320+64,208-64,oLadybot)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

