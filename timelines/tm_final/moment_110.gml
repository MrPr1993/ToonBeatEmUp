/// @description Baddies Appear 5

if __view_get( e__VW.XView, 0 )>=7480-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0)+320+64,208-32,oSneak)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MS.CHI",0)}
en7=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oMonk)
with en7 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.SLINK",0)}	
en8=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oSneak)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MS.CHI",0)}
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,208+32,oMonk)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.SLINK",0)}

}
else
{
timeline_position-=1
}

