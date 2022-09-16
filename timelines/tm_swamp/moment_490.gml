/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3594+640+320+640-8-2-320
{
en6=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oSneak)
with en6
{alarm[1]=30 image_xscale=-1 canAttack=5
	}
en7=instance_create(__view_get( e__VW.XView, 0 )+320+16,192+64,oSneak)
with en7{
	alarm[1]=30 image_xscale=-1 canAttack=5
	}
}
else
{
timeline_position-=1
}

