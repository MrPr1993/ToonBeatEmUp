/// @description Baddies Appear 8 - Castle start

if __view_get( e__VW.XView, 0 )>=7440-320-2-320
{
en3=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oBeeLady)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("WASPELLA",0)
	}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,260,oBeeLady)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("WASPELLA",0)
	}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)-64,208,oBear)
with P2en1 {canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)-64,200+32,oBear)
with P2en2 {canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)-64,200+60,oBear)
with P2en3 {canAttack=5 alarm[1]=60 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

////For castle area
//6916 - Book Area
//7566 - Edge of Table
//8206 - More Table - Furniture
//8846 - Boss Area
//
//
//