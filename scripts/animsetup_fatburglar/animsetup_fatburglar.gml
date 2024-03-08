function animsetup_fatburglar() {
	animsetup_enemy()

if weaponspr=-1
{
StandSpr=spr_fatburglar_stand
MoveSpr=spr_fatburglar_move
RunSpr=spr_fatburglar_move
}
else
{
StandSpr=spr_fatburglar_standobject
if sprite_index=StandSpr or sprite_index=MoveSpr or sprite_index=RunSpr
weaponX=0 
if sprite_index=StandSpr weaponY=-93
if sprite_index=MoveSpr or sprite_index=RunSpr
{
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9) weaponY=-92
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9) weaponY=-93
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9) weaponY=-94
}
MoveSpr=spr_fatburglar_moveobject
RunSpr=spr_fatburglar_moveobject
}


	overwriteAttack=1
	overwriteAttack2=1

	if atk=0 {isThrow=0 throwing=0 atkAddX=48 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}

	///Attacks
	if anim=10 ///Attack Pick
	{
	if weaponspr=-1
	{
	if distance_to_object(targetEnemy)<100
	anim=11
	else
	anim=13
	}
	else
	anim=14
	}


	if anim=11 ///Attack Stand
	{hit=0 
	if sprite_index!=AtkSpr and sprite_index!=AtkSpr2
	{
	if distance_to_object(targetEnemy)<32
	sprite_index=AtkSpr else {sprite_index=AtkSpr2
	 targetXcheck=targetEnemy.x
	 targetYcheck=targetEnemy.y
	 if x<targetXcheck targetXcheck=1 else targetXcheck=-1
 
	 if y!=clamp(y,targetYcheck-8,targetYcheck+8)
	 {if y<targetYcheck targetYcheck=1 else targetYcheck=-1}
	else targetYcheck=0 
	  }
	}
	if sprite_index=AtkSpr
	{if animFrame=0 PlaySoundNoStack(snd_fatburglar2)
	MoveType=1 image_index=animFrame image_speed=0 damage=0.2
	if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	}
	if sprite_index=AtkSpr2
	{damage=0.4
	if animFrame=clamp(animFrame,1,1.5) if ground {specialcheck2=2 PlaySoundNoStack(snd_jump) PlaySoundNoStack(snd_fatburglar) z-=2 ground=0 zSpeed=-10}
	if !ground 
	{MoveType=4 animFrame=2.9 SoundCount0=0
	isThrow=0 throwing=0 atkAddX=0 atkAddY=0 atkAddZ=32 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	if place_free(x+specialcheck2*targetXcheck,y) x+=specialcheck2*image_xscale
	if place_free(x,y+specialcheck2*targetYcheck) if y<__view_get( e__VW.YView, 0 )+240-2 y+=specialcheck2*targetYcheck
	if zSpeed>0 z+=0.45 
	}

	image_index=animFrame image_speed=0
	if animFrame=clamp(animFrame,2,3) and zSpeed>-1 atk=1 else atk=0
	}

	if animFrame=clamp(animFrame,3,3.5) if sprite_index=spr_fatburglar_attack2 
	{
	if SoundCount0=0 {SoundCount0=1 PlaySoundNoStack(HitGround)}
	oControl.quakeFXTime=10
	}

	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else {if ground 

	animFrame+=0.1 if sprite_index=AtkSpr2 and ground animFrame+=0.001} if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}


	if anim=13 ///Charge Attack
	{damage=0.2 MoveType=1 if animFrame=0 {image_index=0 PlaySoundNoStack(snd_fatburglar2)}
	sprite_index=AtkSpr3  
	image_index+=0.5 if image_index=6 image_index=0



	if animFrame<4
	{
	dust_make(x,y,z,-2*image_xscale,0,0)
	
	if image_index=0 or image_index=3 

	if !(targetEnemy.y>y+4 and targetEnemy.y<y-4)
	specialcheck2=0
	else
	{
	if targetEnemy.y<y-8 specialcheck1=-4
	if targetEnemy.y>y+8 specialcheck1=4
	}
	}

	animFrame+=0.1
	
if animFrame=2.5 if current_pal=6 animFrame=4

	if animFrame>4 and animFrame<8
	{if animFrame=4.1 PlaySoundNoStack(snd_fatburglar)
	atk=1 canbeGrabbed=0 HitQuake=10
	
	dust_make(x,y,z,-4*image_xscale,0,0)
	
	if place_free(x+8*image_xscale,y) x+=8*image_xscale
	else {hurt=0 hitBack=0

	ground=0

	hurt=1

	zSpeed=-4

	sentflying=4*-image_xscale



	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5

	PlaySoundNoStack(HitGround) oControl.quakeFXTime=10
	}

	if place_free(x,y+specialcheck1) y+=specialcheck1

	}else {atk=0 canbeGrabbed=1}

	if animFrame>10 {canmove=1 anim=0}

	}else canbeGrabbed=1

if anim=14 /////Object Throw
{
if animFrame=0 {PlaySoundNoStack(snd_fatburglar) PlaySoundNoStack(snd_swing) sprite_index=spr_fatburglar_throwobject
	weaponX=1 weaponY=-93
	}
frame_set(0,0,0.1) if animFrame=1 {	weaponX=-4 weaponY=-90}
frame_set(1,1,0.05)  if animFrame=2 {weaponX=-2 weaponY=-93}
frame_set(2,0,0.5) 
if animFrame=3
{
if weaponspr!=-1 {
	item=instance_create_depth(x,y,-1,oGrabbable) item.sprite_index=weaponspr item.image_speed=0
	item.hasitem=spawnID item.z=z-92 item.isEnemy=1 item.spdZ=-4 item.hspeed=4*image_xscale
	weaponspr=-1 item.canGrav=1 item.image_xscale=image_xscale item.ground=0
	}
}
frame_set(3,2,0.1)
frame_set(4,3,0.1) if animFrame>5 sprite_index=spr_fatburglar_attack2
frame_set(5,0,0.1) 
if animFrame>5.5 canmove=1
}


}
