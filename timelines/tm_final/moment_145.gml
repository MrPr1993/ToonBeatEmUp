/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=10380-2-320-320
{
en8=instance_create(__view_get( e__VW.XView, 0)+320+64,208-32,oSneak)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60}
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oSneak)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=60}	
en10=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oSneak)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=60}
en11=instance_create(__view_get( e__VW.XView, 0)+320+64,208+32,oSneak)
with en11 {image_xscale=-1 canAttack=5 alarm[1]=60}

}
else
{
timeline_position-=1
}

