///@description Decision 1

SceneSpeedX=4

var carspawn=0;

repeat(4)
{
veh1=instance_create_depth(__view_get( e__VW.XView, 0 )+320+240+carspawn/4,diva1.y-56+carspawn,-1,oFlashFX) with veh1
{alarm[0]=0 sprite_index=spr_car image_speed=0 image_xscale=-1
wh=instance_create_depth(x,y-1,-1,oFlashFX) with wh
{alarm[0]=0 sprite_index=spr_car_wheels image_speed=0 image_xscale=-1}
}
carspawn+=24
}
