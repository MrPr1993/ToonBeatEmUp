function animsetup_femburglar() {
	animsetup_enemy()

	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1

	///Attacks
	if anim=10 ///Attack Stand
	{

	
	 hit=0 damage=0.15
	if sprite_index!=AtkSpr and sprite_index!=AtkSpr2
	{
	if distance_to_object(targetEnemy)<48
	{PlaySoundNoStack(snd_swing) PlaySoundNoStack(snd_femenemy5)
	sprite_index=AtkSpr}

	  else {
				if current_pal=4
		{
		animFrame=0 anim=11 exit;
		} 
		
		 sprite_index=AtkSpr2 PlaySoundNoStack(snd_swing) PlaySoundNoStack(snd_femenemy4)
	 targetX=targetEnemy.x
	 targetY=targetEnemy.y
	 if x<targetX targetX=1 else targetX=-1
 
	 if y!=clamp(y,targetY-8,targetY+8)
	 {if y<targetY targetY=1 else targetY=-1}
	else targetY=0 
	  }
	}
	if sprite_index=AtkSpr
	{MoveType=2 image_index=animFrame image_speed=0
	if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	}
	if sprite_index=AtkSpr2
	{
	
	
	if animFrame=clamp(animFrame,1,2) if ground { z-=2 ground=0 zSpeed=-5}
	if !ground 
	{MoveType=1 animFrame=2.9
	isThrow=0 throwing=0 atkAddX=32 atkAddY=0 atkAddZ=24 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	if place_free(x+2*targetX,y) x+=2*image_xscale
	//if place_free(x,y+2*targetY) if y<view_yview[0]+240-2 y+=2*targetY
	if zSpeed>0 z+=0.45
	}

	image_index=animFrame image_speed=0
	if animFrame=clamp(animFrame,2,3) and !ground atk=1 else atk=0
	}

	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else {if ground animFrame+=0.1 if sprite_index=AtkSpr2 and ground animFrame+=0.2} if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}
if anim=11
{sprite_index=spr_femburglar_flip
		
	if animFrame<1 {animFrame+=0.1
		sprite_index=spr_femburglar_attack2 image_index=3
		}
if animFrame=1 {specialtimes[0]=1 animFrame=1.5 ground=0 zSpeed=-8 PlaySoundNoStack(snd_swing) PlaySoundNoStack(snd_femenemy4)}
if !ground {if specialtimes[0]<6.5 specialtimes[0]+=0.25 image_index=specialtimes[0]
sentflying=1*image_xscale MoveType=1 damage=0.15 atk=1
}else {atk=0
	if animFrame=1.5 {animFrame=2.1}
	}
	if animFrame>2 {animFrame+=0.1 sprite_index=spr_femburglar_attack2 image_index=3 if animFrame>2.8 canmove=1}

}


}
