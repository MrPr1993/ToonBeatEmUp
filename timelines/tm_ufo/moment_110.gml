/// @description Baddies Appear 5

{
if __view_get( e__VW.XView, 0 )>=4660-2-320-160
{
if specialSet8=0
{specialSet8=1
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oAlienRobot)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("DESTRON",0)}	
en2=instance_create(__view_get( e__VW.XView, 0)+320+64,244,oAlienRobot)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("DESTRON",0)}	
}
}
else
{timeline_position-=1 exit;}

if __view_get( e__VW.XView, 0 )>=4660-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oMartian)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,244,oMartian)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
timeline_position-=1
}




