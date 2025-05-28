/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=598-2
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,208-24,oSneak)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,208+24,oSneak)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oFatBurglar)
with en5 {enemy_switch("MR.HUGE",0) image_xscale=-1 canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,164,oSneak)
with P2en1 {weapon_add("TOMMYGUN") image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,208+48,oSneak)
with P2en2 {weapon_add("TOMMYGUN") image_xscale=-1 canAttack=5 alarm[1]=60}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,280,oSneak)
with P2en3 {weapon_add("TOMMYGUN") image_xscale=-1 canAttack=5 alarm[1]=60}}
////

}
else
{
timeline_position-=1
}

