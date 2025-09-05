/// @description Prepare to jump from ramp
	//if oPlayer.dead=0 and oPlayer.hurt=0 and oPlayer.ground
if oControl.p1.anim=200 and oControl.p2.anim=200 and oControl.p3.anim=200 and oControl.p4.anim=200
and oControl.p1.recovery=0 and oControl.p2.recovery=0 and oControl.p3.recovery=0 and oControl.p4.recovery=0
	{
with oPlayer 
{//x=160 y=200
areaEntry=1
canControl=0
ground=1
key_right=0 key_left=0 key_up=0 key_down=0
hspeed=-16
vspeed=0
}

truck=instance_create_depth(320+196,196+8,-1,oCameoChar) with truck
{
hspeed=-20
anim=9999 sprite_index=spr_truck image_speed=0.5
shadow=spr_carshadow
}

timer_set(0)
oControl.carMode=0

var bg1	= layer_get_id("StreetBG");
layer_hspeed(bg1,-20)
var bg2	= layer_get_id("GroundImg");
layer_hspeed(bg2,-20)
var bg3	= layer_get_id("Compatibility_Background_0_bg_sky");
layer_hspeed(bg3,-20)
}
else
timeline_position-=1
