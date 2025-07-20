///Super Attack
function animsetup_sofia_super() {
	if anim=50 ///
	{weaponBack=2 selfatk.image_xscale=0
	with oControl {if timecheck=-1 {timecheck=alarm[0] alarm[0]=0}}
	canSuper=0 super=0 with oShadowFX specialShow=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	if AnimFrame=0 PlaySound(snd_sofia13)

	var targeten=oEnemy1
if global.MultiVS=1 targeten=oPlayer
global.MultiSuper=isPlayer

	invincible=1

	recovery=30

	sprite_index=SuperSpr

	atk=0

	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.2)
	frame_set(3,3,0.2)
	frame_set(4,4,0.05)
	frame_set(5,5,0.5)



	if AnimFrame=clamp(AnimFrame,5,31+0.9)
	{AnimFrame+=0.1
	if image_index<6.5 image_index+=0.5 else {image_index=5}
	if image_index<6 {if AnimFrame=6.5 
	{PlaySound(snd_wind2)
	oShadowFX.colorChange=c_white
	if instance_exists(targeten) with targeten
	{//elec=instance_create(x,y+1,oAnimFX) elec.image_speed=0.5
	}
	}
	wind=instance_create_depth(random_range(camera_get_view_x(view_camera[0])-64,camera_get_view_x(view_camera[0])+320+64),random_range(camera_get_view_y(view_camera[0])+16,camera_get_view_y(view_camera[0])+240-16),depth,oAnimFX)
	wind.isDepth=0 wind.depth=-99999 wind.hspeed=16
	wind.sprite_index=spr_sofia_wind wind.image_speed=0.05
	}
	else oShadowFX.colorChange=c_black
	}



	      if AnimFrame<=6 ///Clear Screen
	   {oShadowFX.colorChange=c_black
	        if instance_exists(targeten) 
	   {targeten.watchSourceX=x
	   with targeten
	   	   	if isPlayer!=global.MultiSuper
	   enemy_freeze(ThrownSpr,GrabFrame,0,0)
	}

	}

	///Sofia
	if AnimFrame=clamp(AnimFrame,5,16)
	{oControl.quakeFXTime=2

	    if instance_exists(targeten) 
	   {targeten.watchSourceX=x 
	   with targeten
	   	   {
	   if canact=1 and act=1 and immune=0
	   and Throw=0 and dead=0
	   //and (x>camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2 and x<camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2)
		   	if isPlayer!=global.MultiSuper
	{superThrown=1 z-=4

	if place_free(x+16*-image_xscale,y)
	x-=16*image_xscale else {image_xscale=-image_xscale}

	if !(x>camera_get_view_x(view_camera[0])+sprite_get_width(mask_index)/2 and x<camera_get_view_x(view_camera[0])+320-sprite_get_width(mask_index)/2)
	{image_xscale=-image_xscale}

	recovery=200
	{
	sprite_index=sprite_index
	image_speed=0
	anim=31
	canmove=0
	frame_set(0,3,0.25)
	frame_set(1,4,0.25)
	frame_set(2,5,0.25)
	frame_set(3,18,0.25)
	frame_set(4,17,0.25)
	frame_set(5,16,0.25) if AnimFrame=6 AnimFrame=0
	}
	}

	}

	}     } 
	   if AnimFrame=16.1 ///Clear Screen
	   if instance_exists(targeten) with targeten if canact=1 and act=1 and immune=0
	 //  if x<camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2 and x>camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2
	   if Throw=0 and dead=0
	   	   	if isPlayer!=global.MultiSuper
	{superThrown=0 hspeed=0 sentflying=-16 hp-=0.5-0.25*isBoss ////Super Attack Damage
	 hud_show() hpscan() AnimFrame=0 image_index=0 showtimehit=1
	 if hp<=0
	other.PlayerScore+=points
	else other.PlayerScore+=pointshit
	with other combo_points()
	HitType=19936 hit_reaction()// event_user(0)
	}
    
	///Animation End
	if AnimFrame>16 {

	with oShadowFX specialShow=0 invincible=0
	powlock=0 hurt=0 atk=0 canmove=1 hit=0 image_blend=c_white
	with oControl{
	alarm[0]=timecheck timecheck=-1}
	}

	}




}
