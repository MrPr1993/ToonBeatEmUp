// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function burglarbike_hit(){
	
	if anim!=4
	{
specialhit=-1 canbeGrabbed=1
	event_user(1) canBounce=1
		ground=0
	zSpeed=-4
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	bike=instance_create_depth(x,y,-1,oDisappearPart)
	bike.my_pal_sprite=my_pal_sprite bike.current_pal=current_pal bike.z=z-14
	with bike {sprite_index=spr_bike}
	event_user(11)
	}
	else
	{anim=2500 atk=0 specialtimes[1]=60
	
	}

}