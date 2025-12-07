/// @description Car Mode
function animsetup_specialplayer() {
if anim=51 ////Super Move Joining
{

}
	

	if anim=200
	{
	defMask=spr_shadow3


	AnimFrame+=0.1

	sprite_index=CarSpr

	//sprite_index=spr_car image_index=0
image_index=0

	if key_right 
	{
	if image_xscale=-1 image_index=1 else image_index=0
	if place_free(x+6,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=6}
	else if image_index=1 image_index=0

	if -key_left {if image_xscale=1 image_index=1 else image_index=0 if place_free(x-6,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=6} else if image_index=-1 image_index=0
	if key_up 
	{if place_free(x,y-6) y-=6
	}
	if key_down 
	{if place_free(x,y+6)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=6
	}

	if key_jump and ground
	{
	ground=0 zSpeed=-12 PlaySound(snd_break2)
	}
	
		if key_right or -key_left or key_up or key_down
	{if carAnim<0+0.25 carAnim=1.75 else carAnim-=0.25
		//carAnim=clamp(carAnim,0,1.75)
	} else 
	{
	if carAnim<0+0.2 carAnim=1.8 else carAnim-=0.20
	//carAnim=clamp(carAnim,0,1.8)
	}

	if !ground {zSpeed+=0.45 carAnim=2 image_index=3}
	



	} 

	if anim!=200 and anim!=201 and anim!=202 and anim!=45 {carMode=0 mask_index=defMask}

	////Car Hit
	if anim=201
	{
	hurt=1 carAnim=0

	if shake=0 shake=2 else shake-=1

	image_index=2
	image_speed=0
	AnimFrame+=0.05 if AnimFrame>1-0.05 {hurt=0

	{
	AnimFrame=0 anim=200 image_index=0}

	}
	
	}

	///Dead - Car
	if anim=202
	{shadow=spr_shadow
		
		
		
	if AnimFrame=0 {specialtimes[0]=0 AnimFrame=0.1 PlaySoundNoStack(snd_explosion)
		
		}
	sprite_index=ThrownSpr 
	if !ground 
	{AnimFrame=0.25
	image_speed=0 image_index=clamp(image_index,3+13,5+13)
	image_index+=0.1 x+=3 alarm[2]=30
	}
	else
	{
	if AnimFrame>1.1
	if vehSpr=spr_boat 
	{sprite_index=mask_none
	if specialtimes[0]=0
	{specialtimes[0]=1 PlaySound(snd_splash3)
	flashFX(x,y,-8,spr_watersplash,0,0.5,0,1,1,c_white,1) fx.hspeed=-4
	}
	}
	
	if AnimFrame<5.5 {alarm[2]=30}
frame_set(0,14,0.25)
frame_set(1,11,0.25)
frame_set(2,12,0.25)
frame_set(3,13,0.25)   
frame_set(4,14,0.25)
frame_set(5,11,0.25)
frame_set(6,12,0.25)
frame_set(7,13,0.25)  
frame_set(8,18,0.25)  
frame_set(9,21,0.0)  
	
	image_speed=0
	AnimFrame+=0.1 if AnimFrame<8 x-=3 else x-=12}
	}

	///Car Mode - Ninja Baseball Bat Man
	if anim=203
	{
	defMask=spr_shadow3

	immune=1

	AnimFrame+=0.1

	sprite_index=CarSpr



	//sprite_index=spr_car image_index=0

	if key_right 
	{
	if image_xscale=-1 image_index=1 else image_index=0
	if place_free(x+6,y) and x<__view_get( e__VW.XView, 0 )+320-28 x+=6}
	else if image_index=1 image_index=0

	if -key_left {if image_xscale=1 image_index=1 else image_index=0 if place_free(x-6,y)
	and x>__view_get( e__VW.XView, 0 )+42
	  x-=6} else if image_index=-1 image_index=0
	if key_up 
	{if place_free(x,y-6) y-=6
	}
	if key_down 
	{if place_free(x,y+6)
	and y<__view_get( e__VW.YView, 0 )+240-2
	  y+=6
	}

	if key_jump
	{
	ground=0 zSpeed=-4
	}

	if !ground zSpeed+=0.45




	if key_right or -key_left or key_up or key_down
	{if carAnim<0 carAnim=1.75 else carAnim-=0.25

///Collide with object - Disabled
if x=-999999999999999999999999999999
{
	if collision_rectangle(x-64,y-16,x+64,y+16,oBarrel,1,false)
	{target=collision_rectangle(x-64,y-16,x+64,y+16,oBarrel,1,false)
	if target.x>x target.sourceCheckX=-1 else sourceCheckX=1
	if target.hit=0
	{specialFX=1 alarm[3]=5
	with target event_user(0)}
	}
	if collision_rectangle(x-64,y-16,x+64,y+16,oEnemy1,1,false)
	{target=collision_rectangle(x-64,y-16,x+64,y+16,oEnemy1,1,false)
	if target.dead=0 and target.Throw=0 and target.thrownAtk=0 and target.anim!=6 and target.recovery=0
	and target.immune=0
	{
	specialFX=1 alarm[3]=5
	if target.hp<0
	PlayerScore+=target.points
	else
	PlayerScore+=target.pointshit
	with target 
	{hp-=0.25 	if hp<=0.2	noMask=1	shaketime=30
	recovery=90
	PlaySoundNoStack(snd_hit)
	hud_show()
	flashFX(x,y+2,z-16,spr_hitflash,0,1,5,1,1,c_white,1)
	canmove=0 hurt=1 HitType=4 event_user(0)}
	}
	}
	}
	} else 
	{
	if carAnim<0 carAnim=1.8 else carAnim-=0.20
	}

	if AnimFrame>30
	{
	if carExTime<0 {if AnimFrame<40 carExTime=8 else carExTime=4 specialFX=1 alarm[3]=5}
	else carExTime-=1
	}


	///Car Explode
	if AnimFrame>50 {
	canmove=1 

	car=instance_create_depth(x,y,depth,oCar) car.dead=1 car.sprite_index=spr_car_dead
	
	if vehSpr=spr_boat car.sprite_index=spr_boat_dead
	car.mask_index=mask_none
	car.image_xscale=image_xscale

	AnimFrame=0

	ground=0

	anim=2

	event_user(7) event_user(10) zSpeed=-10

	PlaySoundNoStack(snd_explosion) oControl.quakeFXTime=10
	ex=instance_create_depth(x,y,depth,oExplosion) ex.z=z ex.depth=depth
	ex.canHarm=0

	}

	}

	///Stage Clear
	if anim=210
	{
	if AnimFrame=0 drop_object()
				weaponanim(weaponspr,weaponIndex,2500000,-3500000,90*image_xscale,weaponcolor)
	
	if sprite_index!=WinSpr PlaySound(WinSnd)
	sprite_index=WinSpr
	image_index=AnimFrame
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	}

	///Stage Intro
	if anim=220
	{
	sprite_index=PointSpr
	image_index=0 image_speed=0
	
	var pointimg=1; if playerSpawnNO!=1 pointimg=0;

	frame_set(0,0,0.03) if AnimFrame=0.99 {if playerSpawnNO=1 {PlaySound(PointDialouge1)
		var _playerquote="GIVE THOSE BACK!"
		
		
		gamedialogue_play(_playerquote,audio_sound_length(PointDialouge1))
		} AnimFrame=1}
	frame_set(1,pointimg,0.01) if AnimFrame=2 {if playerSpawnNO=1 {PlaySound(PointDialouge2)
		var _playerquote="HEY!"		
		gamedialogue_play(_playerquote,audio_sound_length(PointDialouge2))	
		}}
	frame_set(2,pointimg,0.1)
	frame_set(3,pointimg,0.25)
	frame_set(4,2,0.01) if AnimFrame=5 canmove=1
	frame_set(5,2,0.1) 
	}

	///Wild Take
	if oControl.betatest=1 if keyboard_check_pressed(vk_alt)
	{AnimFrame=0 anim=choose(300,301)}

	if anim=300
	{if AnimFrame=0 drop_object()
				weaponanim(weaponspr,weaponIndex,2500000,-3500000,90*image_xscale,weaponcolor)
	
	if sprite_index!=WildTakeSpr
	{sprite_index=WildTakeSpr special5=0}

	canmove=0

	frame_set(0,0,0.01)
	frame_set(1,1,0.25)
	frame_set(2,2,0.25)  if AnimFrame=3 {PlaySound(ScreamSnd)}
	frame_set(3,3,0.25)
	frame_set(4,4,0.25)
	frame_set(5,5,0.25)
	frame_set(6,6,0.25)
	frame_set(7,7,0.25) if AnimFrame>=7.5

	 {if special5<4 {special5+=1 AnimFrame=4 image_index=4}}

	frame_set(8,3,0.5)

	frame_set(9,2,0.5)

	frame_set(10,1,0.5)

	  if AnimFrame>10.9 {canmove=1 special5=0}

	}
	
	
		if anim=301 ////Wild Take - Stage 2 - Look Up
	{if AnimFrame=0 drop_object()


	canmove=0
	
	frame_set(0,0,0.05)
	frame_set(1,0,0.5)
	if AnimFrame>2
	weaponanim(weaponspr,weaponIndex,2500000,-3500000,90*image_xscale,weaponcolor)
	frame_set(2,0,0.05) if AnimFrame=3 {PlaySound(DamageVoice1) sprite_index=WildTakeSpr2 special5=0}
	frame_set(3,0,0.25)
	frame_set(4,1,0.25)
	frame_set(5,2,0.25)
	frame_set(6,1,0.25)
	frame_set(7,2,0.25) if AnimFrame>=7.5
{if special5<4 {special5+=1 AnimFrame=4 image_index=1}}
if AnimFrame=8 {PlaySound(DamageVoice2) image_xscale=-1 sprite_index=ThrownSpr}

frame_set(8,16,0.25)
frame_set(9,13,0.25)
frame_set(10,12,0.25)
frame_set(11,11,0.25)
frame_set(12,14,0.25)
frame_set(13,13,0.25)
frame_set(14,12,0.25)
frame_set(15,11,0.25)
frame_set(16,14,0.25)
frame_set(17,13,0.25)
frame_set(18,12,0.25)
frame_set(19,11,0.25)
frame_set(20,19,0.5) if AnimFrame=clamp(AnimFrame,8,19) sentflying=-5 else sentflying=0
frame_set(21,21,0.05)
frame_set(22,22,0.5)
frame_set(23,23,0.5) if AnimFrame>24 {sprite_index=WildTakeSpr image_index=0 image_xscale=1}
frame_set(24,0,0.01) 

	  if AnimFrame>24.9 {canmove=1 special5=0}

	}


		if anim=302 ////Bullet Dance
	{if AnimFrame=0 sprite_index=WildTakeSpr
		
	frame_set(0,0,0) if AnimFrame=1 sprite_index=BDanceSpr
	frame_set(1,0,0.25)
	frame_set(2,1,0.25) 
	frame_set(3,2,0.25) if AnimFrame=4-0.25 AnimFrame=1
	frame_set(4,1,0.25) if AnimFrame=4.25 sprite_index=WildTakeSpr
	frame_set(5,0,0)
	}
	
			if anim=303 ////Sucked by Plane Door
	{if AnimFrame=0 sprite_index=WildTakeSpr
	frame_set(0,0,0) 
	frame_set(1,0,0.1) 
	frame_set(2,0,0.1) 
	frame_set(3,1,0.1) if AnimFrame=4 {if sprite_index!=PlaneOutSpr {sprite_index=PlaneOutSpr image_xscale=-image_xscale}}
	frame_set(4,0,0.25)
	frame_set(5,1,0.25) 
	frame_set(6,0,0.25)
	frame_set(7,2,0.25)	if AnimFrame=8-0.25 AnimFrame=4
	}
	
			if anim=304 ////Sucked by Plane Door
	{if AnimFrame=0 sprite_index=WildTakeSpr
	frame_set(0,1,0.25) if AnimFrame=1 sprite_index=WildTakeSpr3
frame_set(1,0,0.25) 
frame_set(2,1,0.25) 
frame_set(3,0,0.25) 
frame_set(4,1,0.25) 
frame_set(5,1,0.25) 
frame_set(6,0,0.25) 
frame_set(7,1,0.25) 
frame_set(8,0,0.25) 
frame_set(9,1,0.25) 
frame_set(10,1,0.25) 
frame_set(11,0,0.25) 
frame_set(12,1,0.25) 
frame_set(13,1,0.25) 
frame_set(14,0,0.25) 
frame_set(15,1,0.25) 
frame_set(16,0,0.25) 
frame_set(17,1,0.05) if AnimFrame=18 sprite_index=HeartSpr
frame_set(18,0,0.1)
frame_set(19,1,0.1)
frame_set(20,2,0.05) if AnimFrame=21 AnimFrame=18
	}
	
				if anim=305 ////Reaction of Museum
				{
					frame_set(0,0,0) if AnimFrame=0 {sprite_index=PointSpr image_index=0}
					frame_set(1,0,0) if AnimFrame=1 {sprite_index=PointSpr image_index=2}
					
				}
				
						if anim=306 ////Oni Quake
				{if AnimFrame=0 sprite_index=WildTakeSpr4
					frame_set(0,0,0)
					frame_set(1,1,0.25) 
					frame_set(2,2,0.25) 
					if AnimFrame=3 {AnimFrame=1}
					frame_set(4,0,0) if AnimFrame=4 sprite_index=WildTakeSpr
				}

////Petting Animal
	if anim=10010
	{canmove=0 weaponanim(weaponspr,weaponIndex,2000004,-500008,90*image_xscale,weaponcolor)
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,1,0.1)
	
	
	
	if AnimFrame>2 AnimFrame=0
	if !key_charge {canmove=1 anim=0}
	}
	
		///Knife/Item Throw
if anim=19930
	{sprite_index=throwItemSpr weaponBack=0 weaponanim(weaponspr,weaponIndex,-12,-53,112*image_xscale,weaponcolor)
	frame_set(0,0,0.2) 
	if AnimFrame=0.8
	if spawnID!=-1
	{
	{PlaySound(snd_swing)}
item_thrown()
	}
	frame_set(1,1,0.1)
	frame_set(2,1,0.1)
	if AnimFrame>2 {canmove=1 anim=0}
	}



		///Baseball Bat
if anim=19935
{

}

//////Fishing Minigame
if anim=26
if weapontype=0
if spawnID=oFishingRod
	{if AnimFrame=0 {image_xscale=1
	hp=maxhp
	//var _fishget=fish_choose(choose(0,1,2,3,4,5,6,7,8,9,10))
	
	}
	////Hammer Swing
frame_set(0,0,0.1)
frame_set(1,1,0.05) if AnimFrame=clamp(AnimFrame,1,1.5)
{////Choose strength
AnimFrame=1.3

if specialtimes[0]=0 {specialtimes[1]+=4 if specialtimes[1]>=100 {specialtimes[0]=1 specialtimes[1]=100}}
else {specialtimes[1]-=4 if specialtimes[1]<=0 {specialtimes[0]=0 specialtimes[1]=0}}

if key_attack AnimFrame=2

}
if AnimFrame=2
{areaEntry=1
PlaySound(snd_swing5)
oFishingMinigame.x=x+32 oFishingMinigame.y=y oFishingMinigame.z=z-96
with oFishingMinigame
{spdX=0.10*oPlayer.specialtimes[1] spdZ=-0.10*oPlayer.specialtimes[1]
Thrown=1 
}
}
frame_set(2,0,0.25)
frame_set(3,2,0.1)
frame_set(4,3,0.1)

if AnimFrame>4
{
fishtime+=1

if fishtime>random_range(200,300)
{


AnimFrame=0 PlaySound(snd_hit2) anim=260000
 PlaySound(snd_splash1)
with oFishingMinigame
{
var _fishdist=240+x;


with oPlayer
{
var _fishdist=oFishingMinigame.x-240;
if _fishdist<=100-240 var _fishget=fish_choose(random_range(0,1))
else if _fishdist<=160-240 var _fishget=fish_choose(random_range(1,2))
else if _fishdist<=240-240 var _fishget=fish_choose(random_range(2,3))
else if _fishdist<=320-240 var _fishget=fish_choose(random_range(3,4))
else if _fishdist<=400-240 var _fishget=fish_choose(random_range(4,5))
else if _fishdist<=480-240 var _fishget=fish_choose(random_range(5,6))
else if _fishdist<=560-240 var _fishget=fish_choose(random_range(6,7))
else if _fishdist<=620-240 var _fishget=fish_choose(random_range(7,8))
else if _fishdist<=700-240 var _fishget=fish_choose(random_range(8,9))
else var _fishget=fish_choose(random_range(9,10))

oFishingMinigame.fishstr=fishstr
oFishingMinigame.fishspr=fishspr
oFishingMinigame.fishname=fishname
oFishingMinigame.fishscore=fishscore

specialtimes[2]=_fishget
}	

flashFX(x,y,z+6,spr_watersplashsmall,0,0.5,10,1,1,c_white,1)
}
}

}

	if character=0
	{
	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}	
	sprite_index=spr_viva_hammeratk
	}
	if character=1
	{sprite_index=spr_hina_hammeratk
		if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}
	
	}
	if character=2	{
	sprite_index=spr_bahati_hammeratk
		if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}
	sprite_index=spr_bahati_hammeratk
	}
	if character=3	
	{sprite_index=spr_sofia_hammeratk
	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}
	sprite_index=spr_sofia_hammeratk	
	}
	image_speed=0
	//if AnimFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}

/////Fishing Minigame - Dragging Fish
if anim=260000
{
if character=0 {sprite_index=spr_viva_gunstand 
	if image_index<1 weaponanim(weaponspr,weaponIndex,28,-50,45,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,28-1,-50,45,weaponcolor)	
	}
if character=1 {sprite_index=spr_hina_gunstand 
	if image_index<1 weaponanim(weaponspr,weaponIndex,28,-50,45,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,28-1,-50,45,weaponcolor)	
	}
if character=2 {sprite_index=spr_bahati_gunstand 
	if image_index<1 weaponanim(weaponspr,weaponIndex,28,-50,45,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,28-1,-50,45,weaponcolor)	
	}
if character=3 {sprite_index=spr_sofia_gunstand 
	if image_index<1 weaponanim(weaponspr,weaponIndex,28,-50+13,45,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,28-1,-50+13,45,weaponcolor)	
	}

frame_set(0,0,0.25)
frame_set(1,3,0.25) if AnimFrame>1.75 AnimFrame=0

with oFishingMinigame 
{
	
	if dodgetime<0 {dodgetime=100+random(100)+choose(0,200)} else dodgetime-=1
	if dodgetime<200
	spdY-=(random_range(0,2)/12)*fishstr
	else
	spdY+=(random_range(0,2)/12)*fishstr
	
	if oPlayer.key_up
	if y<oPlayer.y {y=lerp(y,oPlayer.y,0.01)}
	
	if -oPlayer.key_down
	if y>oPlayer.y {y=lerp(y,oPlayer.y,0.01)}
	
	x+=((spdY/4)+0.25)*oPlayer.fishstr+fishstr+0.1*point_distance(0,y,0,oPlayer.y)/16
	
fishstr+=0.05
if fishstr>10 or x>1580
{	with oPlayer {canmove=1 anim=0 AnimFrame=0} Thrown=0
		fishout=0

////If they go too far they'll be thrown out	

}
}

if key_attack {oFishingMinigame.x-=16
	oFishingMinigame.fishstr-=1 oFishingMinigame.fishstr=clamp(oFishingMinigame.fishstr,0,30)
	
	
	if oFishingMinigame.x<256 {AnimFrame=0 anim=260001 oFishingMinigame.sprite_index=fishspr
		with oFishingMinigame {fishout=1 spdZ=-16 PlaySound(snd_splash2)
			flashFX(x,y+2,z+6,spr_watersplash,0,0.5,10,1,1,c_white,1)
			}
		}
	
	}



}

///Fish Get!
if anim=260001
{if AnimFrame=0 
	{image_xscale=1
	var _fishget=fish_choose(specialtimes[2])
	global.FishData[_fishget]=1	
	}

var fishcatch=0;
if oFishingMinigame.fishout=1
if oFishingMinigame.z>z-48 and oFishingMinigame.spdZ>0
{
fishcatch=1; oFishingMinigame.spdZ=0 oFishingMinigame.z=z oFishingMinigame.fishout=2

AnimFrame=3

oFishingMinigame.fishname=fishname
oFishingMinigame.fishscore=fishscore

with oControl 
{alarm[6]=120
resulttext1=""
altresult1=0
resulttext2=""
AltScore2=oPlayer.fishscore
resulttext3=""
altresult3=0
stageCspr=spr_bonusresults
altresult2a=p1.altresult2
altresult2b=p2.altresult2
altresult2c=p3.altresult2
altresult2d=p4.altresult2
time=0
AltScore3=-2
}
}
if fishcatch=0
{
	if character=0
	{if AnimFrame=0 sprite_index=spr_viva_hammeratk
	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}

	}
	if character=1
	{if AnimFrame=0 sprite_index=spr_hina_hammeratk
		if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}

	}
	if character=2	{
	if AnimFrame=0 sprite_index=spr_bahati_hammeratk
		if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	}
	if character=3	
	{if AnimFrame=0 sprite_index=spr_sofia_hammeratk
	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	}
}
frame_set(0,0,0.25)
frame_set(1,1,0.25)

if fishcatch=1
{oFishingMinigame.x=x+21 oFishingMinigame.y=y+1 oFishingMinigame.z=z-54 oFishingMinigame.spdZ=0
	oFishingMinigame.spdX=0
	oFishingMinigame.spdY=0
	
oFishingMinigame.fishout=3
	if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,-28,-71+1,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-28,-71,90*image_xscale,weaponcolor)	
	
	if character=0 sprite_index=spr_viva_getfish
	if character=1 sprite_index=spr_hina_getfish
	if character=2 sprite_index=spr_bahati_getfish
	if character=3 sprite_index=spr_sofia_getfish
	
}
frame_set(3,0,0.25)
var hasboot=0; if fishname="JUNK" hasboot=1;
frame_set(4,1+hasboot,0.25)
	

	
	image_speed=0
	//if AnimFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}

}


