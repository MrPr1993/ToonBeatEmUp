/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3920-2-320-640
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,188,oShroom)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oShroom)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,188,oGoblin)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)-64,220,oGoblin)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

