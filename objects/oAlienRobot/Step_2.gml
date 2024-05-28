enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>60
	anim=12 else anim=11
	
	if anim=12 if current_pal=1 anim=13
	}
	
	
	if anim=11
	{
	selfatk.x=x+32*image_xscale	
	selfatk.spriteFX=spr_elecflash selfatk.HitSound=snd_shocked
	 hit=0  sprite_index=AtkSpr
MoveType=3 damage=0.2 if AnimFrame=0 {specialcheck0=0}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if AnimFrame=1.9 PlaySoundNoStack(snd_shocked2)
	frame_set(2,2,0.5) if AnimFrame=clamp(AnimFrame,2,3.9) atk=1 else atk=0
	frame_set(3,3,0.5) if AnimFrame=3.5 if specialcheck0!=16 {specialcheck0+=1 AnimFrame=2}
	frame_set(4,1,0.1) if AnimFrame>4.5 canmove=1
	}
	
		if anim=12
	{if AnimFrame=0 specialcheck0=0
	sprite_index=spr_alienrobot_shoot
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.05) if AnimFrame=3 {PlaySoundNoStack(snd_alien1)
projectile_create(x+25*image_xscale,y,z-40,-32,spr_alienrobot_bullet,4*image_xscale,mask_small,spr_hitflash2,0.05,0,2,0,0)
		
		}
	frame_set(3,3,0.1) if AnimFrame=3.9 if specialcheck0!=4 {specialcheck0+=1 AnimFrame=2.9}
	frame_set(4,2,0.05)	
	frame_set(5,1,0.1)
	frame_set(6,0,0.1) if AnimFrame>6.5 canmove=1
	}
	
	if anim=13
	{
	sprite_index=spr_alienrobot_launch
	frame_set(0,0,0.25)
	frame_set(1,1,0.25)
	frame_set(2,2,0.25) if AnimFrame=3
	{///8, 51
		PlaySound(snd_metalhit)
	spit=instance_create_depth(x+8*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-55 spit.image_xscale=image_xscale
spit.sprite_index=spr_alienrobot_bomb spit.bounce=3
spit.my_pal_sprite=my_pal_sprite  spit.current_pal=current_pal
with spit
{MoveType=5 haspal=1
hitflash=spr_explosion3
endflash=spr_explosion3

hitSnd=snd_hit
}
	}
	frame_set(3,3,0.25)
	frame_set(4,4,0.1)
	frame_set(5,2,0.25)
	frame_set(6,0,0.25)
	if AnimFrame>6.5 canmove=1
	
	}