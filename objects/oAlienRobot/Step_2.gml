enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>80
	anim=12 else anim=11
	}
	
	
	if anim=11
	{
	selfatk.x=x+32*image_xscale	
	
	 hit=0  sprite_index=AtkSpr
MoveType=3 damage=0.2 if animFrame=0 {specialcheck0=0}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,3.9) atk=1 else atk=0
	frame_set(3,3,0.5) if animFrame=3.5 if specialcheck0!=16 {specialcheck0+=1 animFrame=2}
	frame_set(4,1,0.1) if animFrame>4.5 canmove=1
	}
	
		if anim=12
	{if animFrame=0 specialcheck0=0
	sprite_index=spr_alienrobot_shoot
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.05) if animFrame=3 {
projectile_create(x+25*image_xscale,y,z-40,-32,spr_bullet,4*image_xscale,mask_small,spr_hitflash,0.05,0,2,0,0)
		}
	frame_set(3,3,0.1) if animFrame=3.9 if specialcheck0!=4 {specialcheck0+=1 animFrame=2.9}
	frame_set(4,2,0.05)	
	frame_set(5,1,0.1)
	frame_set(6,0,0.1) if animFrame>6.5 canmove=1
	}