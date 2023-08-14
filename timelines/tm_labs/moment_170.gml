/// @description Baddies Appear 8 - Rocket Variants?

if __view_get( e__VW.XView, 0 )>=7440-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,180+24,oLadybot)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)-64,180+64,oLadybot)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,180+48,oLadybot)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

