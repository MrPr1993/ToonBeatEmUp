/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1800
{
en1=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
with en1 {alarm[1]=30 image_xscale=1 canAttack=5}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-64, 176+16,oEnemy1B)
with P2en1 {//enemy_switch("NOUSAGI",0) 
	canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-64, 176+32,oEnemy1)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-64, 176+48,oEnemy1B)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////




}
else
{
timeline_position-=1
}

