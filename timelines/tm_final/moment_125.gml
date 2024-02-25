if __view_get( e__VW.XView, 0 )>=9000-2-320-320
{
en6=instance_create(__view_get( e__VW.XView, 0)-64,208-16,oSneak)
with en6 {image_xscale=1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}
en7=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oSwing)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60}
en8=instance_create(__view_get( e__VW.XView, 0)-64,208-16,oSneak)
with en8 {image_xscale=1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}
}