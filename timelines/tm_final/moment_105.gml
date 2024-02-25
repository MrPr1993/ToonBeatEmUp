/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=7480-2-320-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oSneak)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24+16,oWrestler)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24+32,oSneak)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}

}
else
{
timeline_position-=1
}

