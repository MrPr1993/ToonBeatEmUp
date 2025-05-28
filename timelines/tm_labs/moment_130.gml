/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224-32,oNurse)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,224+32,oNurse)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,224,oLadybot)
with en3 {if playernumber>=2 y-=16 image_xscale=-1 canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,224+16,oRobot)
with P2en1 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,164,oNurse)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,280,oNurse)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60}}
////



}
else
{
timeline_position-=1
}

