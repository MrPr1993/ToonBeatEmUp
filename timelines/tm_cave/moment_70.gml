/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=2640-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,188,oShroom)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("CERANA",0)}	

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,220,oShroom)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("CERANA",0)}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,188,oGoblin)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)-64,220,oGoblin)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-64, 240,oShroom)
with P2en1 {enemy_switch("CERANA",0) canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+64, 240,oGoblin)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+64, 260,oGoblin)
with P2en3 {canAttack=5 alarm[1]=60 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

