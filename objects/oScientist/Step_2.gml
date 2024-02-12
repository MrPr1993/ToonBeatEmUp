enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1


if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
	anim=choose(12) else anim=choose(13,14,65)
}
	else
	anim=11
}


if anim=11 ///Bite Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)

canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_scientistm_attack1
image_index=animFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if animFrame=clamp(animFrame,2,2.99){atk=1
} else { atk=0}

frame_set(3,3,0.05)
frame_set(4,0,0.5)
if animFrame>3.5 canbeGrabbed=1

if animFrame>4.5 {atk=0 canmove=1}
}

//?Tentacle Slaps
if anim=12
{if animFrame=0 {specialcheck4=0} sprite_index=spr_scientistm_attack2
frame_set(0,0,0.1) damage=0.1 MoveType=1
frame_set(1,1,0.1)
frame_set(2,2,0.2)
frame_set(3,3,0.1)
frame_set(4,4,0.2)
frame_set(5,5,0.2)
frame_set(6,6,0.1) if animFrame=clamp(animFrame,2,3) or animFrame=clamp(animFrame,5,6) {sentflying=8*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(7,4,0.1) if animFrame>7-0.2 {if specialcheck4!=2 {animFrame=2 specialcheck4+=1}}
frame_set(8,1,0.1)
frame_set(9,0,0.1)
if animFrame>9.5 canmove=1
}


///Egg Attack
if anim=13
{sprite_index=spr_scientistm_attack3
	//if animFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.125)
frame_set(1,1,0.125)
frame_set(2,2,0.125)
frame_set(3,3,0.05)
frame_set(4,4,0.25) if animFrame=5 
{
specialcheck0=0
	if specialcheck0=0
	{//PlaySoundNoStack(snd_fzombie4)
		spit=instance_create_depth(x+27*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-55 spit.image_xscale=image_xscale}
	else
{sm=instance_create_depth(x+27*image_xscale,y+2,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-55}
	
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

if anim=14 //Rapier Attack
{
//if animFrame=0  PlaySound(snd_wolfita7)
if animFrame=0 {specialtimes[0]=0}
canbeGrabbed=0
MoveType=1 damage=0.2 isCut=1 HitSound=snd_cut selfatk.HitSpark=spr_blood
sprite_index=spr_scientistm_attack4

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
	atkcol_set(48,0,3,2.5,1,96)
	
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,1,0.05)
frame_set(3,1,0.25) if animFrame=4 PlaySound(choose(snd_martianb4,snd_martianb5))
frame_set(4,2+specialtimes[0],0.01)

if animFrame=clamp(animFrame,4,4.99){
	if !audio_is_playing(snd_swing5) PlaySound(snd_swing5)
	atk=1 sentflying=2*image_xscale specialtimes[0]+=0.5 if specialtimes[0]=8 specialtimes[0]=0
} else { atk=0 sentflying=0}
frame_set(5,1,0.05)
frame_set(6,0,0.5)
frame_set(7,0,0.5)
if animFrame>6.5 canbeGrabbed=1

if animFrame>7.5 {atk=0 canmove=1}
}

if anim=65
{
sprite_index=spr_scientistm_attack5
if animFrame=0 {specialcheck3=z+128}

frame_set(0,0,0.1) if animFrame=clamp(animFrame,1,8) {zSpeed=-8 z=clamp(z,specialcheck3,0)}
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.05)
frame_set(5,3,0.1)
frame_set(6,2,0.1)
frame_set(7,1,0.1)
frame_set(8,1,0.1)
if animFrame>4 if ground {atk=0 canmove=1}

}


///Intro
if anim=100
{canbeGrabbed=0 recovery=10

if specialanim=3
{sprite_index=spr_scientist_stand image_index+=0.1
animFrame+=0.1

if animFrame>12 {animFrame=0 specialanim-=1}
}

if specialanim=2
{x-=2 sprite_index=spr_scientist_move image_index+=0.25
animFrame+=0.1

if animFrame>4 {animFrame=0 specialanim-=1}
}

if specialanim=1
{sprite_index=spr_scientist_anger image_index+=0.1
animFrame+=0.1

if animFrame>12 {animFrame=0 specialanim-=1}
}

if specialanim=0
{
sprite_index=spr_scientist_transform 
//if animLock=0
frame_set(0,0,0.2) //if animFrame=1 PlaySound(snd_hwolf4)
frame_set(1,1,0.2) 
frame_set(2,2,0.2)
frame_set(3,3,0.2)
frame_set(4,4,0.2)
frame_set(5,3,0.2)
frame_set(6,4,0.2)
frame_set(7,3,0.2)
frame_set(8,4,0.2)
frame_set(9,3,0.2)
frame_set(10,4,0.2)
frame_set(11,3,0.2)
frame_set(12,4,0.2)
frame_set(13,3,0.2)
frame_set(14,4,0.2)
frame_set(15,3,0.2) //if animFrame=16 {PlaySound(snd_wolfita2) oControl.quakeFXTime=8}

frame_set(16,4,0.2) 
frame_set(17,5,0.2)
frame_set(18,6,0.2)
frame_set(19,7,0.2)
frame_set(20,6,0.2)
frame_set(21,7,0.2)
frame_set(22,6,0.2)
frame_set(23,7,0.2)
frame_set(24,6,0.2)
frame_set(25,7,0.2)
frame_set(26,6,0.2)
frame_set(27,7,0.2)
frame_set(28,6,0.2)
frame_set(29,7,0.2)
frame_set(30,6,0.2)
frame_set(31,7,0.2)
frame_set(32,8,0.2)
frame_set(33,9,0.2)
frame_set(34,10,0.2)
frame_set(35,11,0.2)
frame_set(36,12,0.05)

if animFrame>36.9 {canbeGrabbed=1 recovery=0 anim=0 canmove=1 alarm[1]=30}
}
}

