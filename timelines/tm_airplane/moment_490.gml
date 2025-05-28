/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3594+640+320+640-8-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oSneak)
with en6
{alarm[1]=30 image_xscale=-1 canAttack=5 enemy_switch("MR.SIDLE",0)
	}
en7=instance_create(__view_get( e__VW.XView, 0 )+320+16,192+64,oSneak)
with en7{
	alarm[1]=30 image_xscale=-1 canAttack=5 enemy_switch("MR.SIDLE",0)
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 170+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}

