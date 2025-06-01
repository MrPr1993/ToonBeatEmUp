/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3702+320
{
en7=instance_create(__view_get( e__VW.XView, 0 )+320+24,176,oCobra)
with en7
{image_xscale=-1 enemy_switch("VIPERA",0) canAttack=5 alarm[1]=60}

en8=instance_create(__view_get( e__VW.XView, 0 )+320+24,214,oCobra)
with en8
{image_xscale=-1 enemy_switch("VIPERA",0) canAttack=5 alarm[1]=60}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 176+16,oCatman)
with P2en1 {//enemy_switch("NOUSAGI",0) 
	canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 176+32,oCatman)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 176+48,oCatman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

