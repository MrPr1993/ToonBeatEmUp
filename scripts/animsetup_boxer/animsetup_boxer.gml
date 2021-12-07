function animsetup_boxer() {
	animsetup_enemy()

	if atk=0 {isThrow=0 throwing=0 atkAddX=48 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}

	overwriteAttack=1

	if anim!=11 and anim!=13
	specialcheck0=0


	if anim=10 ///Attack Pick
	{
	if distance_to_object(targetEnemy)<64
	{
	if instance_nearest(x,y,oPlayer).ground=1
	anim=11
	else
	anim=12
	}
	else
	anim=13
	}

	if anim=11
	{ hit=0  
	atkcol_set(56,0,36,1.85,1,46) 
	targetHeight=2 
	if sprite_index!=AtkSpr
	{
	sprite_index=AtkSpr 
	}
	MoveType=0 damage=0.1
	image_index=animFrame image_speed=0 
	 if animFrame=clamp(animFrame,2,2.2) {atk=1} else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 
if animFrame=2 {PlaySoundNoStack(snd_swing) PlaySound(snd_pharaoh2)}
	if animFrame>2.5
	{
	if specialcheck0=2{specialcheck0=3}
	if specialcheck0=1{specialcheck0=2 animFrame=0 anim=11}
	if specialcheck0=1 or specialcheck0=2 animFrame=0
	}


	if animFrame>3.5 {

	if specialcheck0=3{animFrame=0 anim=13}
	if specialcheck0=1{specialcheck0=2 animFrame=0 anim=11}
	if specialcheck0=0
	{hurt=0 atk=0 canmove=1 hit=0}
	if specialcheck0=1 or specialcheck0=2 animFrame=0

	}
	}

	if targetEnemy.ground=0 and targetEnemy.hurt=0 and hurt=0 and canmove=1 and anim!=12 
	if distance_to_object(targetEnemy)<64 and targetEnemy.y=clamp(targetEnemy.y,y-16,y+16)
	{canmove=0 animFrame=0 anim=12 if targetEnemy.x>x image_xscale=1 else image_xscale=-1}

	if anim=12
	{ hit=0  
	atkcol_set(51,0,52,2.35,1,88)

	if sprite_index!=spr_boxer_attack3
	{
	sprite_index=spr_boxer_attack3
	}
	MoveType=1 damage=0.1 if animFrame=2 {PlaySound(snd_pharaoh2) PlaySound(snd_pharaoh2)}
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,3) {atk=1 immune=1} else {atk=0 immune=0}
	if animFrame=clamp(animFrame,0,3)
	animFrame+=0.25 else animFrame+=0.01

	if animFrame>3.5 {
	{hurt=0 atk=0 canmove=1 hit=0 animFrame=0}
	}
	}

	if anim=13
	{ hit=0  
if animFrame=0 {PlaySound(snd_pharaoh2)}
if animFrame=2 {PlaySound(snd_hwolf3) PlaySound(snd_swing)}
	atkcol_set(62,0,55,2.25,1,46)

	if sprite_index!=AtkSpr2
	{
	sprite_index=AtkSpr2
	}
	MoveType=1 if specialcheck0=3 damage=0.15 else damage=0.3
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,3) {animFrame+=0.1 atk=1 
	 if specialcheck0=3
	  sentflying=8*image_xscale
	  else
	 sentflying=16*image_xscale
	 } else {atk=0 sentflying=0}
	if animFrame=clamp(animFrame,0,2-0.1) animFrame+=0.1
	if animFrame>3 animFrame+=0.02 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}




}
