/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()


///Interrupt Dialogue
if hurt=1
{
audio_stop_sound(snd_franki12)
audio_stop_sound(snd_franki11)
audio_stop_sound(snd_franki10)
audio_stop_sound(snd_franki9)
audio_stop_sound(snd_franki8)
audio_stop_sound(snd_franki7)
audio_stop_sound(snd_franki6)
audio_stop_sound(snd_franki5)
audio_stop_sound(snd_franki4)
}

///Drop player if hit

////Break out of the superarmor to be able to throw them
if anim=4 canbeGrabbed=1 else canbeGrabbed=0

if grabRecharge!=0 grabRecharge-=1

	if anim=1 ///Move
	{	
	
	if !RunAnimRecharge>0
	{sprite_index=MoveSpr} ///Walk
	else
	{sprite_index=MoveSpr
	if HasRunAnim=1 
	if (image_xscale=1 and key_right) 
	or (image_xscale=-1 and key_left) sprite_index=RunSpr 

	}
	image_index+=0.1 if image_index=3 {oControl.quakeFXTime=4 PlaySound(snd_heavystep)} if image_index>5.9 {oControl.quakeFXTime=4 image_index=0 PlaySound(snd_heavystep)} atk=0}

if anim=10
{
if y=clamp(y,targetEnemy.y-30,targetEnemy.y+30)
and (x=clamp(x,targetEnemy.x-80,targetEnemy.x) or x=clamp(x,targetEnemy.x,targetEnemy.x+80))
{
	if grabRecharge=0
{anim=13 grabRecharge=120} else anim=choose(11,12)
}
else if distance_to_object(targetEnemy)<50
anim=11
else if distance_to_object(targetEnemy)<100 anim=12 else anim=14
}

	///Attacks
	if anim=11 ///Attack Quake
{if animFrame=0 PlaySound(snd_franki10)
	sprite_index=AtkSpr

	atkcol_set(0,0,0,6.5,5,16) MoveType=1 damage=0.3
	
	frame_set(0,0,0.1) if animFrame=1 animFrame=1.01
	frame_set(1,1,0.03) if animFrame=2 
	{PlaySound(snd_explosion)
	oControl.quakeFXTime=20
	rockFX=0;
		quake=instance_create_depth(x,y,depth,oAnimFX) quake.isDepth=0 quake.image_speed=0.5
	quake.depth=99999 quake.sprite_index=spr_bahati_quake
	}
	frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,2.5) atk=1 else atk=0
	//frame_set(3,3,0.25)
if animFrame>2.5 {if image_index!=5 image_index+=0.5 animFrame+=0.25}

	if animFrame>11.75 {anim=15}
}


	if anim=12 ///Shoulder
{
	if animFrame=0
	PlaySound(choose(snd_franki11,snd_franki1,snd_franki1))
	
	sprite_index=spr_franki_shoulder

	atkcol_set(19,0,-2,2.95,1,119) MoveType=1 damage=0.4
		frame_set(0,0,0.05)
	frame_set(1,1,0.5)
	frame_set(2,2,0.05) if animFrame>2 and animFrame<2.3
	{PlaySound(snd_swing3) animFrame=2.5 
	oControl.quakeFXTime=4  ground=0 z-=2 zSpeed=-6
	}
	if animFrame>2 {atk=1 sentflying=8*image_xscale} else atk=0
	//frame_set(3,3,0.25)
if animFrame>2.5 {image_index=2  animFrame+=0.25}

	if animFrame>11.75 or (animFrame>2.5 and ground) {PlaySound(snd_heavystep) oControl.quakeFXTime=4 anim=15}
}

	///Attacks
	if anim=13 ///Attack Grab
{
	if animFrame=0
	PlaySound(snd_franki6)
	damage=0 MoveType=0
	if animFrame=0 sprite_index=spr_franki_shoulder
	if animFrame>1 sprite_index=spr_franki_grab

atkcol_set(33,0,-4,4.45,1,139)

frame_set(0,0,0.025)
frame_set(1,0,0.25) if animFrame=clamp(animFrame,1,3) {sentflying=5*image_xscale atk=1} else atk=0
frame_set(2,1,0.25)
frame_set(3,2,0.25)
frame_set(4,3,0.25) if animFrame>4 animFrame+=0.2

	if animFrame>11.75 {anim=15}
}

	if anim=40000 ///Grab Success
{	

if targetID!=-1
{
if animFrame<3
{
	//SpritePos waistPosY[targetID.GrabFrame]
targetID.x=x+(35+targetID.waistPosX[targetID.GrabFrame])*image_xscale
targetID.y=y
targetID.image_xscale=-image_xscale
if image_index<1
targetID.z=z-32-targetID.waistPosY[targetID.GrabFrame]
else
if image_index<2
targetID.z=z-32-targetID.waistPosY[targetID.GrabFrame]+2
else
targetID.z=z-32-targetID.waistPosY[targetID.GrabFrame]-10
with targetID
{image_index=GrabFrame}
}
else
{
targetID.x=x
targetID.y=y
targetID.z=z
with targetID
{image_index=4}
}
}	
	if animFrame=0
	{audio_stop_sound(snd_franki6)
	PlaySound(snd_franki7)
	sprite_index=spr_franki_grabatk
	}
atk=0
	//if animFrame>1 sprite_index=spr_franki_grab

frame_set(0,0,0.05)
frame_set(1,1,0.25) if animFrame=2 {image_index=2 PlaySound(snd_swing2) animFrame=2.5 ground=0 zSpeed=-24}

if animFrame=2.5
{if zSpeed>1 and !ground {zSpeed+=0.25 if sprite_index!=spr_franki_grabend {sprite_index=spr_franki_grabend PlaySound(snd_franki9)} image_index=0}
}

if ground and image_index=0 and sprite_index=spr_franki_grabend
{PlaySound(snd_explosion) oControl.quakeFXTime=20 image_index=19 animFrame=3 PlaySound(snd_shocked)
	sprite_index=spr_franki_grabatk
	targetID.x=x targetID.y=y targetID.z=0
	
	quake=instance_create_depth(x,y,depth,oAnimFX) quake.isDepth=0 quake.image_speed=0.5
	quake.depth=99999 quake.sprite_index=spr_bahati_quake quake.z=0
	
	with targetID
	{
	canmove=0
	hurt=1
	hit=1
	ground=1
	zSpeed=0
	sentflying=0
	hitBack=0
	animFrame=0
	anim=9
	image_yscale=1
	ThrowDamage=0
	Throw=0
	recovery=10
	recoveryThrow=10
	hp-=0.25
	event_user(11)
	}
	

}

frame_set(3,19,0.25) if animFrame>3.5
{

event_user(1)
	hurt=1 canBounce=0
	ground=0
	sentflying=4*-image_xscale zSpeed=-4
	image_index=11 sprite_index=ThrownSpr
	animFrame=0
	anim=7 

}

frame_set(4,20,0.25) if animFrame>4 animFrame+=0.1

	if animFrame>11.75 {anim=15}
}

	///Attacks Wave
	if anim=14 ///Attack Wave
{if animFrame=0 PlaySound(snd_franki5)
	sprite_index=spr_franki_wave
selfatk.HitSound=snd_shocked
	atkcol_set(524,0,-2,32.85,1,33) MoveType=3 damage=0.2
	
	frame_set(0,0,0.1)
	frame_set(1,1,0.05) if animFrame=2 
	{PlaySound(snd_explosion)
	oControl.quakeFXTime=20
	rockFX=0;
	
	specialCheck3=0
	repeat(6)
	{
	quake=instance_create_depth(x+(62+96*specialCheck3)*image_xscale,y+1,depth,oAnimFX) quake.image_speed=0.5
	quake.sprite_index=spr_franki_wavefx quake.hspeed=4*image_xscale quake.image_xscale=image_xscale
	specialCheck3+=1
	}
	
	
	}
	frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,2.5) atk=1 else atk=0
	//frame_set(3,3,0.25)
if animFrame>2.5 {if image_index!=5 image_index+=0.5 animFrame+=0.25}

	if animFrame>11.75 {anim=15}
}

	///Prepare To Jump / Land
	if anim=15
	{hit=0 MoveType=0 canmove=0  weaponBack=1

sprite_index=spr_franki_shoulder image_index=0
	
 atk=0
	if animFrame=clamp(animFrame,0,1)
	animFrame+=0.025 else animFrame+=0.025 if animFrame>0.1 {
	if anim=21
	{hurt=0 atk=0 canmove=1 hit=0 event_user(7)}
	else canmove=1
	}
	}
	
	
	///Intro
if anim=100
{canbeGrabbed=0 recovery=10 canmove=0

if ground {if image_index=0 {image_index=2 animFrame=2}}
else {image_index=0 zSpeed=16}

	sprite_index=AtkSpr
	
	

	frame_set(1,1,0.05) if animFrame=2 
	{PlaySound(snd_explosion)
	oControl.quakeFXTime=20
	rockFX=0;
		quake=instance_create_depth(x,y,depth,oAnimFX) quake.isDepth=0 quake.image_speed=0.5
	quake.depth=99999 quake.sprite_index=spr_bahati_quake
	}
	frame_set(2,2,0.5)

if animFrame>2.5 {if image_index!=5 image_index+=0.5 animFrame+=0.25}

//if animFrame>2 if animFrame>20 oControl.TextDialogue="" else oControl.TextDialogue="GET. OFF. MY. SHIP!"

if animFrame>25.75 {anim=15 oPlayer.canmove=1 oPlayer.anim=0}

}

