/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

if fakeduckbuffer!=0 fakeduckbuffer-=1;

//counterMove=9915 counterNum=choose(4,5,6,7,8)

if runCharge!=0 runCharge-=1

if anim=10
{offScreen=0 AnimFrame=0

if distance_to_point(targetEnemy.x,targetEnemy.y)<70
{anim=choose(11,11,11,6501)}
else
if distance_to_point(targetEnemy.x,targetEnemy.y)<120
{anim=choose(12,13,14,6503)}
else
anim=choose(13,6502,14,6504,6505)

}

if anim=9915
{
anim=6501
}

if anim=11
{
damage=0.2 selfatk.isCut=1 selfatk.spriteFX=spr_blood MoveType=1 selfatk.HitSound=snd_cut
atkcol_set(42,0,0,2.45,1,110)
sprite_index=spr_painter_attack1
frame_set(0,0,0.25) if AnimFrame=1 PlaySound(snd_swing4)
frame_set(1,1,0.5)
frame_set(2,2,0.25) if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
frame_set(3,3,0.25)
frame_set(4,4,0.25)
if AnimFrame>4.70 {canmove=1 anim=0}
}

///Big Punch
if anim=12
{damage=0.25 MoveType=1  selfatk.HitSound=snd_hit
atkcol_set(75,0,0,4.45,1,110)
sprite_index=spr_painter_attack2
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.5) if AnimFrame=3 {PlaySound(snd_woodbreaks) oControl.quakeFXTime=10}
frame_set(3,3,0.05) if AnimFrame=clamp(AnimFrame,2,3) {atk=1 sentflying=6*image_xscale} else {atk=0 sentflying=0}
frame_set(4,4,0.25)
if AnimFrame>4.70 {canmove=1 anim=0}
}

///Saw Knee
if anim=13
{damage=0.2 selfatk.isCut=1 selfatk.spriteFX=spr_blood MoveType=1 selfatk.HitSound=snd_cut
	atkcol_set(47,0,0,1.65,1,110)
sprite_index=spr_painter_attack3
if AnimFrame=0 {specialtimes[0]=0}
specialtimes[0]+=0.25
if specialtimes[0]>=2 {PlaySoundNoStack(snd_swing4) specialtimes[0]=0}
frame_set(0,0,0.25)
var _sawx=specialtimes[5]; var _sawy=specialtimes[6];
frame_set(1,1,0.25) if AnimFrame=2 {
	specialtimes[5]=lengthdir_x(3,point_direction(x,y,targetX,targetY))
	specialtimes[6]=lengthdir_y(3,point_direction(x,y,targetX,targetY))
	if targetX>=x image_xscale=1 else image_xscale=-1
	ground=0 z-=4 spdZ=-8 //sentflying=8*image_xscale}
}
	
frame_set(2,2+specialtimes[0],0.01) if !ground {AnimFrame=2.5} else if AnimFrame=2.5
{AnimFrame=3 sentflying=0}
if AnimFrame=clamp(AnimFrame,2,2.99) {x+=_sawx; y+=_sawy; atk=1 y=clamp(y,oControl.wallY+10,room_height)} else atk=0
frame_set(3,1,0.05)
frame_set(4,0,0.25)

if AnimFrame>4.70 {canmove=1 anim=0}
}

///Bloody Slash
if anim=14
{damage=0.3 MoveType=1 //atkcol_set(26,0,0,1.65,1,110)
sprite_index=spr_painter_attack4
frame_set(0,0,0.25)
frame_set(1,1,0.1) if AnimFrame=2
{
var _sawx=0; var _sawy=0;
var _i=0;
PlaySound(snd_cut) PlaySound(snd_swing4) 
repeat(4)
{
var _sawx=4+2*_i; var _sawy=0-2*_i;	

spit=instance_create_depth(x+16*image_xscale,y+2,depth,oZombieSpit) spit.z=-96 spit.image_xscale=image_xscale
spit.zSpeed=specialtimes[1]
with spit
{MoveType=1
sprite_index=spr_painterink
hitflash=spr_painterinkhit
endflash=spr_painterinkend
}
spit.hspeed=_sawx*image_xscale;
spit.zSpeed=_sawy;
_i+=1
}

}
frame_set(2,2,0.5) 
frame_set(3,3,0.25)
frame_set(4,4,0.05)
frame_set(5,1,0.25)
frame_set(6,5,0.25)
if AnimFrame>6.70 {canmove=1 anim=0}
}

///Explode
if anim=6501
{damage=0.25 MoveType=1
sprite_index=spr_painter_attack5
atkcol_set(0,0,0,3.25,1.25,110)
frame_set(0,0,0.2)
frame_set(1,1,0.2) 
frame_set(2,2,0.2)
frame_set(3,3,0.1) 
frame_set(4,4,0.2) if AnimFrame=5 {PlaySound(snd_explosion) oControl.quakeFXTime=10}
frame_set(5,5,0.25)  if AnimFrame=clamp(AnimFrame,5,5.9) atk=1 else atk=0
frame_set(6,6,0.25)
frame_set(7,7,0.25) if AnimFrame<=7.9 {recovery=1 recoveryThrow=1}
frame_set(8,8,0.05)
frame_set(9,9,0.25)
frame_set(10,10,0.25)

if AnimFrame>10.70 {canmove=1 anim=0}
}

///Teleport
if anim=6502
{damage=0.25
sprite_index=spr_painter_attack6
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.25)
frame_set(3,3,0.25) 
frame_set(4,4,0.25)
frame_set(5,5,0.25) 
frame_set(6,6,0.25) 
frame_set(7,7,0.25) if AnimFrame=8 {x=targetEnemy.x+48*image_xscale y=targetEnemy.y}
frame_set(8,0,0.1)
frame_set(9,6,0.5) if AnimFrame=9 {if x>targetEnemy.x image_xscale=-1 else image_xscale=1}
frame_set(10,5,0.5)
frame_set(11,4,0.5) if AnimFrame<=10 {recovery=1 recoveryThrow=1}
frame_set(12,3,0.5) if AnimFrame>2 and image_index=0 sprite_index=mask_none
frame_set(13,2,0.5) if AnimFrame=13 {if x=clamp(x,targetEnemy.x-16,targetEnemy.x+16) and y=clamp(y,targetEnemy.y-5,targetEnemy.y+5)
	{AnimFrame=1.75 anim=6503}
	}
frame_set(14,1,0.5)

if AnimFrame>14.70 {canmove=1 anim=0}
}

///Cutting Beam
if anim=6503
{damage=0.25 MoveType=1 selfatk.isCut=1 selfatk.spriteFX=spr_blood selfatk.HitSound=snd_cut
	atkcol_set(31,0,0,3.25,1,145)
sprite_index=spr_painter_attack7
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.5) if AnimFrame=3 {PlaySound(snd_swing2) oControl.quakeFXTime=10}
frame_set(3,3,0.25) 
frame_set(4,4,0.25) if AnimFrame=clamp(AnimFrame,3,3.99) atk=1 else atk=0
frame_set(5,5,0.05)
if AnimFrame>5.70 {canmove=1 anim=0}
}

///Head Cut
if anim=6504
{damage=0.25
sprite_index=spr_painter_attack8
frame_set(0,0,0.1)
frame_set(1,1,0.1) 
frame_set(2,2,0.25) if AnimFrame=3 
{PlaySound(snd_cut) PlaySound(snd_swing)
oControl.quakeFXTime=10
spit=instance_create_depth(x+4*image_xscale,y+2,depth,oZombieSpit) spit.hspeed=2*image_xscale spit.z=-55 spit.image_xscale=image_xscale
spit.sprite_index=spr_painter_head spit.bounce=3
with spit
{boucespd=-8 MoveType=1 bounce=3 damage=0.2 animLock=0
hitflash=spr_inkex2
endflash=spr_inkex3
}

}
frame_set(3,3,0.25) 
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
if AnimFrame>7.70 {canmove=1 anim=0}
}

///Decap Grab
if anim=6505
{sprite_index=spr_painter_attack9 sentflying=5*image_xscale
	specialtimes[0]+=0.2 if specialtimes[0]>=2 specialtimes[0]=0
//	if AnimFrame=0 {PlaySound(snd_fdas5)}
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,2,3) atk=1 else {atk=0 sentflying=0}
frame_set(1,0,0.25)
frame_set(2,1+specialtimes[0],0.025)
frame_set(3,0,0.1)
if AnimFrame>3.5 canmove=1
}

if anim=6666 ///Grab Enemy
{if AnimFrame=0 {sprite_index=spr_painter_attack9b specialtimes[0]=0} shaketime=0 shake=0
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {Throw=1 grabMax=0}

if AnimFrame>=1 {specialtimes[0]+=0.2 specialtimes[0]=clamp(specialtimes[0],0,5.5)}
frame_set(0,0,0.1)
frame_set(1,specialtimes[0],0.02)
frame_set(2,specialtimes[0],0.01)
frame_set(3,6,0.25)
frame_set(4,7,0.01)
frame_set(5,3,0.25)
if AnimFrame>5.5 {canmove=1 exit;}

if targetID!=-1 
{targetID.showmash=1 targetID.image_index=targetID.GrabFrame
targetID.x=x+16*image_xscale targetID.image_xscale=-image_xscale
targetID.y=y targetID.z=z-16
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

targetID.recovery=0

targetID.depth=depth+1


if AnimFrame>=3
{targetID.z=z-8
with targetID ///Insta Kill
{thrownAtkDmg=0.1 PlaySound(snd_cut) dust_make(x,y+1,z-64,0,0,0) dustmk.sprite_index=spr_blood3
AnimFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0 ThrowDamage=0.1 hp=0 cutDMG=2
throw_quickrelease() ground=0 zSpeed=-8  sentflying=-4*image_xscale hurt=1 hitBack=0 AnimFrame=0 anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
recovery=30}
throwing=0 throwcombo=2 shaketime=0 shake=0
targetID=-1

}

if targetID!=-1
{
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
targetID.x=x+16*image_xscale
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

}



if targetID!=-1
{
if targetID.anim!=30 and targetID.anim!=31
{
targetID.ground=0 
targetID=-1

throwing=0 throwcombo=2
alarm[1]=2
}}


////Forcibly Break Out With Special Attacks
if AnimFrame<=2.9 and targetID!=-1
{
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

///Ink Pool
if anim=6506
{damage=0.25 
sprite_index=spr_painter_attack10
frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.05) 
frame_set(3,3,0.25) if AnimFrame=4 oControl.quakeFXTime=10
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.05)
if AnimFrame>8.70 {canmove=1 anim=0}
}

///Intro
if anim=100
{
if AnimFrame=0 {sprite_index=spr_painter_intro specialtimes[0]=0}	

frame_set(0,0,0.25) if AnimFrame=1 PlaySound(snd_woodbreaks)
frame_set(1,1,0.25)
frame_set(2,2,0.25) if AnimFrame=3 specialanim=2
frame_set(3,3,0.05) if AnimFrame=4 PlaySound(snd_woodbreakm)
frame_set(4,4,0.25)
frame_set(5,5,0.05)
frame_set(6,6,0.25)
frame_set(7,7,0.25) if AnimFrame=8 {image_xscale=-1 sprite_index=spr_painter_attack9}
frame_set(8,0,0.02) if AnimFrame=9 {sprite_index=spr_painter_attack10 PlaySound(snd_swing4)}

frame_set(9,0,0.25)
frame_set(10,1,0.25) 
frame_set(11,2,0.05) 
frame_set(12,3,0.25) if AnimFrame=13 {oControl.quakeFXTime=10 PlaySound(snd_quakeground) PlaySound(snd_splash2)
	
puddle=instance_create_depth(x,y,-1,oCameoChar) with puddle
{isDepth=0
anim=9999 depth=16777200 image_xscale=0 image_yscale=0 sprite_index=spr_bigink
newscript=function()
{
image_xscale=lerp(image_xscale,8,0.1)
image_yscale=image_xscale
if image_xscale>=7.9
{image_alpha-=0.01 if image_alpha<=0 instance_destroy();
if instance_exists(oMonochromeBGFX) oMonochromeBGFX.crazymode=1
}
}
}
}
frame_set(13,4,0.25)
frame_set(14,5,0.25)
frame_set(15,6,0.25)
frame_set(16,7,0.25)
frame_set(17,8,0.01)
frame_set(18,8,0.25)
frame_set(19,8,0.25) if AnimFrame=20 {sprite_index=spr_painter_attack9}
frame_set(20,0,0.01)
//////Painter's Ink

if AnimFrame>20.70 {canmove=1 anim=0}
}

if dead=1 if visible
{visible=0 PlaySound(snd_splash1) dust_make(x,y,0,0,0,0) dustmk.sprite_index=spr_inksplash
y=9999 

}