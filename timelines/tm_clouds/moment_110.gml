/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oBear)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oBear)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oBear)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	
en4=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oHarpyE)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}
en5=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oHarpyE)
with en5 {image_xscale=1 canAttack=5 alarm[1]=60}
en6=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oHarpyE)
with en6 {image_xscale=1 canAttack=5 alarm[1]=60}	
}
else
{
timeline_position-=1
}

