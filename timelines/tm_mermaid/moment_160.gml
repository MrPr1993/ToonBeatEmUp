/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=4322-2
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,170,oSiren)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,214,oSiren)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,264,oSiren)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=30 canAttack5Move=12}

}
else
timeline_position-=1
