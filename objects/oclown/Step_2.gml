enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
	anim=choose(11,12)
	}
	
	if anim=11
	{
	 hit=0  sprite_index=spr_clown_attack
MoveType=0 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	if anim=12
	{
	frame_set(0,0,0.05)	if animFrame<1 {z-=2}
	frame_set(1,1,0.1) if animFrame=clamp(animFrame,1,2) sentflying=6*image_xscale
	else sentflying=0
	if sentflying=6*image_xscale {animFrame=1
		if (image_xscale=1 and x=clamp(x,targetEnemy.x-32,targetEnemy.x))	
		or (image_xscale=-1 and x=clamp(x,targetEnemy.x,targetEnemy.x+32))	
		{sentflying=0 animFrame=2}
		}
    frame_set(2,2,0.5)
	frame_set(3,3,0.1)
	frame_set(4,4,0.1)
	
	 hit=0  sprite_index=spr_clown_attack2
MoveType=1 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.5) atk=1 else atk=0
 if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}