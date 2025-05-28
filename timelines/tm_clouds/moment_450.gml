/// @description Baddies Appear 7 - Castle start

if __view_get( e__VW.XView, 0 )>=6480-2-320
{
timer_set(1)	

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oBeeLady)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	enemy_switch("HONEYDEW",0)
	}

en3=instance_create(__view_get( e__VW.XView, 0)-64,208,oPlant)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("PETI",0)}	

en4=instance_create(__view_get( e__VW.XView, 0)-64,260,oPlant)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("PETI",0)}	

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oBeeLady)
with P2en1 {enemy_switch("HONEYDEW",0) canAttack=5 alarm[1]=60 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oPlant)
with P2en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("PETI",0)}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oPlant)
with P2en3 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("PETI",0)}}
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