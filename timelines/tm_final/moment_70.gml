/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=5200-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oSwing)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("KNIFE")}
en4=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24+16,oSwing)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("WHIP")}
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24+32,oSwing)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("HAMMER")}
en7=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24+48,oSwing)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("SHOVEL")}

}
else
{
timeline_position-=1
}

