enemy_endstep()
throw_step()


if anim=10
{specialcheck0=0
if distance_to_point(targetEnemy.x,targetEnemy.y)>40
anim=11 else anim=12
}

	if anim=11
	{
		
	///Main Palette
	if current_pal=3
	{sprite_index=spr_ladybot_fire
frame_set(0,0,0.1)
frame_set(1,1,0.1)	if animFrame=2
{
projectile_create(x+6*image_xscale,y,z-61+16,32,spr_ladybot_rocket,4*image_xscale,mask_small,spr_explosion4,0.25,5,5,4,-4)
projectile.HitSound=snd_explosion2 projectile.haspal=1
projectile.current_pal=current_pal projectile.my_pal_sprite=my_pal_sprite

dust_make(x+6*image_xscale,y+1,z-64+8,0,0,0) dustmk.sprite_index=spr_explosion
oControl.quakeFX=10 PlaySound(snd_explosion)
}
frame_set(2,2,0.25)
frame_set(3,3,0.25)	
frame_set(4,4,0.25)		
frame_set(5,1,0.01)
frame_set(6,0,0.25)	
if animFrame>6.5 canmove=1
	exit;
	}
	
		if animFrame=0 {specialcheck0=0 specialcheck1=0}
sprite_index=spr_ladybot_charge selfatk.dizzyAtk=1 MoveType=1 damage=0.2 
frame_set(0,0,0.1)
frame_set(1,1,0.25) if animFrame<3 {
	if image_xscale=1 and targetEnemy.x>x+specialcheck1 specialcheck1+=8
	if image_xscale=-1 and targetEnemy.x<x-specialcheck1 specialcheck1+=8	
	}
frame_set(2,2,0.25) if animFrame=2.75 if specialcheck0!=4 {specialcheck0+=1 animFrame=1
	dust_make(x,y+1,z-4,-0.5*image_xscale,0,0)
	}
frame_set(3,3,0.1) if animFrame=clamp(animFrame,3,3.9) {
		dust_make(x,y+1,z-4,-1*image_xscale,0,0)
	sentflying=8*image_xscale atk=1
	specialcheck1-=8 if specialcheck1>0 animFrame=3 else animFrame=4
	} else {atk=0 sentflying=0}
frame_set(4,3,0.05)
frame_set(5,0,0.1)
if animFrame>5.5 canmove=1
	}

if anim=12
{
sprite_index=spr_ladybot_kick damage=0.1 MoveType=1
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,3) atk=1 else atk=0
frame_set(3,3,0.05) 
frame_set(4,0,0.1)
if animFrame>4.7 canmove=1
}