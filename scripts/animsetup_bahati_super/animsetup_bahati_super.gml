///Super Attack
function animsetup_bahati_super() {
	if anim=50 ///
	{weaponBack=2 selfatk.image_xscale=0
	with oControl {if timecheck=-1 {timecheck=alarm[0] alarm[0]=0}}
	canSuper=0 super=0 with oShadowFX specialShow=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	if AnimFrame=0 PlaySound(snd_bahati13)
	
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
	{
	if AnimFrame=5.5
	{PlaySound(snd_drum)
	if instance_exists(targeten) with targeten
		   	if isPlayer!=global.MultiSuper
	{
	rock=instance_create_depth(x,y+1,depth,oDisappearPart) rock.spdZ=0 rock.z=z-2040 rock.angle=0
	rock.image_xscale=image_xscale rock.sprite_index=spr_bahati_rock rock.image_speed=0
	}}
	AnimFrame+=0.1



	if image_index<6.6 image_index+=0.4 else {image_xscale=-image_xscale PlaySound(snd_drum) image_index=5

	rock=instance_create_depth(random_range(camera_get_view_x(view_camera[0])+16,camera_get_view_x(view_camera[0])+320-16),random_range(camera_get_view_y(view_camera[0])+16,camera_get_view_y(view_camera[0])+240-16),depth,oDisappearPart) rock.spdZ=8 rock.z=z-320 rock.angle=0
	rock.image_xscale=image_xscale rock.sprite_index=spr_bahati_rock2 rock.image_speed=0 rock.image_index=random(3)

	//oShadowFX.colorChange=c_white
	quake=instance_create_depth(x,y,depth,oAnimFX) quake.isDepth=0 quake.image_speed=0.5
	quake.depth=99999 quake.sprite_index=spr_bahati_quake
	}
	if image_index<6 {if AnimFrame=6.6
	{oShadowFX.colorChange=c_white

	}


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

	///Bahati
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
	   {   if instance_exists(targeten) with targeten if canact=1 and act=1 and immune=0
	  // if x<camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2 and x>camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2
	   if Throw=0 and dead=0
	   	   	if isPlayer!=global.MultiSuper
	{superThrown=0 hspeed=0 hp-=0.5-0.25*isBoss ////Super Attack Damage
		showtimehit=1
	 hud_show() hpscan() AnimFrame=0 image_index=0 PlaySoundNoStack(snd_hitgroundheavy)
	 if hp<=0
	other.PlayerScore+=points
	else other.PlayerScore+=pointshit
	with other combo_points()
	HitType=4 event_user(0)
	}}
    
	///Animation End
	if AnimFrame>16 {

	with oShadowFX specialShow=0 invincible=0
	powlock=0 hurt=0 atk=0 canmove=1 hit=0 image_blend=c_white
	with oControl{
	alarm[0]=timecheck timecheck=-1}
	}

	}




}
