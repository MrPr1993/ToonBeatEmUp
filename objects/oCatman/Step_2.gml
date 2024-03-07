enemy_endstep()
throw_step()
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if bombRecharge!=0 bombRecharge-=1

if current_pal=1 
{if bombRecharge=0 rangeAtk=160 else rangeAtk=100} else rangeAtk=100

	///Attacks
if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>40
anim=12
else
anim=11

if current_pal=1 anim=13
}
	
	if anim=11 ///Attack Stand
	{//anim=11 exit;
		hit=0  
	if animFrame=0
sprite_index=spr_catman_attack selfatk.recovery=4 selfatk.HitSound=snd_cut selfatk.HitSpark=spr_blood
	atkcol_set(28,0,25,1.45,1,29)
	MoveType=0 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	if animFrame=2 {PlaySoundNoStack(snd_cat3) PlaySoundNoStack(snd_swing)}
	}

if anim=12
{
sprite_index=spr_catman_attack2
if animFrame=0 special0=0
selfatk.isCut=1 damage=0.02 selfatk.MoveType=0 selfatk.recovery=4 selfatk.HitSound=snd_cut selfatk.HitSpark=spr_blood
frame_set(0,0,0.25)
frame_set(1,1,0.05) if animFrame=2 {if special0=0 {PlaySoundNoStack(snd_swing5) PlaySoundNoStack(snd_cat3) zSpeed=-6} special0=1}
frame_set(2,2,0.25) if animFrame=clamp(animFrame,2,4) {atk=1 sentflying=2*image_xscale} else {atk=0 sentflying=0}
frame_set(3,3,0.25) if animFrame=4 if ground animFrame=5 else {PlaySoundNoStack(snd_swing5) animFrame=2}
if ground and animFrame=clamp(animFrame,2,4) animFrame=2
frame_set(4,0,0.25)
frame_set(5,0,0.25)
frame_set(6,1,0.25)

if animFrame>6.75 {canmove=1}
}

if anim=13
{
sprite_index=spr_catman_attack3
	//if animFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.125)
frame_set(1,1,0.125)
frame_set(2,2,0.125)
frame_set(3,3,0.05)
if animFrame=4 
{PlaySoundNoStack(snd_cat3)
PlaySoundNoStack(snd_swing5)
spit=instance_create_depth(x+48*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-55 spit.image_xscale=image_xscale
spit.sprite_index=spr_catman_yarn spit.bounce=3
spit.my_pal_sprite=my_pal_sprite  spit.current_pal=current_pal
with spit
{MoveType=591001 haspal=1
hitflash=spr_catman_yarn2
endflash=spr_catman_yarn2

hitSnd=snd_hit
}

}
frame_set(4,4,0.5)
frame_set(5,5,0.05)
frame_set(6,0,0.125)
if animFrame>6.75 {canmove=1}
}