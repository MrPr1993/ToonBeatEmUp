/// @description Insert description here
// You can write your code in this editor
if !instance_exists(oDragonMaiden) {instance_destroy() exit;}

if recovery!=0 recovery-=1

if targetEnemy!=-1
if targetEnemy.dead=0 and hurt=0
{
targetX=targetEnemy.x+-32*image_xscale
targetY=targetEnemy.y
}




depth=-y

if anim=0
{
//if oControl.ignore=0
{

if image_xscale=1 lockX=lerp(lockX,oControl.camX-200,0.5) else lockX=lerp(lockX,oControl.camX+320+200,0.5)
lockY=targetY


}
sprite_index=spr_dragonmaiden_hand if image_index<4.75 image_index+=0.1 else image_index=3

if oDragonMaiden.anim=0
{
 byetime+=1;
 
 if oControl.betatest=1 and keyboard_check_pressed(vk_tab) byetime=260
 
if  byetime>260 {byetime=0 AnimFrame=0 anim=10}
}
}


if anim=10
{
if oDragonMaiden.dircheck=-1 {image_xscale=1 lockX=oControl.camX-90}
else {image_xscale=-1 lockX=oControl.camX+320+90}

x=lockX

anim=choose(11,12,13,14) //anim=11
lockZ=0 z=0
AnimFrame=0 specialtimes[0]=0  specialtimes[1]=0
}

if anim=11 ///Attack
{
if AnimFrame=0 { AnimFrame=1 specialtimes[0]=0  specialtimes[1]=0 specialtimes[5]=0 specialtimes[6]=0 sprite_index=spr_dragonmaiden_hand
	
if image_xscale=1 lockX=oControl.camX-160
else lockX=oControl.camX+320+160 x=lockX
	
	}
	selfatk.damage=0.25 selfatk.MoveType=1
	
	atkcol_set(136,0,0,3.75,1,88)
	selfatk.atk=0 atk=0
specialtimes[0]+=1;
if specialtimes[0]<40
{lockX+=2*image_xscale 
sprite_index=spr_dragonmaiden_hand 
}
else
if specialtimes[0]<80
{lockX-=0.1*image_xscale specialtimes[6]=point_distance(x,0,targetEnemy.x,0)
sprite_index=spr_dragonmaiden_hand 
}
else
if specialtimes[0]<160
{
if specialtimes[5]<160-64
{selfatk.atk=1 atk=1
lockX+=16*image_xscale 
specialtimes[5]+=16
}
else {specialtimes[0]=200 selfatk.atk=0 atk=0 oControl.quakeFXTime=10}
sprite_index=spr_dragonmaiden_handattack1
}

if specialtimes[0]>200
{	
if specialtimes[0]>260 {
	lockX-=10*image_xscale	
	specialtimes[5]-=10 if specialtimes[5]<200
	{canmove=1 anim=0}
	}
}

x=lockX	
	}

if anim=14 ///Flick
{
if AnimFrame=0 { AnimFrame=1 specialtimes[0]=0  specialtimes[1]=0 specialtimes[5]=0 specialtimes[6]=0 sprite_index=spr_dragonmaiden_handattack2
	
if image_xscale=1 lockX=oControl.camX-160
else lockX=oControl.camX+320+160 x=lockX
	
	}
atk=0 selfatk.damage=0.2 selfatk.MoveType=2
	
	atkcol_set(111+53,0,-5,2.95,1,118)
	selfatk.atk=0 atk=0
specialtimes[0]+=1;
if specialtimes[0]<40
{lockX+=4*image_xscale 
}
else
if specialtimes[0]<80
{specialtimes[6]=point_distance(x,0,targetEnemy.x,0)
y=lerp(y,targetEnemy.y,0.5) image_index=0.75
}
else
if specialtimes[0]<160
{specialtimes[5]+=16
if specialtimes[5]<160-64
{
if image_index<1
oControl.quakeFXTime=10
if image_index<2
{selfatk.atk=1 atk=1 image_index+=0.5}

}
else {specialtimes[0]=200 selfatk.atk=0 atk=0 }
}

if specialtimes[0]>200
{	
if specialtimes[0]>260 {
	lockX-=10*image_xscale	
	specialtimes[5]-=10 if specialtimes[5]<200
	{canmove=1 anim=0}
	}
}

x=lockX	
	}

if anim=13 ///Slam
{
if AnimFrame=0 { AnimFrame=1 specialtimes[0]=0  specialtimes[1]=0 specialtimes[5]=0 specialtimes[6]=0 sprite_index=spr_dragonmaiden_handattack3
	
if image_xscale=1 lockX=oControl.camX-160
else lockX=oControl.camX+320+160 x=lockX
	
	}
atk=0 selfatk.damage=0.3 selfatk.MoveType=4

if specialtimes[0]<80 {lockY=lerp(lockY,targetEnemy.y,0.5) image_index=0.75 lockZ=lerp(lockZ,-180,0.1)}

	atkcol_set(114,0,-2,4.35,1,50)
	selfatk.atk=0 atk=0
specialtimes[0]+=1;
if specialtimes[0]<40
{lockX+=4*image_xscale 
}
else
if specialtimes[0]<80
{specialtimes[6]=point_distance(x,0,targetEnemy.x,0)

}
else
if specialtimes[0]<160
{
if lockZ<0
{
lockZ+=16
}
else {z=0 oControl.quakeFXTime=10 PlaySound(snd_quakeground) specialtimes[0]=200 selfatk.atk=0 atk=0 }
}

if specialtimes[0]>200
{	if specialtimes[0]<201 selfatk.atk=1 atk=1
if specialtimes[0]>260 {selfatk.atk=0 atk=0
	lockX-=10*image_xscale	
	specialtimes[5]-=10 if specialtimes[5]<200
	{canmove=1 anim=0}
	}
}

x=lockX	
	}
	
if anim=12 ///Grab
{
if AnimFrame=0 { AnimFrame=1 specialtimes[0]=0  specialtimes[1]=0 specialtimes[5]=0 specialtimes[6]=0 sprite_index=spr_dragonmaiden_handattack4
	
if image_xscale=1 lockX=oControl.camX-160
else lockX=oControl.camX+320+160 x=lockX
	
	}
	

	selfatk.damage=0 selfatk.MoveType=0
	
	atkcol_set(145,0,-1,2.45,1,88)
	selfatk.atk=0 atk=0
specialtimes[0]+=1;
if specialtimes[0]<40
{lockX+=4*image_xscale 
}
else
if specialtimes[0]<80
{specialtimes[6]=point_distance(x,0,targetEnemy.x,0)
lockY=lerp(lockY,targetEnemy.y,0.5) image_index=0.75
}
else
if specialtimes[0]<160
{sprite_index=spr_dragonmaiden_handattack4b specialtimes[5]+=16
if specialtimes[5]<160-64
{
if image_index<2
{selfatk.atk=1 atk=1 image_index+=0.5}

}
else {specialtimes[0]=200 selfatk.atk=0 atk=0 }
}

if specialtimes[0]>200
{	
if specialtimes[0]>260 {
	lockX-=10*image_xscale	
	specialtimes[5]-=10 if specialtimes[5]<200
	{canmove=1 anim=0}
	}
}

x=lockX	
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
{
	
if AnimFrame=0 PlaySound(snd_dragon3)
canBounce=0
isThrow=1 //hud_show()
throwing=1
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_dragonmaiden_handattack4b
if image_index<1
image_index+=0.1
else
image_index+=0.1 if image_index>3 image_index=0 hspeed=0 canmove=0


//if image_index=1 PlaySoundNoStack(snd_buffenemy4)

if targetID!=-1 
{
targetID.x=x+146*image_xscale
targetID.y=y targetID.z=z-32
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

targetID.depth=depth+1

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
byetime=0
lockX-=10*image_xscale	
AnimFrame+=0.1
if oDragonMaiden.dead=0
if AnimFrame>20 {hp=0.1 AnimFrame=0 anim=0} 

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
{byetime=0
lockX-=10*image_xscale	
AnimFrame+=0.1
if oDragonMaiden.dead=0
if AnimFrame>20 {hp=0.1 AnimFrame=0 anim=0} 
}

if lockPos
{
x=lerp(x,lockX,lockSPD);
y=lerp(y,lockY,lockSPD);
z=lerp(z,lockZ,lockSPD);
}

	selfatk.x=x+atkAddX*image_xscale
	selfatk.y=y+atkAddY
	selfatk.z=z+atkAddZ
	selfatk.atk=atk