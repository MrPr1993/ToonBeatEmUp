/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5560-2-320+240
{
en6=instance_create(__view_get( e__VW.XView, 0)-64,196,oMartian)
with en6 {name="INVA" image_xscale=1 canAttack=5 current_pal=1 alarm[1]=60 weapon_add("TASER")}
en7=instance_create(__view_get( e__VW.XView, 0)-64,244,oMartian)
with en7 {name="INVA" image_xscale=1 canAttack=5 current_pal=1 alarm[1]=60 weapon_add("TASER")}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196,oMartian)
with P2en1 {enemy_switch("INVA",0) weapon_add("TASER") canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196+32,oMartian)
with P2en2 {enemy_switch("INVA",0) weapon_add("TASER") canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 196+64,oMartian)
with P2en3 {enemy_switch("INVA",0) weapon_add("TASER") canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

