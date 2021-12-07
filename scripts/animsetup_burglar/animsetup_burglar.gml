/// @description Since they're exactly the same, it'll use the default animations
function animsetup_burglar() {
	animsetup_enemy()

	///This overwrites the above's moves
	overwriteAttack=1

	if specialcheck1<0 specialcheck0=0 else specialcheck1-=1

	///Attacks
	if anim=10 ///Attack Stand
	{hit=0  
	if animFrame=0
	{specialcheck1=120
	if specialcheck0!=2 sprite_index=AtkSpr
	else {sprite_index=AtkSpr2 specialcheck0=0}
	}
	if sprite_index=AtkSpr {MoveType=0 damage=0.1}
	if sprite_index=AtkSpr2 {MoveType=2 damage=0.15}
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	if anim=10 
	{
	if animFrame=2 PlaySoundNoStack(snd_enemy1)
	if sprite_index=spr_burglar_attack
	atkcol_set(28,0,25,1.45,1,29)
	else
	atkcol_set(28,0,10,1.45,1,29)
	}



}
