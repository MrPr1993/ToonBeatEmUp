function animsetup_fatburglar() {
	animsetup_enemy()

	overwriteAttack=1
	overwriteAttack2=1

	if atk=0 {isThrow=0 throwing=0 atkAddX=48 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}

	///Attacks
	if anim=10 ///Attack Pick
	{
	if distance_to_object(targetEnemy)<100
	anim=11
	else
	anim=13
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
	{if image_index=0 or image_index=3 

	if !(targetEnemy.y>y+4 and targetEnemy.y<y-4)
	specialcheck2=0
	else
	{
	if targetEnemy.y<y-8 specialcheck1=-4
	if targetEnemy.y>y+8 specialcheck1=4
	}
	}

	animFrame+=0.1

	if animFrame>4 and animFrame<8
	{if animFrame=4.1 PlaySoundNoStack(snd_fatburglar)
	atk=1 canbeGrabbed=0
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




}
