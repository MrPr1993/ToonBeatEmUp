/// @description Enemy Area
if __view_get( e__VW.XView, 0 )>=692-320-2
{
///Instantly remove NPCs to lcear some space
with oCameoChar instance_destroy();

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oSneak)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSneak)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	
}
else
timeline_position-=1
