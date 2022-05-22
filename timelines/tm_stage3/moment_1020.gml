/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3702+320
{
en7=instance_create(__view_get( e__VW.XView, 0 )+320+24,176,oCobra)
with en7
{image_xscale=-1 enemy_modify(spr_mummypal,1,"VIPERA",0,0.6,0.6) canAttack=3 alarm[1]=60}

en8=instance_create(__view_get( e__VW.XView, 0 )+320+24,214,oCobra)
with en8
{image_xscale=-1 enemy_modify(spr_mummypal,1,"VIPERA",0,0.6,0.6) canAttack=3 alarm[1]=60}

}
else
{
timeline_position-=1
}

