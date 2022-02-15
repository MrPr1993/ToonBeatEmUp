enemy_endstep()
throw_step()
overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1



	///Attacks
if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>40
anim=12
else
anim=11
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