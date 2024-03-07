/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
anim=12
else
anim=11

if current_pal=1 or current_pal=2 if anim=12 anim=13

}

//Swing Attack
if anim=11 ///Attack Stand
{ hit=0  sprite_index=spr_zombiew_attack
atkcol_set(35,0,42,1.85,1,22) MoveType=1 damage=0.05
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,1,0.25) if animFrame=3 PlaySound(snd_fzombie5)
frame_set(3,1,0.25) 
frame_set(4,2,0.1) if animFrame=clamp(animFrame,3,4) {atk=1 sentflying=4*image_xscale} else {atk=0 sentflying=0}
frame_set(5,3,0.25)
frame_set(6,0,0.25)
if animFrame>6.75 {canmove=1}
}

///Vomit Attack
if anim=12
{sprite_index=spr_zombiew_range
	if animFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.125)
frame_set(1,1,0.125)
frame_set(2,2,0.125)
frame_set(3,3,0.05)
frame_set(4,4,0.25) if animFrame=5 
{
specialcheck0=0
	if specialcheck0=0
	{PlaySoundNoStack(snd_fzombie4)
		spit=instance_create_depth(x+27*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-55 spit.image_xscale=image_xscale}
	else
{sm=instance_create_depth(x+27*image_xscale,y+2,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-55 sm.isPharaoh=0 sm.mainSmoke=spr_bigsmoke
		sm.sprite_index=spr_smokemid sm.animLoop=5.75 
		}
	
	}


frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,5,0.25)
frame_set(8,6,0.25)
frame_set(9,5,0.25)
frame_set(10,6,0.25)
frame_set(11,5,0.25)
frame_set(12,6,0.25)
frame_set(13,5,0.25)
frame_set(14,6,0.25)
frame_set(15,5,0.25)
frame_set(16,6,0.25)
frame_set(17,0,0.25)

if animFrame>17.75 {canmove=1 atk=0}
}

////Claw
if anim=13
{
sprite_index=spr_zombiew_attack damage=0.1
atkcol_set(52,0,2,3.25,1,91) MoveType=1
selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1) if animFrame=2 {PlaySoundNoStack(snd_swing5) PlaySound(snd_fzombie5)}
frame_set(3,3,0.5) if animFrame=clamp(animFrame,2,3) {sentflying=6*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(4,4,0.025)
frame_set(5,0,0.25) if animFrame>5.5 canmove=1
}

	if anim=61 ///Out of Character
{if animFrame=0 sprite_index=spr_zombiew_ooc MoveType=1 prevanim=61
frame_set(0,0,0.1)  if animFrame<2 if x=clamp(x,targetX-idleRange,targetX+idleRange) animFrame=2.1
frame_set(1,1,0.1) if animFrame=2 animFrame=0
frame_set(2,2,0.1) 
frame_set(3,3,0.05) 
frame_set(4,2,0.1) 
frame_set(5,2,0.25) if animFrame>5 {canmove=1 anim=0}
}

