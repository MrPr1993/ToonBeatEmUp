enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

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
{atkcol_set(59,0,24,2.85,1,64)
if AnimFrame=0  PlaySound(snd_scientist7)

canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_scientistm_attack1
image_index=AnimFrame

atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1

frame_set(0,0,0.1)
frame_set(1,1,0.25)

frame_set(2,2,0.25)
if AnimFrame=clamp(AnimFrame,2,2.99){atk=1
} else { atk=0}

frame_set(3,3,0.05)
frame_set(4,4,0.5)
if AnimFrame>3.5 canbeGrabbed=1

if AnimFrame>4.5 {atk=0 canmove=1}
}

//?Tentacle Slaps
if anim=12
{
atkcol_set(89,0,13,4.15,1,79)
if AnimFrame=0 {specialcheck4=0} sprite_index=spr_scientistm_attack2
frame_set(0,0,0.1) damage=0.1 MoveType=1
frame_set(1,1,0.25) if AnimFrame=2 PlaySound(snd_swing5)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25) //
frame_set(6,6,0.25) if AnimFrame=7 PlaySound(snd_swing5)
frame_set(7,7,0.25)
frame_set(8,8,0.25)
frame_set(9,9,0.25) if AnimFrame>=10 {if specialcheck4!=2 {PlaySound(snd_swing5) AnimFrame=2 specialcheck4+=1}}

frame_set(10,9,0.1) if AnimFrame=clamp(AnimFrame,2,3.9) or AnimFrame=clamp(AnimFrame,7,8.9) {sentflying=2*image_xscale atk=1} else {sentflying=0 atk=0}
frame_set(11,9,0.1) 
frame_set(12,9,0.1)
frame_set(13,10,0.1)
if AnimFrame>13.5 canmove=1
}


///Egg Attack
if anim=13
{sprite_index=spr_scientistm_attack3
	//if AnimFrame=0 PlaySoundNoStack(snd_fzombie3)
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.1)
frame_set(4,1,0.25) if AnimFrame=5 
{
PlaySoundNoStack(snd_scientist7)
spit=instance_create_depth(x+102*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=4*image_xscale spit.z=-55 spit.image_xscale=image_xscale
spit.sprite_index=spr_scientistm_egg spit.bounce=3
with spit
{
hitflash=spr_scientistm_egg3
endflash=spr_scientistm_egg2
}

}


frame_set(5,4,0.25)
frame_set(6,5,0.25)
frame_set(7,4,0.25)
frame_set(8,5,0.25)
frame_set(9,4,0.25)
frame_set(10,5,0.25)
frame_set(11,4,0.25)
frame_set(12,5,0.25)
frame_set(13,4,0.25)
frame_set(14,4,0.25)
frame_set(15,4,0.25)
frame_set(16,4,0.25)
frame_set(17,6,0.25)

if AnimFrame>17.75 {canmove=1 atk=0}
}

if anim=14 //Spin Attack
{
//if AnimFrame=0  PlaySound(snd_wolfita7)
if AnimFrame=0 {specialtimes[0]=0 specialtimes[1]=choose(-4,4) specialtimes[2]=choose(-2,2)}
canbeGrabbed=0
MoveType=1 damage=0.2 isCut=1 HitSound=snd_cut selfatk.HitSpark=spr_blood
sprite_index=spr_scientistm_attack4

//atkAddX=32 atkAddY=0 atkAddZ=0 selfatk.image_xscale=3.5*image_xscale selfatk.image_yscale=1
atkcol_set(0,0,1,5.85,1,152)
	
frame_set(0,0,0.1)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,2,0.25) if AnimFrame=4 PlaySound(choose(snd_scientist5,snd_scientist6))
frame_set(4,3+specialtimes[0],0.01)

if AnimFrame=clamp(AnimFrame,4,4.99){
	if !audio_is_playing(snd_swing5) PlaySound(snd_swing5)
	atk=1 specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
x+=specialtimes[1]
y+=specialtimes[2]
if x>oControl.camX+320 {x-=4 specialtimes[1]=-4}
if x<oControl.camX {x+=4 specialtimes[1]=4}
if !place_free(x,y-1) {specialtimes[2]=2 y+=1}
if y>oControl.camY+240 {y-=1 specialtimes[2]=-2}

} else { atk=0 sentflying=0}
frame_set(5,5,0.25)
frame_set(6,6,0.05)
frame_set(7,7,0.25)
if AnimFrame>6.5 canbeGrabbed=1

if AnimFrame>7.5 {atk=0 canmove=1}
}

///Flying Tentacles
if anim=65
{atkcol_set(83,0,-158,5.85,1,194)
sprite_index=spr_scientistm_attack5
if AnimFrame=0 {specialcheck3=z-128 }

frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,3,10) {zSpeed=-16 z=clamp(z,specialcheck3,0)}
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.1) if AnimFrame=clamp(AnimFrame,6,9.2) atk=1 else atk=0
frame_set(4,4,0.25)
frame_set(5,5,0.1)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.25)
frame_set(9,9,0.25) if AnimFrame=10 zSpeed=8
frame_set(10,5,0.25)
frame_set(11,10,0.25)
if AnimFrame>11 if ground {atk=0 canmove=1}

}


///Intro
if anim=100
{canbeGrabbed=0 recovery=10

if specialanim=3
{sprite_index=spr_scientist_stand image_index+=0.1
AnimFrame+=0.1

if AnimFrame>12 {AnimFrame=0 specialanim-=1}
}

if specialanim=2
{x+=2*image_xscale sprite_index=spr_scientist_move image_index+=0.25
AnimFrame+=0.1

if AnimFrame>4 {AnimFrame=0 specialanim-=1}
}

if specialanim=1
{sprite_index=spr_scientist_anger image_index+=0.1
AnimFrame+=0.1

if AnimFrame>12 {AnimFrame=0 specialanim-=1}
}

if specialanim=0
{
sprite_index=spr_scientist_transform 
//if animLock=0
frame_set(0,0,0.2) //if AnimFrame=1 PlaySound(snd_hwolf4)
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
frame_set(15,3,0.2) //if AnimFrame=16 {PlaySound(snd_wolfita2) oControl.quakeFXTime=8}

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

if AnimFrame>36.9 {canbeGrabbed=1 recovery=0 anim=0 canmove=1 alarm[1]=30}
}
}

