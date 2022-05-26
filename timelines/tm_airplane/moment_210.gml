/// @description /Make sure to only count the previous ones, otherwise you'll get an error.



if __view_get( e__VW.XView, 0 )>=532
{
en5=instance_create(__view_get( e__VW.XView, 0 )+320+16,182,oSneak)
with en5
{alarm[1]=10	canAttack=5 image_xscale=-1
	}
en6=instance_create(__view_get( e__VW.XView, 0 )+320+16,216,oSneak)
with en6{alarm[1]=10 canAttack=5 image_xscale=-1
}


}
else
{
timeline_position-=1
}

