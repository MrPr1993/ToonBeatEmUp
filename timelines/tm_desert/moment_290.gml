/// @description Bellydancers Appear 2

if __view_get( e__VW.XView, 0 )>=8456-2-320
{

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,196,oCatman)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,228,oCobra)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oDancer)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
timeline_position-=1
