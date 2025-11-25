/// @description Insert description here
// You can write your code in this editor
////Intro
enemy_endstep()
throw_step()

if hp=0 {if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}}

if movebuffer!=0 movebuffer--;

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

////Viva Palette
//
//
//Hina
//
//
//Bahati
//
//
//Sofia
//
//


////Defeat
if anim=101
{sentflying=0
if AnimFrame=0
{sprite_index=spr_dastardly2_defeat1
PlaySound(snd_fdas29)
}

if AnimFrame<200
{image_index+=0.2 if image_index>=4 image_index=2
if image_index>=2
if y>oControl.wallY y-=2;
if x!=clamp(x,oControl.camX+160-2,oControl.camX+160+2)
{if x>oControl.camX+160 x-=2 else x+=2}
}

AnimFrame++;

if AnimFrame=200
{specialtimes[0]=-240
PlaySound(snd_fall)
drop=instance_create_depth(x,y+1,-1,oCameoChar)
drop.anim=9999 drop.z=z-240
drop.sprite_index=spr_barrel
}

if AnimFrame>200 and AnimFrame<9999
{
	drop.z=specialtimes[0]
	specialtimes[0]+=8
	var _a=0;

if specialtimes[0]>=-90
{PlaySound(snd_hitgroundheavy) PlaySound(snd_hit) oControl.quakeFXTime=10
AnimFrame=10000 sprite_index=mask_none shadow=mask_none hasShadow=0
dor1=instance_create_depth(drop.x,drop.y,0,oBarrel)
dor1.z=drop.z
with dor1 
{sprite_index=spr_barrel image_index=1
image_xscale=1 solid=false hit=1 ground=0 zSpeed=-8 hspeed=0 mask_index=mask_none
sentflying=0 image_index=1 alarm[0]=2}
with drop instance_destroy()
PlaySound(snd_fdas2) 

drop=instance_create_depth(x,y-1,-1,oCameoChar)
drop.anim=9999 drop.spdZ=-8 drop.shadow=-1
drop.sprite_index=spr_dastardly2_hit drop.image_index=3
with drop newscript=function() {spdZ+=0.225 z+=spdZ if spdZ>0 {if image_index<5.5 image_index+=0.2 isDepth=0 depth=16777209}}

y=-9999
}
}
}


if anim=100
{if AnimFrame=0 {AnimFrame=0.1 specialtimes[1]=-200 specialtimes[0]=-200
	
	specialtimes[2]=180 specialtimes[3]=0 specialtimes[4]=0
	
	PlaySound(snd_fdas6)
	}
sprite_index=spr_dastardly2_intro	

specialtimes[1]=lerp(specialtimes[1],-90,0.05)

spdZ=0

z=specialtimes[0]

specialtimes[4]++;

var _thunderflash=0;

if specialtimes[4]=60 or specialtimes[4]=160
{
_thunderflash=1;
}

if specialtimes[3]=0 if z>-100 { specialtimes[3]=1 PlaySound(snd_fdas7)}

if z<0 specialtimes[0]+=0.9 else if AnimFrame=0.1 {AnimFrame=1}
specialtimes[2]+=0.25

frame_set(1,0,0.05) 
frame_set(2,0,0.05) 
frame_set(3,1,0.25) if AnimFrame=4 
{PlaySound(snd_fdas5)

var _hspeed=0.8; var _xscale=1; 
var _zspeed=2.04;

var _rep=1;
repeat(12)
{
if _rep>=7 _xscale=-1;
///1
if _rep=2 {_hspeed=0.9 _zspeed=2.00}
if _rep=3 {_hspeed=1.4 _zspeed=1.4}
if _rep=4 {_hspeed=1.9 _zspeed=0.9}
if _rep=5 {_hspeed=2.4 _zspeed=0.4}
if _rep=6 {_hspeed=2.9 _zspeed=0}
///7
if _rep=8 {_hspeed=0.9 _zspeed=2.00}
if _rep=9 {_hspeed=1.4 _zspeed=1.4}
if _rep=10 {_hspeed=1.9 _zspeed=0.9}
if _rep=11 {_hspeed=2.4 _zspeed=0.4}
if _rep=12 {_hspeed=2.9 _zspeed=0}

hrt=instance_create_depth(x+4*_xscale,y,-1,oFlashFX)
		hrt.z=z-32 hrt.depth=depth-1 hrt.hspeed=_hspeed*_xscale hrt.image_xscale=_xscale
		hrt.zSpeed=_zspeed
		with hrt
		{alarm[0]=640 sprite_index=spr_dastardly2_bat image_speed=0.25 animEnd=0;
image_index=0.9995  zSpeedAdd=-0.1 isDepth=0}
_rep+=1;
}

_thunderflash=1
}
frame_set(4,2,0.25) 
frame_set(5,3,0.25)
frame_set(6,4,0.25)
frame_set(7,5,0.25)
frame_set(8,6,0.25)
frame_set(9,6,0.02)
frame_set(10,6,0.02)
frame_set(11,6,0.02)
if AnimFrame>11.5 canmove=1

if _thunderflash
{
oControl.quakeFXTime=10 PlaySound(snd_thunderclap)
flashend=instance_create_depth(oControl.camX-2,oControl.camY-2,-1,oCameoChar)
with flashend {
sprite_index=spr_whitecol image_xscale=99 image_yscale=99	
isDepth=0 depth=16777203 image_alpha=1 image_blend=c_white newscript=function() {image_alpha-=0.1 if image_alpha<=0 instance_destroy();}}	
}

}

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
	anim=choose(12) else anim=choose(12,13,65)
}
	else
	anim=11
	
////Element Moves
if current_pal!=0 and movebuffer=0
{movebuffer=choose(260,280,300,320)
anim=150
}

//////Change Palette
var _changepal=0;
if (hp<=4.5 and paltimes=0) _changepal=1
else if (hp<=3.5 and paltimes=1) _changepal=1
else if  (hp<=2.5 and paltimes=2) _changepal=1
else if  (hp<=1.5 and paltimes=3) _changepal=1

if _changepal {PlaySound(snd_magic2) {paltimes+=1; paltimes=clamp(paltimes,0,5) current_pal=palset[paltimes] anim=1340 recovery=2 image_index=0 specialFX=1 alarm[3]=5}}
}

////Once she takes too much damage she changes back
if current_pal!=0
{var _changepal=0;
if (hp<=4 and paltimes=1) _changepal=1
else if  (hp<=3 and paltimes=2) _changepal=1
else if  (hp<=2 and paltimes=3) _changepal=1
else if (hp<=1 and paltimes=4) _changepal=1
if _changepal {current_pal=0 PlaySound(snd_magic2) specialFX=1 alarm[3]=5}
}

////CHANGE FORM
if anim=1340
{recovery=2 sprite_index=spr_dastardly2_changeform
image_index+=0.25 
image_index=clamp(image_index,0,6.5)
AnimFrame+=0.25
if AnimFrame>=10 {canmove=1}
}

if anim=11 ///Kick
{sprite_index=spr_dastardly2_attack1
	if AnimFrame=0 {PlaySound(choose(snd_fdas3,snd_fdas4))}
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
{sprite_index=spr_dastardly2_attack2 MoveType=1 damage=0.3 selfatk.isCut=1
	selfatk.HitSound=snd_cut selfatk.HitSpark=spr_blood
	if AnimFrame=0 {PlaySound(choose(snd_fdas3,snd_fdas4))}
	
	atkcol_set(56,0,0,2.75,1,112)
	if AnimFrame=0 {specialtimes[0]=10 specialtimes[1]=0}
frame_set(0,0,0.25) if AnimFrame=1 {PlaySound(snd_swing5) PlaySoundNoStack(snd_fdas28)}
frame_set(1,1,0.25) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else atk=0
if AnimFrame=clamp(AnimFrame,2,5) sentflying=2*image_xscale else sentflying=0
frame_set(2,2+2*specialtimes[1],0.5)
frame_set(3,3+2*specialtimes[1],0.5)
frame_set(4,3+2*specialtimes[1],0.25) if AnimFrame=5 {if specialtimes[0]!=0 {PlaySound(snd_swing5) PlaySoundNoStack(snd_fdas28) AnimFrame=1 specialtimes[0]-=1 specialtimes[1]^=1;}}
frame_set(5,0,0.25)
if AnimFrame>5.5 canmove=1
}

if anim=13 ///Bat fire
{sprite_index=spr_dastardly2_attack3 MoveType=1 damage=0.2
	if AnimFrame=0 {specialtimes[0]=3 PlaySound(choose(snd_fdas16,snd_fdas17,snd_fdas14))}
	if x=clamp(x,oControl.camX+12,oControl.camX+320-12) {}
	else {x+=2*image_xscale}
	//atkcol_set(30,0,0,1.75,1,112)
	
	var bulcheck=0;
	
if AnimFrame=0 {specialtimes[0]=10 specialtimes[1]=0}
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
projectile_create(x+8*image_xscale,y+1,z-50,8,spr_dastardly2_bat,lengthdir_x(4,dirh),mask_small,spr_explosion2,0.25,1,1,4,-4)
projectile.speedFX=0.25
projectile.vspeed=lengthdir_y(4,dirh)
}
}




/////Element Attack
if anim=150
{
if AnimFrame=0 {specialtimes[0]=0; }
///Viva Lightning
if current_pal!=1 and current_pal!=2 and current_pal!=3 and current_pal!=4 canmove=1

if current_pal=1
{
if AnimFrame=0 PlaySound(choose(snd_fdas18,snd_fdas9))

sprite_index=spr_dastardly2_thunder
frame_set(0,0,0.25)
frame_set(1,1,0.1)
frame_set(2,2,0.25)
if AnimFrame=3
{PlaySound(snd_thunder) oControl.quakeFXTime=10
var _posX=x+lengthdir_x(120,45*specialtimes[0])
var _posX2=x+lengthdir_x(120,45*(specialtimes[0]*-1))
var _posY=y+lengthdir_y(45,45*specialtimes[0])
var _posY2=y+lengthdir_y(45,45*specialtimes[0]*-1)
var _rep=0;
repeat(2)
{
if _rep=0
bone=instance_create_depth(_posX,_posY,-1,oBossHazard)
else
bone=instance_create_depth(_posX2,_posY2,-1,oBossHazard)
bone.hitSource=self.id bone.playerNO=playerNO
with bone {sprite_index=spr_lightingbolt MoveType=3
selfscript=function() {damage=0.2 if image_index<=1 atk=1 else atk=0 image_index+=0.25 if image_index>=3 instance_destroy();}
}
_rep+=1;
}
}
frame_set(3,3,0.25)
frame_set(4,4,0.25)

MoveType=3 	atkcol_set(0,0,0,2,1.25,128)
damage=0.2 if AnimFrame=clamp(AnimFrame,3,3.25) atk=1 else atk=0

if AnimFrame>=5
if specialtimes[0]<8 {specialtimes[0]+=1 AnimFrame=2.75 image_index=2.75 }
frame_set(5,5,0.05)
frame_set(6,6,0.25)
if AnimFrame>=6.5 {canmove=1}
}

////Hina Fire Breath
///50
if current_pal=2
{
if AnimFrame=0 PlaySound(choose(snd_fdas19,snd_fdas9))	

sprite_index=spr_dastardly2_firebreath

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.1)
frame_set(3,3,0.25)
frame_set(4,4,0.25) if AnimFrame=5
{oControl.quakeFXTime=10
PlaySound(snd_flame)
bone=instance_create_depth(x+15*image_xscale,y,-1,oBossHazard)
bone.image_xscale=image_xscale bone.hspeed=-2*image_xscale
bone.z=z-74
with bone
selfscript=function() {sprite_index=spr_dastardly2_flames
	var _flameend=0;
	if !instance_exists(hitSource) _flameend=1
	else
	if hitSource.object_index!=oDastardly2 _flameend=1;
	else
	{
	
	if hitSource.sprite_index=spr_dastardly2_firebreath
	or hitSource.image_index>=7 _flameend=1;	
	}
	atk=0 image_index+=0.25
	if image_index>=4 if _flameend=0 image_index=0
	if image_index>=8 instance_destroy();
	}

}
frame_set(5,5,0.02)
frame_set(6,6,0.05)
MoveType=5 damage=0.2
atkcol_set(68,0,0,2.5,1.25,128)

if AnimFrame=clamp(AnimFrame,5,6) {atk=1 sentflying=-2*image_xscale } else atk=0

if AnimFrame>=6.5 canmove=1
}


////Bahati Rock Throw
if current_pal=3
{
anim=14
}

////Sofia Wind
if current_pal=4
{
anim=650
}
}

if anim=14 ///Launch
{sprite_index=spr_dastardly2_attack4
	if AnimFrame=0 {PlaySound(choose(snd_fdas20,snd_fdas9))}	

	atkcol_set(30,0,0,1.75,1,112)
if AnimFrame=0 {specialtimes[0]=0} spdZ=0
z=specialtimes[0] 
if AnimFrame<1
specialtimes[0]-=2
frame_set(0,0,0.05) //if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
frame_set(1,1,0.05) if AnimFrame=2
{PlaySound(snd_swing3) oControl.quakeFXTime=10
selfball=instance_create_depth(x,y+1,-1,oBossHazard) selfball.playerNO=playerNO selfball.image_xscale=image_xscale selfball.z=z-240
with selfball
{HitSound=snd_hit damage=0.25
shadow=spr_mediumshadow mask_index=spr_mediumshadow height=128 sprite_index=spr_dastardly2_ball image_speed=0.25
selfscript=function()
{depth=-y
if anim=0
{z=lerp(z,oDastardly2.z-128,0.1) atk=0
	if oDastardly2.anim=14
	{
if oDastardly2.AnimFrame>=3 {damage=0.25 MoveType=4 atk=1 
	
	
	hspeed=lengthdir_x(4,point_direction(x,y,oDastardly2.targetX,oDastardly2.targetY))
	vspeed=lengthdir_y(4,point_direction(x,y,oDastardly2.targetX,oDastardly2.targetY))
	
	anim=1}
	} else {anim=2}
	
}
if anim=1
{
z+=6 if z>=0 {oControl.quakeFXTime=10 PlaySound(snd_hitground)
dust_make(x,y,z,-1,0,0)
dust_make(x,y,z,1,0,0)
dust_make(x,y,z,0,-1,0)
dust_make(x,y,z,0,1,0)
dust_make(x,y,z,-1,-1,0)
dust_make(x,y,z,1,1,0)
dust_make(x,y,z,-1,1,0)
dust_make(x,y,z,1,-1,0)
anim=2
	}
}
if anim=2
{
z-=4
if x!=clamp(x,oControl.camX-138,oControl.camX+320+138) or z<=-240 instance_destroy()
}

}
}

}
if AnimFrame=2 PlaySound(snd_swing2)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.1)
frame_set(6,4,0.1)
if AnimFrame>6.5 {canmove=1 ground=0 anim=0}


}

if anim=65 //Grab
{sprite_index=spr_dastardly2_attack5 sentflying=5*image_xscale
	if AnimFrame=0 {PlaySound(snd_fdas5)}
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else {atk=0 sentflying=0}
frame_set(1,1,0.25)
frame_set(2,2,0.025)
frame_set(3,0,0.1)
if AnimFrame>3.5 canmove=1
}

if anim=6666 ///Grab Enemy
{canBounce=0 sentflying=0
	if AnimFrame=0 {PlaySound(snd_fdas10)}
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
{sprite_index=spr_dastardly2_attack6 canbeGrabbed=0 damage=0.3
if AnimFrame=0 {PlaySound(choose(snd_fdas3,snd_fdas4,snd_fdas21))}


	atkcol_set(-1,0,0,1.75,1,112) MoveType=1 selfatk.isCut=1
		selfatk.HitSound=snd_cut selfatk.HitSpark=spr_blood
if AnimFrame=0 {specialtimes[0]=0 specialtimes[1]=0}	
specialtimes[0]+=0.25 if specialtimes[0]=2 specialtimes[0]=0
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,2,3) {oControl.quakeFXTime=2 atk=1 recovery=2 recoveryThrow=2
	if x>targetEnemy.x sentflying=lerp(sentflying,-14,0.1) else sentflying=lerp(sentflying,14,0.1)
	
	if y>targetEnemy.y specialtimes[1]=lerp(specialtimes[1],-2,0.1) else specialtimes[1]=lerp(specialtimes[1],2,0.1)	
	
	if specialtimes[1]<0 {if place_free(x,y+specialtimes[1]) y+=specialtimes[1]}
	else {if y<room_height y+=specialtimes[1]}
	

	
	} else {atk=0 sentflying=0}
	if AnimFrame=1 PlaySound(snd_wind)
frame_set(1,1,0.25)
frame_set(2,2+specialtimes[0],0.01)



frame_set(3,1,0.1)
frame_set(4,0,0.05)
if AnimFrame>4.5 canmove=1
} else canbeGrabbed=1

//65,650,6500,65000)