/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=6340-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oLadybot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oLadybot)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

