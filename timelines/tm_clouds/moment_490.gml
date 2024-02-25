/// @description Baddies Appear 9

if __view_get( e__VW.XView, 0 )>=8080-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,210,oPlant)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oFairy)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,210,oHarpyE)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oBear)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	
}
else
{
timeline_position-=1
}

