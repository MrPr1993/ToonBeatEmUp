/// @description /Next robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{

//with fakeenS {x=__view_get( e__VW.XView, 0 )+320+16 hspeed=-4 isDepth=0 sprite_index=spr_shadow}
//with fakeen {x=__view_get( e__VW.XView, 0 )+320+16 hspeed=-4 visible=1 sprite_index=spr_hwolf_move isDepth=1 image_xscale=-1}

}
else
timeline_position-=1

