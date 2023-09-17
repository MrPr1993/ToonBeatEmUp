/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=9000-2-320
{
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oSneak)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSneak)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

