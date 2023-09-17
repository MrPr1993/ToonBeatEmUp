/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5560-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0)-64,176,oMartian)
with en6 {name="INVA" image_xscale=1 canAttack=5 current_pal=1 alarm[1]=60 weapon_add("TASER")}
en7=instance_create(__view_get( e__VW.XView, 0)-64,240,oMartian)
with en7 {name="INVA" image_xscale=1 canAttack=5 current_pal=1 alarm[1]=60 weapon_add("TASER")}	

}
else
{
timeline_position-=1
}

