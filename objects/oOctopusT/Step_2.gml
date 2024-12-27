/// @description Insert description here
// You can write your code in this editor
if targetEnemy!=-1
if targetEnemy.dead=0 and hurt=0
{
targetX=targetEnemy.x+-32*image_xscale
targetY=targetEnemy.y
}


depth=-y

if anim=0
{
	
if oControl.ignore=0
{
if targetEnemy.x>x image_xscale=1 else image_xscale=-1
if x!=clamp(x,targetX-4,targetX+4)
if x>targetX x-=1 else x+=1
if y!=clamp(y,targetY-2,targetY+2)
if y>targetY y-=1 else y+=1
}
sprite_index=spr_octopus_tent0 if image_index<4.75 image_index+=0.1 else image_index=3

 byetime+=1;
if  byetime>260 {AnimFrame=0 anim=4}
}


if anim=10
{
anim=choose(11,12)
}

if anim=11 ///Attack
{sprite_index=spr_octopus_tent1
selfatk.damage=0.2 selfatk.MoveType=1 selfatk.image_xscale=image_xscale
selfatk.x=x+48*image_xscale selfatk.y=y selfatk.z=z+16
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame=clamp(AnimFrame,3,4) atk=1 else atk=0
frame_set(3,3,0.25) if AnimFrame>4 recovery=30;
frame_set(4,4,0.05) 
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
if AnimFrame>7.5 {instance_destroy()}
}

if anim=12 ///Grab
{sprite_index=spr_octopus_tent3
selfatk.damage=0.2 selfatk.MoveType=1 selfatk.image_xscale=image_xscale
selfatk.x=x+48*image_xscale selfatk.y=y selfatk.z=z+16
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.05) if AnimFrame=clamp(AnimFrame,3,4) atk=1 else atk=0
frame_set(3,3,0.25) if AnimFrame>4 recovery=30;
frame_set(4,4,0.05) 
frame_set(5,3,0.25) if AnimFrame>5 {AnimFrame=0 anim=4}
}

if targetID!=-1
if anim!=6666
{
with targetID
{
AnimFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
throw_quickrelease() ground=0 zSpeed=-2 sentflying=-1*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
canmove=1 hurt=0 recovery=30
}
}

if anim=6666 ///Grab Enemy
{canBounce=0
isThrow=1 //hud_show()
throwing=1
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_octopus_tent4
if image_index<1
image_index+=0.1
else
image_index+=0.1 if image_index>2 image_index=0 hspeed=0 canmove=0

//if image_index=1 PlaySoundNoStack(snd_buffenemy4)

if targetID!=-1 
{
targetID.x=x+32*image_xscale
targetID.y=y targetID.z=z-8
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
}

if targetID!=-1 if targetID.hp=0 
{
with targetID
{
	AnimFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
	HitForceReact=-4*image_xscale throw_quickrelease() ground=0 zSpeed=-4 sentflying=-2*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
}
AnimFrame=0 anim=4 mask_index=mask_none
}
}



{
///Drag Enemy
if targetID!=-1
{
targetID.targetHeightHit=1 targetID.isGrabbed=1 
with targetID {sprite_index=ThrownSpr event_user(1) image_index=GrabFrame}
targetID.image_xscale=-image_xscale targetID.depth=depth+1
}
grabX=12*image_xscale grabY=0 grabZ=z-20 

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
if image_index=1 
{
with targetID {hp-=0.04 PlaySound(snd_hit) event_user(11) shaketime=10}
	} //34,67
if image_index<1 targetID.image_index=targetID.GrabFrame else targetID.image_index=1
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

if anim=4 or anim=5 or anim=6 or anim=7 ///Disappear
{selfatk.atk=0 sprite_index=spr_octopus_tent2
frame_set(0,4,0.25)
frame_set(1,5,0.25)
frame_set(2,6,0.25)
frame_set(3,7,0.25)
frame_set(4,0,0.25)
if AnimFrame>4.5 {instance_destroy()}
}