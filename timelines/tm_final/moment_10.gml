/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=128
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,176,oSneak)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,176+32,oSneak)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 weapon_add("TOMMYGUN")}

en5=instance_create(__view_get( e__VW.XView, 0)+320+64,176+16,oFatBurglar)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60}


}
else
{
timeline_position-=1
}

