/// @description Pyramid Area

if __view_get( e__VW.XView, 0 )>=5288-2-320
{


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,260-64,oCobra)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,260-32,oCobra)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("VIPERA",0)}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oCobra)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,260+32,oCobra)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("VIPERA",0)}	

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,260+64,oCobra)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
timeline_position-=1
