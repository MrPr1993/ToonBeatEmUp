/// @description Skeletons

if __view_get( e__VW.XView, 0 )>=6680-2
{
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oSkeleton)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=30
	}

en10=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oSkeleton)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=30
	current_pal=1 name="SKELIE" my_pal_sprite=spr_mummypal enemy_switch("SKELIE",0)
	}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 200-32,oSkeleton)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oSkeleton)
with P2en2 {enemy_switch("SKELIE",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oSkeleton)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////


}
else
{
timeline_position-=1
}