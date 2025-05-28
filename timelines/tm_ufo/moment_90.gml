/// @description Baddies Appear 4

if __view_get( e__VW.XView, 0 )>=4060-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,196,oSpacer)
with en1 {image_xscale=1 canAttack=5 alarm[1]=60}
en2=instance_create(__view_get( e__VW.XView, 0)-64,244,oSpacer)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60}	


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oMartian)
with P2en1 {enemy_switch("EXTA",0) weapon_add("LASERGUN") canAttack=5 alarm[1]=30 image_xscale=-1}}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,194,oMartian)
with en3 {enemy_switch("EXTA",0) image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("LASERGUN")}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 216,oMartian)
with P2en2 {enemy_switch("EXTA",0) weapon_add("LASERGUN") canAttack=5 alarm[1]=30 image_xscale=-1}}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oMartian)
with en4 {enemy_switch("EXTA",0) image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("LASERGUN")}	

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 254,oMartian)
with P2en3 {enemy_switch("EXTA",0) weapon_add("LASERGUN") canAttack=5 alarm[1]=30 image_xscale=-1}}
////


}
else
{
timeline_position-=1
}

