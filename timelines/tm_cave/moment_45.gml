/// @description

if __view_get( e__VW.XView, 0 )>=3280-2-320-640
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,190+32,oGoblin)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}	
en2=instance_create(__view_get( e__VW.XView, 0)-64,190+32,oGoblin)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}	
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,190+32,oGoblin)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,190+32,oGoblin)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}

