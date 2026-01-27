/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1158
{


	
en5=instance_create(__view_get( e__VW.XView, 0)-64-200,180,oEntryFenceJump)
with en5
{depth=16777207 isDepth=0 rangeXAdd=-48 xAdd=-200 enemy_switch("NOUSAGI",0)
	spawnFall=spr_ninjabun_front
	moveSpr=spr_ninjabun_run
	spawnEnemy=oNinjaBun
}

en6=instance_create(__view_get( e__VW.XView, 0 )+320+16,242,oNinjaBun)
with en6
{alarm[1]=30	canAttack=5 image_xscale=-1
	}
en7=instance_create(__view_get( e__VW.XView, 0 )+320-16,246,oNinjaBun)
with en7{alarm[1]=30 canAttack=5 enemy_switch("NOUSAGI",0)}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200,oNinjaBun)
with P2en1 { current_pal=0; canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 200+32,oNinjaBun)
with P2en2 {canAttack=5 enemy_switch("NOUSAGI",0) alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 200+64,oNinjaBun)
with P2en3 { current_pal=0; canAttack=5 alarm[1]=30 image_xscale=1}}
////

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
timeline_position-=1

