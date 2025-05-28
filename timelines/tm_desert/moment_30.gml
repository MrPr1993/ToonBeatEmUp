/// @description Enemy Area

if __view_get( e__VW.XView, 0 )>=1556-2
{
en8=instance_create(__view_get( e__VW.XView, 0)+320+96,200+24,oStrongBurg)
with en8 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("MR.DALE",0)
	}


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+96, 200+48,oStrongBurg)
with P2en1 {enemy_switch("MR.DALE",0) canAttack=5 alarm[1]=60 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200-32,oEnemy1)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 200+64,oEnemy1B)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////
enemy_switch("MR.DALE",0)
}
else
timeline_position-=1
