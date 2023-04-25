/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320
{

en7=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oSlime)
with en7 {image_xscale=1 canAttack=5 alarm[1]=60}

en8=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSlime)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

