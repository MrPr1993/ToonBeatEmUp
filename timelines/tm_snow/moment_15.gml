/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=594
{
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oSneak)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60
	}


en6=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSwing)
with en6 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}///596
else
{
timeline_position-=1
}

