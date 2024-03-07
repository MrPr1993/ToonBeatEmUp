enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100 anim=12
else anim=11

if current_pal=12
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>80 anim=12
else anim=13
}
}

if anim=11
{damage=0.2 MoveType=1
if animFrame=0 {sprite_index=spr_strongburg_hit image_index=10 specialcheck5=0}
frame_set(0,image_index,0.1) if animFrame=1 {
	if sprite_index!=spr_strongburg_spin PlaySound(snd_buffenemy1)
	sprite_index=spr_strongburg_spin PlaySound(snd_swing)}
frame_set(1,0,0.25) if animFrame=clamp(animFrame,1,7) {atk=1 sentflying=1*image_xscale} else {atk=0 sentflying=0}
frame_set(2,1,0.25) 
frame_set(3,2,0.25) if animFrame=clamp(animFrame,2,5) atkcol_set(1,0,45,3.15,1,56) else atkcol_set(1,0,45,6.15,1,56)
frame_set(4,3,0.25)
frame_set(5,4,0.25)
frame_set(6,5,0.25) if animFrame=7 {if specialcheck5!=6 {animFrame=1 specialcheck5+=1} else {sprite_index=spr_strongburg_hit image_index=10}}
frame_set(7,10,0.05) if animFrame>7.5 {canmove=1 anim=0}
}

if anim=12 canbeGrabbed=0 else canbeGrabbed=1

/////Grab Charge
if anim=12
{
if animFrame=0 {PlaySoundNoStack(snd_buffenemy4)}

atkcol_set(13,0,0,0.85,1,1) damage=0 MoveType=0
animFrame+=0.01 //selfatk.HitSound=-1
if animFrame<0.25 {sprite_index=spr_strongburg_grab image_index=0}
else
{

if targetEnemy.anim=30 or targetEnemy=31
{canmove=1 anim=0 alarm[0]=60 exit;}
	atk=1 
	sprite_index=spr_strongburg_charge image_index+=0.25
sentflying=4*image_xscale

}
if (x>targetEnemy.x+48 and image_xscale=1)
or (x<targetEnemy.x-48 and image_xscale=-1)
or animFrame>2 {atk=0 animFrame=7.1 anim=11 sprite_index=spr_strongburg_charge image_index=0}
}

if anim=6666 ///Grab Enemy
{canBounce=0
isThrow=1 hud_show()
throwing=1
selfatk.image_xscale=0
comboBreak=0
selfatk.recovery=90
if animFrame>0.1
Throw=0 else {image_index=0 Throw=1 grabMax=0}
sprite_index=spr_strongburg_grab
if image_index<1
image_index+=0.1
else
image_index+=0.1 if image_index>2 image_index=0 hspeed=0 canmove=0

if image_index=1 PlaySoundNoStack(snd_buffenemy4)

if targetID!=-1 
{
targetID.x=x+12*image_xscale
targetID.y=y targetID.z=z-20
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
	animFrame=3
	anim=5

sentflying=-2*image_xscale zSpeed=-2

if targetID!=-1
{
targetID.x=x+24*image_xscale
with targetID
{
animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
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

throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
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
grabX=12*image_xscale grabY=0 grabZ=z-20 

atk=0 
animFrame+=0.02 if animFrame>4 {///Let go of enemy to attack
grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
if targetID!=-1
with targetID
{recovery=10 isGrabbed=0
hurt=1 Throw=0
atk=0 canmove=0 animFrame=0 ground=0 zSpeed=-4 sentflying=-2*image_xscale image_index=GrabFrame anim=5 shaketime=10
canmove=0 hurt=1
}throwing=0 animFrame=0 anim=0 canmove=0 throwcombo=2 canmove=1 alarm[0]=60
targetID=-1 }


if targetID!=-1
{
if image_index=1 
{
with targetID {hp-=0.04 PlaySound(snd_hit) event_user(11) shaketime=10}
	} //34,67
if image_index<1 targetID.image_index=GrabFrame else targetID.image_index=1
if targetID.hp<0 or targetID.dead=1
{
with targetID
{
	animFrame=0 HitType=0 hurt=1 hit=0 Throw=0 hitBack=0
	HitForceReact=-4*image_xscale throw_quickrelease() ground=0 zSpeed=-4 sentflying=-2*image_xscale anim=5 canmove=0 recovery=0 recoveryThrow=0 shake=0 shaketime=0
}
throwing=0 animFrame=0 canmove=1 throwcombo=2 alarm[0]=60
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
if (targetID.key_shield_pressed or targetID.key_super)
if targetID.pow>4
or targetID.hp>=powhp
{grabZ=0 targetID.z=z
with targetID {anim=0 hurt=0 ground=0 isGrabbed=0

powlock=1 pow=0 
if pow>4 powcheck=1 else if hp>=powhp powcheck=0
canmove=0 targetID=-1 animFrame=0 atk=1
anim=17 throwATK=0
   recovery=60}
targetID=-1
}
}
////Instantly use Super	

}

///Jump Kick
if anim=13
{damage=0.2
if animFrame=0 {PlaySoundNoStack(snd_buffenemy4) specialtimes[0]=0

	}	
sprite_index=spr_strongburg_kick
atkcol_set(46,0,20,1.8,1,38)

frame_set(0,0,0.25)
frame_set(1,1,0.05) if animFrame=2 {ground=0 zSpeed=-6 sentflying=6*image_xscale animFrame=2.1
	}
if animFrame=2.1 {image_index=2+specialtimes[0] if specialtimes[0]<1.5 specialtimes[0]+=0.25
	atk=1 MoveType=1 damage=0.2
				
	if ground {animFrame=3 atk=0}}
frame_set(3,1,0.1)
frame_set(4,0,0.1)
if animFrame>4.5 canmove=1

}