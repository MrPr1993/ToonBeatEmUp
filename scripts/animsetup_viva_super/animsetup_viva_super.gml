///Super Attack
function animsetup_viva_super() {
	if anim=50 ///
	{weaponBack=2 selfatk.image_xscale=0
	with oControl {if timecheck=-1 {timecheck=alarm[0] alarm[0]=0}}
	canSuper=0 super=0 with oShadowFX specialShow=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

comboScoreTime=oControl.ComboTime
	
var targeten=oEnemy1
if global.MultiVS=1 targeten=oPlayer
global.MultiSuper=isPlayer
	if AnimFrame=0 PlaySound(snd_viva12)

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
	if image_index<6.5 {image_index+=0.5 



	} else image_index=5
	if image_index<6 { 

	if AnimFrame=6.2 PlaySound(snd_viva7)

	if AnimFrame=6.5 
	{
	oShadowFX.colorChange=c_white
	if instance_exists(targeten) with targeten
	if isPlayer!=global.MultiSuper
	{elec=instance_create_depth(x,y+1,depth,oAnimFX) elec.image_speed=0.5

	elec.Flashing=1 elec.image_blend=c_blue
	}
	}if special1<0 {PlaySoundNoStack(snd_thunder) special1=2} else special1-=1
	instance_create_depth(random_range(camera_get_view_x(view_camera[0])+16,camera_get_view_x(view_camera[0])+320-16),random_range(camera_get_view_y(view_camera[0])+16,camera_get_view_y(view_camera[0])+240-16),depth,oAnimFX)

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

	///Viva
	if AnimFrame=clamp(AnimFrame,5,16)
	{oControl.quakeFXTime=2

	    if instance_exists(targeten) 
	   {targeten.watchSourceX=x 
	   with targeten
	   {
		   if isPlayer!=global.MultiSuper
	enemy_freeze(ShockSpr,image_index,0,1)

	}

	}     } 
	   if AnimFrame=16.1 ///Clear Screen
	   if instance_exists(targeten) with targeten if canact=1 and act=1 and immune=0
	  // if x<camera_get_view_x(view_camera[0])+320+sprite_get_width(mask_index)/2 and x>camera_get_view_x(view_camera[0])-sprite_get_width(mask_index)/2
	   if Throw=0 and dead=0 if isPlayer!=global.MultiSuper
	{superThrown=0 hspeed=0 hp-=0.5-0.25*isBoss ////Super Attack Damage
	 hud_show() hpscan() AnimFrame=0 image_index=0 showtimehit=1
	 if hp<=0
	other.PlayerScore+=points
	else other.PlayerScore+=pointshit
	with other combo_points()
	HitType=3 event_user(0)
	}
    
	///Animation End
	if AnimFrame>16 {

	with oShadowFX specialShow=0 invincible=0
	powlock=0 hurt=0 atk=0 canmove=1 hit=0 image_blend=c_white
	with oControl{
	alarm[0]=timecheck timecheck=-1}
	}

	}



/////Combination Attack - Viva & Hina


}
