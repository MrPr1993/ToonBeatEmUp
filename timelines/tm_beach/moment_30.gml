/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-640-320
{
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32+240,oMonk)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}

en6=instance_create(__view_get( e__VW.XView, 0)+320+64,200+96+240,oMonk)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60 }	

}
else
{
timeline_position-=1
}

