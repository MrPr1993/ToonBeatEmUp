///Super Attack
function animsetup_hina_super() {
	if anim=50 ///
	{
	if AnimFrame=0 {PlaySound(snd_Hina_Subarashi)}
	
	var targeten=oEnemy1
if global.MultiVS=1 targeten=oPlayer
global.MultiSuper=isPlayer

	weaponBack=2 selfatk.image_xscale=0
	with oControl {if timecheck=-1 {timecheck=alarm[0] alarm[0]=0}}
	canSuper=0 super=0 with oShadowFX specialShow=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	invincible=1

	recovery=30

	sprite_index=SuperSpr

	atk=0


	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.2)
	if AnimFrame=3
	{special0=0
	gong=instance_create_depth(x-56*image_xscale,y,depth,oFlashFX) with gong z=z
	gong.isDepth=0 gong.depth=depth+1 gong.alarm[0]=0 gong.animEnd=0
	gong.image_speed=0 gong.sprite_index=spr_hina_gong 
	}
	frame_set(3,3,0.2)


	frame_set(4,4,0.05)
	frame_set(5,5,0.5)
	if AnimFrame=5.5
	{PlaySound(snd_gong)
	dragon=instance_create_depth(camera_get_view_x(view_camera[0])-0,camera_get_view_y(view_camera[0])-6-128,depth,oFlashFX) with dragon z=z
	if image_xscale=-1 dragon.x=camera_get_view_x(view_camera[0])+320
	dragon.isDepth=0 dragon.depth=-99998 dragon.alarm[0]=0
	dragon.image_speed=0 dragon.sprite_index=spr_hina_dragon dragon.image_xscale=image_xscale
	}

	if AnimFrame=clamp(AnimFrame,6,10)
	{dragon.y=lerp(dragon.y,camera_get_view_y(view_camera[0])-6,0.5)
	if image_xscale=1 
	dragon.x=lerp(dragon.x,camera_get_view_x(view_camera[0])+128+64,0.1)
	else
	dragon.x=lerp(dragon.x,camera_get_view_x(view_camera[0])+320-128-64,0.1)
	dragon.hspeed=0
	}
	if AnimFrame=clamp(AnimFrame,9,16)
	with dragon
	{hspeed=lerp(hspeed,-8*image_xscale,0.25)
	if image_index<1.5
	image_index+=0.5
	}
if AnimFrame=8 PlaySoundNoStack(snd_flamelong) 
	if AnimFrame>8 
	if special1<0 {special1=2} else special1-=1

	if AnimFrame=clamp(AnimFrame,5,31+0.9)
	{AnimFrame+=0.1 gong.image_speed=1
	if image_index<6.5 image_index+=0.5 else image_index=5

	///Dragon FX
	if AnimFrame=clamp(AnimFrame,6,12) 
	{
	with dragon
	{
	if image_xscale=1 hspeed-=0.25
	if image_xscale=-1 hspeed+=0.25

	}

	if AnimFrame=9.2
	///Flames
	repeat(5)
	{
	flame=instance_create_depth(camera_get_view_x(view_camera[0])+32+64*special0,camera_get_view_y(view_camera[0])+240,depth,oFlashFX)
	flame.z=0 flame.isDepth=0 flame.depth=-99999 flame.name="DragonFlame"
	flame.animEnd=0 flame.sprite_index=spr_hina_flames flame.image_speed=0.5
	flame.alarm[0]=0
	special0+=1
	}

	}


	if image_index<6 {
	if AnimFrame=6.5 
	{
	oShadowFX.colorChange=c_white
	if instance_exists(targeten) with targeten
	{
	}
	}
	//instance_create(random_range(camera_get_view_x(view_camera[0])+16,camera_get_view_x(view_camera[0])+320-16),random_range(camera_get_view_y(view_camera[0])+16,camera_get_view_y(view_camera[0])+240-16),oAnimFX)
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

	///Hina
	if AnimFrame=clamp(AnimFrame,5,16)
	{oControl.quakeFXTime=2

	    if instance_exists(targeten) 
	   {targeten.watchSourceX=x 
	   with targeten
	   {
		   	if isPlayer!=global.MultiSuper
	enemy_freeze(ThrownSpr,GrabFrame,5,0)

	}

	}     } 
	   if AnimFrame=16.1 ///Clear Screen
	   if instance_exists(targeten) with targeten if canact=1 and act=1 and immune=0
	  // if x<camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2 and x>camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2
	   if Throw=0 and dead=0
	   	if isPlayer!=global.MultiSuper
	{superThrown=0 hspeed=0 hp-=0.5-0.25*isBoss ////Super Attack Damage
	 hud_show() hpscan() AnimFrame=0 image_index=0
	 if hp<=0
	other.PlayerScore+=points
	else other.PlayerScore+=pointshit
	HitType=5 event_user(0)
	fire=instance_create_depth(x,y+1,depth,oFlashFX) fire.z=z fire.attachID=id
	fire.isDepth=0 fire.depth=depth-1
	fire.sprite_index=spr_burn
	}
    
	///Animation End
	if AnimFrame>16 {

	with oShadowFX specialShow=0 invincible=0 
	with gong instance_destroy()
	with dragon instance_destroy()
	with oFlashFX if name="DragonFlame" instance_destroy()


	powlock=0 hurt=0 atk=0 canmove=1 hit=0 image_blend=c_white
	with oControl{
	alarm[0]=timecheck timecheck=-1}
	}

	}




}
