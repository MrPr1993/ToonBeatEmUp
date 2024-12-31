/// @description Insert description here
// You can write your code in this editor
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
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150
	anim=choose(13,14) else 
	if distance_to_point(targetEnemy.x,targetEnemy.y)>150/3
	anim=choose(13,14,12,6501) else anim=choose(11,6500)
}

/////Spore Spread
if anim=6501
{
if AnimFrame=0  PlaySound(choose(snd_princess7,snd_princess8,snd_princess10,snd_princess11))	

sprite_index=spr_plantprincess_attack4

frame_set(0,0,0.25)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,2,0.25)
if AnimFrame=5
{
var repspore=0;
repeat(8)
{dust_make(x+lengthdir_x(4,repspore),y+lengthdir_x(2,repspore),-55,0,0,0)
spit=instance_create_depth(x+8*image_xscale,y+2,depth,oZombieSpit) spit.z=-55
spit.sprite_index=spr_plantprincess_bomb spit.bounce=0
spit.my_pal_sprite=my_pal_sprite  spit.current_pal=current_pal
with spit
{
MoveType=0 haspal=1 dizzyHit=1 damage=0.1
hitflash=spr_dustmid
endflash=spr_dustmid
hitSnd=snd_hit
}
spit.hspeed=lengthdir_x(4,repspore)
spit.vspeed=lengthdir_y(2,repspore)
repspore+=45;
}
}
frame_set(5,4,0.25)
frame_set(6,5,0.25)
frame_set(7,6,0.05)
frame_set(8,0,0.25)
if AnimFrame>=8.75 {atk=0 canmove=1}
}

///Nom Plant
if anim=6500
{
atkcol_set(80,0,15,2.85,1,45)
	sprite_index=spr_plantprincess_attack1
frame_set(0,0,0.25) 
frame_set(1,1,0.25) if AnimFrame=2 {PlaySound(snd_princess2)}
frame_set(2,2,0.05) if AnimFrame=clamp(AnimFrame,3,4) {atk=1} else {atk=0}
frame_set(3,3,0.1)
frame_set(4,4,0.05)
frame_set(5,5,0.1)

selfatk.HitSpark=spr_hitflash

if AnimFrame>5.5 canmove=1
}

if anim=6666 ///Grab Enemy
{
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if AnimFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_plantprincess_eat
if image_index<1
image_index+=0.1
else
image_index+=0.25 if image_index>4 image_index=1 hspeed=0 canmove=0

//if image_index=1 PlaySoundNoStack(snd_mzombie3)

if targetID!=-1 
{targetID.sprite_index=mask_none
targetID.x=x
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

if targetID.key_up_pressed
or targetID.key_down_pressed
or targetID.key_left_pressed
or targetID.key_right_pressed
{grabMax+=1 shaketime=10

if grabMax>4
{
throwing=0 image_index=0 AnimFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
}
}
if targetID.anim!=30 and targetID.anim!=31
{
throwing=0 image_index=0 AnimFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
}
}


{
///Drag Enemy
if targetID!=-1
{
targetID.targetHeightHit=1 targetID.isGrabbed=1 
with targetID {sprite_index=mask_none event_user(1) image_index=GrabFrame}
targetID.image_xscale=-image_xscale targetID.depth=depth+1
}
grabX=32*image_xscale grabY=0 grabZ=0 

atk=0 
AnimFrame+=0.02 if AnimFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
throwing=0 image_index=0 AnimFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
}


if targetID!=-1
{targetID.showmash=1
if image_index=2 
{//flashFX(x+34*image_xscale,y+1,z-67,spr_blood,0,0.5,-1,image_xscale,1,c_white,1)
with targetID {hp-=0.01 //PlaySound(snd_cut) 
	event_user(11) shaketime=10}
	} //34,67
if image_index<2 targetID.image_index=GrabFrame else targetID.image_index=1
if targetID.hp<0 or targetID.dead=1
{specialcheck1=1
throwing=0 image_index=0 AnimFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
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
//if (targetID.key_shield_pressed or targetID.key_super)
//if targetID.pow>4
//or targetID.hp>=powhp
//{grabZ=0 targetID.z=z with targetID {anim=0 hurt=0 ground=0 isGrabbed=0
//powlock=1 pow=0 
//if pow>4 powcheck=1 else if hp>=powhp powcheck=0
//canmove=0 targetID=-1 AnimFrame=0 atk=1
//anim=17 throwATK=0
//recovery=60}
//targetID=-1
//}

}
////Instantly use Super	
}

if anim=667 ///Release/Swallow
{if specialcheck0=0
if AnimFrame<1 if image_index<1 {specialcheck0=1 image_index=0 AnimFrame=0 sprite_index=spr_plantprincess_eat} //AnimFrame+=0.1
if specialcheck1=0
{
frame_set(0,1,0.1)
if AnimFrame=1 
{
sprite_index=spr_plantprincess_attack1
if targetID!=-1
{targetID.depth=depth-1 
with targetID
{ground=0  hitBack=0
recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 AnimFrame=0 ground=0 zSpeed=-6 sentflying=-4*image_xscale image_index=GrabFrame anim=5 shaketime=10
hurt=1 }targetID=-1
}
}
frame_set(1,2,0.025)
frame_set(2,1,0.1)
if AnimFrame>2.5 {canmove=1}
}
if specialcheck1=1
{if targetID!=-1 with targetID {vis=0 sentflying=0 dead=1 disappeartime=0 alarm[2]=100} targetID=-1
sprite_index=spr_plantprincess_eat
frame_set(0,0,0.1) if AnimFrame>1 sprite_index=spr_plantprincess_swallow
frame_set(1,0,0.1)
frame_set(2,1,0.2)
frame_set(3,2,0.2)
frame_set(4,3,0.2)
frame_set(5,4,0.2)
frame_set(6,5,0.1)
if AnimFrame>6.5 canmove=1
}


}

if anim=11 ///Vine Attack
{
if AnimFrame=0  PlaySound(choose(snd_princess18,snd_princess17))
canbeGrabbed=0
MoveType=1 damage=0.2
sprite_index=spr_plantprincess_attack5

frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
if AnimFrame=clamp(AnimFrame,3,4.99)
{atk=1 sentflying=8*image_xscale} else { atk=0 sentflying=0}
frame_set(4,4,0.5)
frame_set(5,5,0.05)
frame_set(6,2,0.5)
if AnimFrame>6.5 canbeGrabbed=1

if AnimFrame>6.5 {atk=0 canmove=1}
}

if anim=12 ///Slam Attack
{
if AnimFrame=0  PlaySound(choose(snd_princess18,snd_princess19,snd_princess9,snd_princess5))
	
sprite_index=spr_plantprincess_attack2 MoveType=4 damage=0.2
	atkcol_set(44,0,0,2.95,1,64)
frame_set(0,0,0.25)
frame_set(1,1,0.25) if AnimFrame=2 {zSpeed=-4 ground=0}
frame_set(2,2,0.25)
frame_set(3,3,0.25) if AnimFrame=clamp(AnimFrame,2,5.99) sentflying=4*image_xscale else sentflying=0
frame_set(4,4,0.25)
frame_set(5,5,0.25) if AnimFrame=6 {oControl.quakeFXTime=10 PlaySound(snd_hitgroundheavy)}
frame_set(6,6,0.5) 
if AnimFrame=clamp(AnimFrame,6,6.99) atk=1 else atk=0
frame_set(7,7,0.05)
frame_set(8,3,0.5)
frame_set(9,2,0.25)
frame_set(10,1,0.25)
if AnimFrame>10.7 canmove=1
}

if anim=13 ///Plant Vines
{
if AnimFrame=0  PlaySound(choose(snd_princess3,snd_princess4,snd_princess9))
	
sprite_index=spr_plantprincess_attack3
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.05)
frame_set(3,3,0.25) if AnimFrame=4
{PlaySound(snd_quakeground)
	var repplant=1; var repdir=point_direction(x,y,targetEnemy.x,targetEnemy.y);
repeat(8)
{
bone=instance_create_depth(x+lengthdir_x(64*repplant,repdir),y+lengthdir_y(64*repplant,repdir),-1,oBossHazard) bone.image_xscale=image_xscale
bone.hitSource=self.id with bone
{sprite_index=spr_plantprincess_vine
selfscript = function()
{MoveType=1 damage=0.1
depth=-y
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25) 
if AnimFrame=3
{oControl.quakeFXTime=10
dust_make(x-16,y+1,z,-2,0,0) dust_make(x+16,y+1,z,2,0,0)
dust_make(x,y+2,z,0,1,0)
}
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.05)
frame_set(7,5,0.25)
frame_set(8,3,0.25)
frame_set(9,2,0.25) 
frame_set(10,1,0.25)
frame_set(11,0,0.25) 

if AnimFrame=clamp(AnimFrame,3,5.9) 
{if hitSource.anim!=13 AnimFrame=4 else atk=1} else atk=0

if AnimFrame>11.7 {dust_make(x,y,z,0,0,0) instance_destroy()}
}
}
repplant+=1;
}
}
frame_set(4,4,0.1)
frame_set(5,5,0.05)
frame_set(6,3,0.05) 
frame_set(7,1,0.5)
if AnimFrame>7.7 canmove=1
}
hasShadow=1
if anim=14 ///Teleport
{
sprite_index=spr_plantprincess_teleport
frame_set(0,0,0.25) if AnimFrame=clamp(AnimFrame,2,6) {recovery=2 recoveryThrow=2}
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.05)
frame_set(5,5,0.05) 
frame_set(6,3,0.25)
frame_set(7,1,0.25)
frame_set(8,0,0.25)
frame_set(9,0,0.25)

if AnimFrame=clamp(AnimFrame,4,6.5) {sprite_index=mask_none hasShadow=0
	x=choose(oControl.camX+56,oControl.camX+320-56)
	}

if AnimFrame>9.7 canmove=1
}

if anim=100
{if AnimFrame=0 sprite_index=spr_plantprincess_intro
frame_set(0,0,0.01) if AnimFrame=1 {PlaySound(snd_princess16)}
frame_set(1,1,0.25)
frame_set(2,2,0.25)
frame_set(3,3,0.25)
frame_set(4,4,0.01) if AnimFrame=5 {PlaySound(snd_princess11)}
frame_set(5,5,0.25)
frame_set(6,6,0.25)
frame_set(7,7,0.25)
frame_set(8,8,0.25)
frame_set(9,9,0.25)
frame_set(10,10,0.25)
frame_set(11,11,0.1)
frame_set(12,12,0.25)
frame_set(13,13,0.25)
frame_set(14,14,0.25)
frame_set(15,15,0.25)
frame_set(16,16,0.01)
frame_set(17,12,0.25) if AnimFrame=18 sprite_index=spr_plantprincess_teleport
frame_set(18,0,0.25)
frame_set(19,1,0.25)
frame_set(20,2,0.25) if AnimFrame=21 shadowSpr=mask_none
frame_set(21,3,0.25)
frame_set(22,4,0.25) 
frame_set(23,5,0.01) if AnimFrame=24 {y+=96 x+=32}
frame_set(24,5,0.25) 
frame_set(25,5,0.25)
frame_set(26,2,0.25) if AnimFrame=27 shadowSpr=spr_shadow
frame_set(27,1,0.25)
frame_set(28,0,0.1)
if AnimFrame>28.8 canmove=1
}
