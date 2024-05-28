/// @description Insert description here
// You can write your code in this editor
////Intro
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1


if anim=100
{if AnimFrame=0 {AnimFrame=0.1 specialtimes[0]=-200}
sprite_index=spr_dastardly2_intro	

spdZ=0

z=specialtimes[0]

if z<0 specialtimes[0]+=0.45 else if AnimFrame=0.1 AnimFrame=1

frame_set(1,0,0.1)
frame_set(2,1,0.05)
frame_set(3,2,0.25)
frame_set(4,3,0.05)
frame_set(5,4,0.1)
if AnimFrame>5.5 canmove=1
}

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
	anim=choose(12) else anim=choose(12,13,14,65,650)
}
	else
	anim=11
}

if anim=11 ///Kick
{sprite_index=spr_dastardly2_attack1
atkcol_set(38,0,0,2.55,1,140)
	MoveType=1 damage=0.2
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
frame_set(1,1,0.5)
frame_set(2,2,0.25)
frame_set(3,3,0.1)
frame_set(4,0,0.1)
if AnimFrame>4.5 canmove=1
}

///Charge claw
if anim=12
{sprite_index=spr_dastardly2_attack2 MoveType=1 damage=0.3 isCut=1
	atkcol_set(56,0,0,2.75,1,112)
	if AnimFrame=0 {specialtimes[0]=10 specialtimes[1]=0}
frame_set(0,0,0.25)
frame_set(1,1,0.25) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else atk=0
if AnimFrame=clamp(AnimFrame,2,5) sentflying=2*image_xscale else sentflying=0
frame_set(2,2+2*specialtimes[1],0.5)
frame_set(3,3+2*specialtimes[1],0.5)
frame_set(4,3+2*specialtimes[1],0.25) if AnimFrame=5 {if specialtimes[0]!=0 {AnimFrame=1 specialtimes[0]-=1 specialtimes[1]^=1;}}
frame_set(5,0,0.25)
if AnimFrame>5.5 canmove=1
}

if anim=13 ///Bat fire
{sprite_index=spr_dastardly2_attack3 MoveType=1 damage=0.2
	//atkcol_set(30,0,0,1.75,1,112)
	
	var bulcheck=0;
	
if AnimFrame=0 {specialtimes[0]=3 specialtimes[1]=0}
	specialtimes[1]+=0.25 if specialtimes[1]=2 specialtimes[1]=0
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
frame_set(1,1,0.1)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4+specialtimes[1],0.25)
 if AnimFrame=5
{
bulcheck=1
}
frame_set(5,5,0.1) if AnimFrame=6 {if specialtimes[0]!=0 {AnimFrame=4 specialtimes[0]-=1 bulcheck=1}}
frame_set(6,4,0.1)
if AnimFrame>6.5 canmove=1

if bulcheck {
var dirh=point_direction(x,y,targetEnemy.x,targetEnemy.y)
projectile_create(x+8*image_xscale,1,z-50,8,spr_bullet,lengthdir_x(4,dirh),mask_small,spr_explosion2,0.2,1,1,-1,-1)
projectile.vspeed=lengthdir_y(4,dirh)
}
}

if anim=14 ///Launch
{sprite_index=spr_dastardly2_attack4
	atkcol_set(30,0,0,1.75,1,112)
if AnimFrame=0 {specialtimes[0]=0} spdZ=0
z=specialtimes[0] 
if AnimFrame<1
specialtimes[0]-=4
frame_set(0,0,0.05) if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
frame_set(1,1,0.1)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.1)
frame_set(6,4,0.1)
if AnimFrame>6.5 {canmove=1 ground=0 anim=0}


}

if anim=65 //Grab
{sprite_index=spr_dastardly2_attack5 sentflying=5*image_xscale
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else {atk=0 sentflying=0}
frame_set(1,1,0.25)
frame_set(2,2,0.025)
frame_set(3,0,0.1)
if AnimFrame>3.5 canmove=1
}

if anim=6666 ///Grab Enemy
{canBounce=0 sentflying=0
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_dastardly2_attack5b
if image_index<1
image_index+=0.1
else
image_index+=0.25 if image_index>4.5 image_index=4 hspeed=0 canmove=0

//if image_index=1 PlaySoundNoStack(snd_mzombie3)

if targetID!=-1 
{
targetID.x=x+48*image_xscale
targetID.y=y targetID.z=z-10
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
if image_index=2 or image_index>2.1
{
if image_index=2
{
flashFX(x+34*image_xscale,y+1,z-67,spr_blood,0,0.5,-1,image_xscale,1,c_white,1)
with targetID {PlaySound(snd_cut) event_user(11) shaketime=10}
}
{with targetID {hp-=0.001 shaketime=10}	hp+=0.001 hp=clamp(hp,0,maxhp)}
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


if anim=650 ///Spin
{sprite_index=spr_dastardly2_attack6 canbeGrabbed=0
	atkcol_set(-1,0,0,1.75,1,112) MoveType=1 isCut=1
if AnimFrame=0 {specialtimes[0]=0 specialtimes[1]=0}	
specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,2,3) {atk=1
	if x>targetEnemy.x sentflying=lerp(sentflying,-6,0.1) else sentflying=lerp(sentflying,6,0.1)
	
	if y>targetEnemy.y specialtimes[1]=lerp(specialtimes[1],-2,0.1) else specialtimes[1]=lerp(specialtimes[1],2,0.1)	
	
	if specialtimes[1]<0 {if place_free(x,y+specialtimes[1]) y+=specialtimes[1]}
	else {if y<room_height y+=specialtimes[1]}
	

	
	} else {atk=0 sentflying=0}
frame_set(1,1,0.25)
frame_set(2,2+specialtimes[0],0.01)



frame_set(3,1,0.1)
frame_set(4,0,0.05)
if AnimFrame>4.5 canmove=1
} else canbeGrabbed=1

//65,650,6500,65000)