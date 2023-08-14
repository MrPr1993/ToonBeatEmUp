/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,180+24,oSlime)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,180+64,oSlime)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

