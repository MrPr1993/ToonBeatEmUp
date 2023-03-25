/// @description Skeletons

if __view_get( e__VW.XView, 0 )>=6680-2
{
en9=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oSkeleton)
with en9 {image_xscale=-1 canAttack=5 alarm[1]=30
	}

en10=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oSkeleton)
with en10 {image_xscale=-1 canAttack=5 alarm[1]=30
	current_pal=1 name="SKELIE" my_pal_sprite=spr_mummypal
	}

}
else
{
timeline_position-=1
}