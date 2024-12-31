/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2614
{PlaySound(snd_train)
cave=layer_get_id("CaveTiles");
layer_hspeed(cave,-8)	

en1=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,170,0,oCowboy) with en1
{canAttack=3 image_xscale=-1
enemy_switch("BUCK",0)
	}
}
else
{
timeline_position-=1
}



