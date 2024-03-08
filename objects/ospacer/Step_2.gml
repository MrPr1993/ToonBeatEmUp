enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

if bombRecharge!=0 bombRecharge-=1;

	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>70
	anim=13 else anim=11
	
	if anim=13 if current_pal=1 anim=12
	}
	

		if anim=11
{
//if animFrame=0 {PlaySound(choose(snd_oni5,snd_oni8))}	
atkcol_set(0,0,0,1.5,1,34)
if animFrame=0 {special0=0 sprite_index=spr_spacer_attack}
damage=0.15 selfatk.MoveType=1
if animFrame<0.5 frame_set(0,0,0.05) else frame_set(0,1,0.05)
if animFrame=1 if ground {sprite_index=spr_spacer_hit z+=-32 ground=0 zSpeed=-4}
frame_set(1,14,0.25) if animFrame=clamp(animFrame,1,5) {atk=1 sentflying=2*image_xscale} else {atk=0 sentflying=0}
frame_set(2,13,0.25) 
frame_set(3,12,0.25) 
frame_set(4,11,0.25) if animFrame=5 if !ground animFrame=1
if ground and animFrame=clamp(animFrame,1,4) {animFrame=5 sprite_index=spr_spacer_attack}
frame_set(5,1,0.25)
frame_set(6,1,0.25)

if animFrame>6.75 {canmove=1}
}
	
		
	if anim=12
	{if animFrame=0 specialcheck0=0
	sprite_index=spr_spacer_shoot
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.25) if animFrame=3 {
		if specialcheck0=0
		{PlaySoundNoStack(snd_alien2)
projectile_create(x+28*image_xscale,y+1,z-32,32,spr_spacer_bubbleproj,1*image_xscale,mask_small,spr_hitflash,0.2,45,45,0,0)
		}
		}
	frame_set(3,3,0.25) if animFrame=3.5 if specialcheck0!=8 {specialcheck0+=1 animFrame=2}
	frame_set(4,2,0.25)	
	frame_set(5,1,0.1)
	frame_set(6,0,0.1) if animFrame>6.5 canmove=1
	}
	
	if anim=13
	{
	if animFrame=0 {specialtimes[0]=0 sprite_index=spr_spacer_shoot}
	selfatk.isCut=1 selfatk.MoveType=1 damage=0.2
	frame_set(0,0,0.25)
	frame_set(1,1,0.25) if animFrame=2 {PlaySoundNoStack(snd_heavystep) sprite_index=spr_spacer_charge} if animFrame=clamp(animFrame,2,3) {specialtimes[0]+=0.25 if specialtimes[0]=3 {specialtimes[0]=0 PlaySoundNoStack(snd_heavystep)} sentflying=3*image_xscale atk=1} else {sentflying=0 atk=0}
	frame_set(2,specialtimes[0],0.01) if animFrame=3 sprite_index=spr_spacer_attack
	frame_set(3,1,0.25)
	if animFrame>3.5 canmove=1
	
	}