/// @description Z Block Collision


if ContinueMode=0
{
zblock_col()



fallMul=1
jumpMul=1

	if canControl=0
	if 	automove=1
	{
x=lerp(x,automoveX,0.2)
y=lerp(y,automoveY,0.2)
	}

if canmove=1 and ground=0 
{
if anim!=2 and anim!=3 anim=2
if anim=2 or anim=3
{if key_jump_hold {if zSpeed<0 {jumpMul=0.8 fallMul=0.8}} else zSpeed=lerp(zSpeed,.45,0.1)  }
}
///Throw Setup
if carry=1
{
if !instance_exists(item)
carry=0}

if !instance_exists(targetID)
{targetID=-1}
else
if targetID!=-1
{
if hurt=1
{
character_release(0,-4,2*image_xscale,0,3,5)
}


if targetID!=-1
{
if targetID.canDrag=1
{
targetID.x=x+grabX
targetID.y=y+grabY
targetID.z=z+grabZ
}
targetID.vspeed=0
targetID.hspeed=0
}}

if recovery!=0 recovery-=1 else {recovery=0}
if recoveryThrow!=0 recoveryThrow-=1 else recoveryThrow=0

///Attack Setup
selfatk.isPlayer=isPlayer
selfatk.x=x+(atkAddX)*image_xscale selfatk.y=y+atkAddY
selfatk.type=hit selfatk.z=z-atkAddZ selfatk.SourceX=x
selfatk.damage=damage+extradamage
selfatk.isThrow=isThrow
selfatk.MoveType=MoveType
selfatk.dizzyAtk=dizzyAtk
selfatk.HitForce=HitForce
selfatk.HitForceZ=HitForceZ


aff.affID=id
aff.x=x aff.y=y aff.z=z
aff.dead=dead aff.canmove=canmove
aff.hp=hp aff.atk=atk aff.hurt=hurt aff.ground=ground
aff.immune=immune aff.act=act aff.recoveryThrow=recoveryThrow
aff.anim=anim


///To keep player from going off-screen
if areaEntry=0
x=clamp(x,__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.XView, 0 )+320-16)

///Animation Setup
////This will be used so depending on the animation set, the character will use those abilities stored in their scripts
player_anim()



///Beta Hit Set Up

if oControl.betatest=1
{
if keyboard_check_pressed(ord("1"))
{
if keyboard_check(vk_shift) hp=1 else hp=0.1
}
if keyboard_check_pressed(ord("2"))
{
if oControl.HurtTest=1
{
if -key_left or key_right
hitBack=1 else hitBack=0

if !keyboard_check(vk_control)
{HitType=0 event_user(0) hp-=0.1*keyboard_check(vk_shift)
targetHeightHit=choose(0,1,2)
image_index=targetHeightHit}
else if instance_exists(oEnemy1)
with oEnemy1 {HitType=0 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
}



if oControl.HurtTest=2///Rolling backwards
{
if -key_left or key_right
hitBack=1 else hitBack=0

if !keyboard_check(vk_control)
{
HitType=2 event_user(0) hp-=0.1*keyboard_check(vk_shift)
}
else if instance_exists(oEnemy1)
with oEnemy1 {HitType=2 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
}
if oControl.HurtTest=3///Shocked
if !keyboard_check(vk_control)
{HitType=3 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
else if instance_exists(oEnemy1)
with oEnemy1
{HitType=3 event_user(0) hp-=0.1*keyboard_check(vk_shift)}

if oControl.HurtTest=4///Flatten
if !keyboard_check(vk_control)
{HitType=4 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
else if instance_exists(oEnemy1)
with oEnemy1
{HitType=4 event_user(0) hp-=0.1*keyboard_check(vk_shift)}

if oControl.HurtTest=5///Burned
if !keyboard_check(vk_control)
{HitType=5 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
else if instance_exists(oEnemy1)
with oEnemy1
{HitType=5 event_user(0) hp-=0.1*keyboard_check(vk_shift)}

if oControl.HurtTest=6///Frozen
if !keyboard_check(vk_control)
{HitType=6 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
else if instance_exists(oEnemy1)
with oEnemy1
{HitType=6 event_user(0) hp-=0.1*keyboard_check(vk_shift)}

if oControl.HurtTest=7///Dizzy
if !keyboard_check(vk_control)
{
dizzyHit=1
if -key_left or key_right
hitBack=1 else hitBack=0
HitType=0 event_user(0) hp-=0.1*keyboard_check(vk_shift)
targetHeightHit=choose(0,1,2)
image_index=targetHeightHit
}
else if instance_exists(oEnemy1)
with oEnemy1
{
dizzyHit=1
if -key_left or key_right
hitBack=1 else hitBack=0
HitType=0 event_user(0) hp-=0.1*keyboard_check(vk_shift)
targetHeightHit=choose(0,1,2)
image_index=targetHeightHit
}

if oControl.HurtTest=8 ///Spin
{
if -key_left or key_right
hitBack=1 else hitBack=0

if !keyboard_check(vk_control)
{HitType=590068 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
else if instance_exists(oEnemy1)
with oEnemy1 {HitType=590068 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
}

if oControl.HurtTest=9///Melt
{
animFrame=0
HitType=44 event_user(0) hp-=0.1*keyboard_check(vk_shift)
}

if oControl.HurtTest=10 ///Fall Spin
if !keyboard_check(vk_control)
{hashitBack=2 {canmove=0 event_user(1) canBounce=1 	zSpeed=-4 ground=0 spdZ=-8
	if hitBack=0 sentflying=4*-image_xscale	else
	sentflying=4*image_xscale	image_index=3 sprite_index=ThrownSpr
	animFrame=3 anim=5 hitBack+=2
	
	
	}
}

if oControl.HurtTest=11///Inflate
if !keyboard_check(vk_control)
{HitType=45 event_user(0) hp-=0.1*keyboard_check(vk_shift)}
else if instance_exists(oEnemy1)
with oEnemy1
{HitType=45 event_user(0) hp-=0.1*keyboard_check(vk_shift)}

}

///Change player
if keyboard_check_pressed(ord("4"))
{
if controlNO=4 controlNO=1 else controlNO+=1 showp1=1
disappearTime=90 recovery=180 showp1=1; alarm[4]=2
if visible=0 visible=1 else visible=0
disappearTime-=1
}

///Switch palette
if keyboard_check_pressed(ord("5"))//Palette Swap
{if keyboard_check(vk_control)
current_pal-=1;
else current_pal+=1;
}


if keyboard_check_pressed(ord("8"))///Immune
{
event_user(10)
}


if keyboard_check_pressed(ord("9"))///Instakill All Enemies
if instance_exists(oEnemy1)
with oEnemy1 if dead=0 and hp!=0
{hp=0 event_user(0) mask_index=mask_none ground=0 zSpeed=-1
sentflying=0 
}


if keyboard_check_pressed(ord("0"))///Instakill
{HitType=2 event_user(0) hp=0 global.P1Life=global.P1Life-global.P1Life*keyboard_check(vk_shift)}


if keyboard_check_pressed(ord("U"))///Raise Super
super+=20


if keyboard_check_pressed(ord("T"))///Change Character
if character=0 character=3 else character-=1
if keyboard_check_pressed(ord("Y"))///Change Character
if character=3 character=0 else character+=1

}
if weapontype=5 if anim!=26 weaponIndex=0
}