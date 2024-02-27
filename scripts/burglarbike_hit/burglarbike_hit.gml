// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function burglarbike_hit(){
	
	if HitType!=0 or hp<=0 
	{atk=0 selfatk.atk=0
specialhit=-1 canbeGrabbed=1
	event_user(1) canBounce=1
		ground=0
	zSpeed=-4

	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	bike=instance_create_depth(x,y,-1,oBikeBomb)
	bike.my_pal_sprite=my_pal_sprite bike.current_pal=current_pal bike.image_xscale=image_xscale
	bike.sentflying=4*image_xscale
	
		if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	immune=0 recovery=10
	event_user(11)
	}
	else
	{anim=2500 atk=0 specialtimes[1]=60
	event_user(11)
	}

}