/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
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
{
if targetEnemy.anim!=30 or targetEnemy!=31
anim=12 else {anim=0 alarm[1]=30}}
else
{anim=11}
}


//Swing Attack
if anim=11 ///Attack Stand
{ hit=0  sprite_index=spr_zombiem_attack

if AnimFrame=0 PlaySoundNoStack(snd_mzombie4)
	
atkcol_set(35,0,42,1.85,1,22) MoveType=1 damage=0.05
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.25) 
frame_set(4,4,0.1) if AnimFrame=clamp(AnimFrame,3,4) {atk=1 sentflying=4*image_xscale} else {atk=0 sentflying=0}
frame_set(5,1,0.25)
frame_set(6,0,0.25)
if AnimFrame>6.75 {canmove=1}
}

if anim=12 canbeGrabbed=0 else canbeGrabbed=1

/////Zombie Grab Charge
if anim=12
{
if AnimFrame=0 PlaySoundNoStack(snd_mzombie5)

atkcol_set(13,0,0,0.85,1,1) damage=0 MoveType=0
AnimFrame+=0.01 //selfatk.HitSound=-1
if AnimFrame<0.25 {sprite_index=StandSpr image_index=1}
else
{
if current_pal=0 or current_pal=2 ///Change to a clumsy tackle
{
if current_pal=2
{
anim=14
exit;
}

if image_xscale=1
and targetEnemy.x<x+96// and y=clamp(y,targetEnemy.y-8,targetEnemy.x+8)
{AnimFrame=0 anim=13 ground=0 zSpeed=-6 sentflying=6*image_xscale PlaySoundNoStack(DamageVoice1)}
if image_xscale=-1
and targetEnemy.x>x-96// and y=clamp(y,targetEnemy.y-8,targetEnemy.x+8)
{AnimFrame=0 anim=13 ground=0 zSpeed=-4 sentflying=4*image_xscale PlaySoundNoStack(DamageVoice1)}
}	

if targetEnemy.anim=30 or targetEnemy=31
{canmove=1 anim=0 alarm[0]=60 exit;}
	atk=1 
	sprite_index=MoveSpr image_index+=0.25
if x<targetEnemy.x {image_xscale=1 sentflying=2}
else {image_xscale=-1 sentflying=-2}
if y!=clamp(y,targetEnemy.y-2,targetEnemy.y+2)
if y>targetEnemy.y {if place_free(x,y-1) y-=1}
else {if place_free(x,y+1) y+=1}

}
if AnimFrame>2 {atk=0 canmove=1 anim=0}
}

///Clumsy Tacklea
if anim=13
{sprite_index=ThrownSpr atk=1 selfatk.damage=0.1 atkcol_set(13,0,0,0.85,1,64)
	selfatk.MoveType=1 sentflying=4*image_xscale
frame_set(0,16,0.25) 
frame_set(1,17,0.25)
frame_set(2,18,0.25)

if ground {selfatk.atk=0 canBounce=0 sentflying=0 hitBack=1 AnimFrame=0 anim=6 
	hground=instance_create_depth(x,y,0,oFlashFX) PlaySoundNoStack(snd_hitground)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z

	}
}

///Zombie Kick

///Jump Kick
if anim=14
{damage=0.1
if AnimFrame=0 {PlaySoundNoStack(snd_mzombie5) specialtimes[0]=0

	}	
sprite_index=spr_zombiem_kick
atkcol_set(35,0,22,1,1,22)

frame_set(0,0,0.25)
frame_set(1,0,0.05) if AnimFrame=2 {ground=0 zSpeed=-6 sentflying=2*image_xscale AnimFrame=2.1
	}
if AnimFrame=2.1 {image_index=1+specialtimes[0] if specialtimes[0]<1.5 specialtimes[0]+=0.25
	atk=1 MoveType=1 damage=0.2
				
	if ground {AnimFrame=3 atk=0}}
frame_set(3,0,0.1)
frame_set(4,0,0.1)
if AnimFrame>4.5 canmove=1
}

if anim=6666 ///Grab Enemy
{canBounce=0
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_zombiem_grab
if image_index<1
image_index+=0.1
else
image_index+=0.25 if image_index>4 image_index=0 hspeed=0 canmove=0

if image_index=1 PlaySoundNoStack(snd_mzombie3)

if targetID!=-1 
{
targetID.x=x+24*image_xscale
targetID.y=y targetID.z=z
targetID.GrabFrameExtra+=0.2
if targetID.GrabFrameExtra=3.8
targetID.GrabFrameExtra=0
sentFlying=0 
targetID.anim=31
targetID.hit=2
targetID.hitSource=id
targetID.ground=0 
targetID.atk=0
targetID.hurt=1
targetID.image_index+=0.1

targetID.recovery=0

targetID.showmash=1

if targetID.key_up_pressed
or targetID.key_down_pressed
or targetID.key_left_pressed
or targetID.key_right_pressed
{grabMax+=1 shaketime=10

if grabMax>4
{
HitType=1 

 canBounce=0
	hurt=1
	ground=0
	zSpeed=-6
	if hitBack=0
	sentflying=4*-image_xscale
	else
	sentflying=4*image_xscale
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5

sentflying=-2*image_xscale zSpeed=-2

if targetID!=-1
{
targetID.x=x+24*image_xscale
with targetID
{
AnimFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
throw_quickrelease() ground=0 zSpeed=-2 sentflying=-1*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
canmove=1 hurt=0 recovery=30
}

}
throwing=0 throwcombo=2
targetID=-1
}
}

}

if targetID!=-1
{
if targetID.anim!=30 and targetID.anim!=31
{
targetID.ground=0 
targetID=-1

throwing=0 AnimFrame=0 anim=0 canmove=1 throwcombo=2
alarm[1]=2
}}



{
///Drag Enemy
if targetID!=-1
{
targetID.targetHeightHit=1 targetID.isGrabbed=1 
with targetID {sprite_index=ThrownSpr event_user(1) image_index=GrabFrame}
targetID.image_xscale=-image_xscale targetID.depth=depth+1
}
grabX=32*image_xscale grabY=0 grabZ=0 

atk=0 
AnimFrame+=0.02 if AnimFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
if targetID!=-1
with targetID
{recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 AnimFrame=0 ground=0 zSpeed=-4 sentflying=-2*image_xscale image_index=GrabFrame anim=5 shaketime=10
canmove=0 hurt=1
}throwing=0 AnimFrame=0 anim=0 canmove=0 throwcombo=2 canmove=1 alarm[0]=60
targetID=-1 }


if targetID!=-1
{
if image_index=2 
{flashFX(x+34*image_xscale,y+1,z-67,spr_blood,0,0.5,-1,image_xscale,1,c_white,1)
with targetID {hp-=0.02 PlaySound(snd_cut) event_user(11) shaketime=10}
	} //34,67
if image_index<2 targetID.image_index=GrabFrame else targetID.image_index=1
if targetID.hp<0 or targetID.dead=1
{
with targetID
{
	AnimFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
	HitForceReact=-4*image_xscale throw_quickrelease() ground=0 zSpeed=-4 sentflying=-2*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
}
throwing=0 AnimFrame=0 canmove=1 throwcombo=2 alarm[0]=60
}
}
}


////Forcibly Break Out With Special Attacks
if AnimFrame>0.1 and targetID!=-1
{
if targetID.key_right_pressed
or targetID.key_right_pressed
or targetID.key_jump
or targetID.key_attack
AnimFrame+=0.25

////Instantly use Special
if (targetID.key_shield_pressed or targetID.key_super)
if targetID.pow>4
or targetID.hp>=powhp
{grabZ=0 targetID.z=z
with targetID {anim=0 hurt=0 ground=0 isGrabbed=0

powlock=1 pow=0 
if pow>4 powcheck=1 else if hp>=powhp powcheck=0
canmove=0 targetID=-1 AnimFrame=0 atk=1
anim=17 throwATK=0
   recovery=60}
targetID=-1
}
}
////Instantly use Super	

}


	if anim=61 ///Out of Character
{if AnimFrame=0 sprite_index=spr_zombieman_ooc MoveType=1 prevanim=61
frame_set(0,0,0.1)  if AnimFrame<2 if x=clamp(x,targetX-idleRange,targetX+idleRange) AnimFrame=2.1
frame_set(1,1,0.1) if AnimFrame=2 AnimFrame=0
frame_set(2,2,0.1) 
frame_set(3,3,0.05) 
frame_set(4,2,0.1) 
frame_set(5,2,0.25) if AnimFrame>5 {canmove=1 anim=0}
}




