/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1



if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)<60
anim=11
else
{
if current_pal=0 
anim=12 else anim=13
}
}

if anim=11
{
	 hit=0  sprite_index=spr_plant_attack2
MoveType=1 damage=0.15
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.1 else animFrame+=0.05
	if animFrame=2 {ground=0 sentflying=4*image_xscale zSpeed=-4}
	if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
}



if anim=12
{atkcol_set(49,0,15,2.85,1,45)
	sprite_index=spr_plant_attack
frame_set(0,0,0.25) 
frame_set(1,1,0.025) if animFrame=clamp(animFrame,2,3) {atk=1} else {atk=0}
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)

selfatk.HitSpark=spr_hitflash

if animFrame>4.5 canmove=1
}


///Gas attack
if anim=13
{
if animFrame=0 sprite_index=spr_plant_swallow
frame_set(0,4,0.25) 
frame_set(1,2,0.25) 
frame_set(2,1,0.25) 
if animFrame=3
{sprite_index=spr_plant_attack
sm=instance_create_depth(x+32*image_xscale,y+1,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-16 sm.dizzyHit=0 sm.MoveType=6 sm.isPharaoh=0
		sm.sprite_index=spr_bigsmoke sm.mainSmoke=spr_bigsmoke
}
frame_set(3,1,0.05)
frame_set(4,0,0.2)
if animFrame>4 canmove=1
}


if anim=6666 ///Grab Enemy
{
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if animFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_plant_eat
if image_index<1
image_index+=0.1
else
image_index+=0.25 if image_index>4 image_index=1 hspeed=0 canmove=0

//if image_index=1 PlaySoundNoStack(snd_mzombie3)

if targetID!=-1 
{
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
throwing=0 image_index=0 animFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
}
}
if targetID.anim!=30 and targetID.anim!=31
{
throwing=0 image_index=0 animFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
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
grabX=32*image_xscale grabY=0 grabZ=0 

atk=0 
animFrame+=0.02 if animFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
throwing=0 image_index=0 animFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
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
throwing=0 image_index=0 animFrame=0 anim=667 canmove=0 throwcombo=2 alarm[0]=60
}
}
}


////Forcibly Break Out With Special Attacks
if animFrame>0.1 and targetID!=-1
{
if targetID.key_right_pressed
or targetID.key_right_pressed
or targetID.key_jump
or targetID.key_attack
animFrame+=0.25

////Instantly use Special
//if (targetID.key_shield_pressed or targetID.key_super)
//if targetID.pow>4
//or targetID.hp>=powhp
//{grabZ=0 targetID.z=z with targetID {anim=0 hurt=0 ground=0 isGrabbed=0
//powlock=1 pow=0 
//if pow>4 powcheck=1 else if hp>=powhp powcheck=0
//canmove=0 targetID=-1 animFrame=0 atk=1
//anim=17 throwATK=0
//recovery=60}
//targetID=-1
//}

}
////Instantly use Super	
}

if anim=667 ///Release/Swallow
{if specialcheck0=0
if animFrame<1 if image_index<1 {specialcheck0=1 image_index=0 animFrame=0 sprite_index=spr_plant_eat} //animFrame+=0.1
if specialcheck1=0
{
frame_set(0,0,0.1)
if animFrame=1 
{
sprite_index=spr_plant_attack
if targetID!=-1
{targetID.depth=depth-1 
with targetID
{ground=0  hitBack=0
recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 animFrame=0 ground=0 zSpeed=-6 sentflying=-4*image_xscale image_index=GrabFrame anim=5 shaketime=10
hurt=1 }targetID=-1
}
}
frame_set(1,1,0.025)
frame_set(2,0,0.1)
if animFrame>2.5 {canmove=1}
}
if specialcheck1=1
{if targetID!=-1 with targetID {vis=0 sentflying=0 dead=1 disappeartime=0 alarm[2]=100} targetID=-1
sprite_index=spr_plant_eat
frame_set(0,0,0.1) if animFrame>1 sprite_index=spr_plant_swallow
frame_set(1,0,0.1)
frame_set(2,1,0.2)
frame_set(3,2,0.2)
frame_set(4,3,0.2)
frame_set(5,4,0.2)
frame_set(6,5,0.1)
if animFrame>6.5 canmove=1
}


}

///