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
		AnimFrame=0 anim=11 exit;
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
	{MoveType=2 image_index=AnimFrame image_speed=0
	if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
	}
	if sprite_index=AtkSpr2
	{
	
	
	if AnimFrame=clamp(AnimFrame,1,2) if ground { z-=2 ground=0 zSpeed=-5}
	if !ground 
	{MoveType=1 AnimFrame=2.9
	isThrow=0 throwing=0 atkAddX=32 atkAddY=0 atkAddZ=24 selfatk.image_xscale=1.5*image_xscale selfatk.image_yscale=1
	if place_free(x+2*targetX,y) x+=2*image_xscale
	//if place_free(x,y+2*targetY) if y<view_yview[0]+240-2 y+=2*targetY
	if zSpeed>0 z+=0.45
	}

	image_index=AnimFrame image_speed=0
	if AnimFrame=clamp(AnimFrame,2,3) and !ground atk=1 else atk=0
	}

	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else {if ground AnimFrame+=0.1 if sprite_index=AtkSpr2 and ground AnimFrame+=0.2} if AnimFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}
if anim=11
{sprite_index=spr_femburglar_flip selfatk.x=x
		
	if AnimFrame<1 {AnimFrame+=0.1
		sprite_index=spr_femburglar_attack2 image_index=3
		}
if AnimFrame=1 {specialtimes[0]=1 AnimFrame=1.5 ground=0 zSpeed=-8 PlaySoundNoStack(snd_swing) PlaySoundNoStack(snd_femenemy4)}
if !ground {if specialtimes[0]<6.5 specialtimes[0]+=0.25 image_index=specialtimes[0]
sentflying=1*image_xscale MoveType=1 damage=0.15 atk=1
}else {atk=0
	if AnimFrame=1.5 {AnimFrame=2.1}
	}
	if AnimFrame>2 {AnimFrame+=0.1 sprite_index=spr_femburglar_attack2 image_index=3 if AnimFrame>2.8 canmove=1}

}


}
