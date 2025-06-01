/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

if hp=0 if !ground {x=clamp(x,oControl.camX+32,oControl.camX+320-32)}

if coffinRecharge!=0 coffinRecharge-=1
if summonRecharge!=0 summonRecharge-=1

///Interrupt Dialogue
if hurt=1
{
audio_stop_sound(snd_pharaoh11)
audio_stop_sound(snd_pharaoh10)
audio_stop_sound(snd_pharaoh9)
audio_stop_sound(snd_pharaoh8)
audio_stop_sound(snd_pharaoh7)
audio_stop_sound(snd_pharaoh6)
audio_stop_sound(snd_pharaoh5)
audio_stop_sound(snd_pharaoh4)
audio_stop_sound(snd_pharaoh3)
}

	///Attacks
	if anim=10 ///Attack Pick
	{
if distance_to_object(oPlayer)<60
{anim=choose(14,21) exit;}	
	
if y=clamp(y,targetEnemy.y-10,targetEnemy.y+10)
and (x=clamp(x,targetEnemy.x-160,targetEnemy.x) or x=clamp(x,targetEnemy.x,targetEnemy.x+160))
if distance_to_object(targetEnemy)<60 
anim=14 else anim=11
if atkChoices=2 atkChoices=0 else atkChoices+=1
if distance_to_object(targetEnemy)<200 
{
if atkChoices=0 {if !instance_exists(oPharaohSmoke) anim=12 else 
{if distance_to_object(targetEnemy)<60 
anim=14 else anim=11	exit;}}
if atkChoices=1 {if !instance_exists(oCoffinCrusher) anim=13 else 
{if distance_to_object(targetEnemy)<60 
anim=14 else anim=11	exit;}}
if atkChoices=2 {if !instance_exists(oLocusts) anim=18 else 
{if distance_to_object(targetEnemy)<60 
anim=14 else anim=11;}}
}
	
	}
	
	
		///Attacks Whip
	if anim=11 ///Attack Stand
	{ hit=0  if AnimFrame=0 PlaySound(choose(snd_pharaoh3,snd_pharaoh2,snd_pharaoh2))
sprite_index=AtkSpr atkcol_set(92,0,50,4.25,1,12)
	if sprite_index=AtkSpr {MoveType=2 damage=0.2}
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,4,4.2) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,2) AnimFrame+=0.5
	else if AnimFrame=clamp(AnimFrame,2,3) AnimFrame+=0.05 else 
	if AnimFrame=clamp(AnimFrame,3,4) AnimFrame+=0.2 else
	if AnimFrame=clamp(AnimFrame,4,5) AnimFrame+=0.5 else 
	if AnimFrame=clamp(AnimFrame,5,9) AnimFrame+=0.2 
	if AnimFrame>6.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
		///Smoke Spawn
	if anim=12 ///Attack Stand
	{ hit=0  MoveType=0
sprite_index=spr_pharaoh_smoke dizzyAtk=1 if AnimFrame=2 {PlaySound(snd_pharaoh2) PlaySound(snd_heavystep)}
damage=0.01

	image_index=AnimFrame
	if AnimFrame<2 AnimFrame+=0.1 else
	AnimFrame+=0.25
	
	if AnimFrame=2 {sm=instance_create_depth(x+64*image_xscale,y,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-54
		}
		
	if AnimFrame>5.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	} else dizzyAtk=0
	
		///Attacks - Drop
	if anim=13 ///Attack Stand
{if AnimFrame=0 PlaySound(snd_pharaoh5)
	HitForce=-4
	HitForceZ=-4

	damage=0.5

	sprite_index=spr_pharaoh_drop

	atkcol_set(0,0,0,2.75,2,100) MoveType=3 damage=0.3

	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	if AnimFrame=2
		{//PlaySound(snd_thunder) PlaySound(snd_hitground)
	oControl.quakeFXTime=8 AnimFrame=2.6
	elec=instance_create_depth(x,y-1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z PlaySound(snd_thunder)
	cof=instance_create_depth(targetEnemy.x,targetEnemy.y,depth,oCoffinCrusher)
		with cof	{ atk=0 alarm[0]=32 ground=0 spdZ=0 z-=256}	}	
	frame_set(2,2,0.5) 
	if AnimFrame=clamp(AnimFrame,2,2.5) atk=1 else atk=0
	frame_set(3,3,0.25)
	frame_set(4,4,0.25)
	frame_set(5,3,0.25)
	frame_set(6,4,0.25)
	frame_set(7,3,0.25)
	frame_set(8,4,0.25)
	frame_set(9,3,0.25)
	frame_set(6,4,0.25)
	frame_set(7,3,0.25)
	frame_set(8,4,0.25)
	frame_set(9,3,0.25)
	frame_set(10,4,0.25)
	frame_set(11,3,0.25)
	frame_set(10,4,0.25)
	frame_set(11,3,0.25)
	frame_set(12,4,0.25)
	frame_set(13,3,0.25)
	frame_set(14,4,0.25)
	frame_set(15,3,0.25)
	frame_set(16,4,0.25)
	frame_set(17,3,0.25)
	frame_set(18,4,0.05)
	frame_set(19,0,0.25)

	if AnimFrame>19.75 {oControl.TextDialogue="" hurt=0 atk=0 canmove=1 hit=0}
	}
	
			///Kick Attack
if anim=14
{
selfatk.NoKnock=1 dizzyAtk=0 damage=0.01 selfatk.MoveType=0
	weaponBack=2
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48 
sprite_index=spr_pharaoh_kick selfatk.recovery=4
	//atkAddX=-32 selfatk.image_xscale=3 selfatk.image_yscale=1.5
	 
		frame_set(0,0,0.1) if AnimFrame=1 {PlaySound(snd_swing2) sentflying=4}
	frame_set(1,1,0.2) if AnimFrame=2 sentflying=0
	frame_set(2,2,0.25)
	frame_set(3,0,0.25)
	frame_set(4,3,0.2)//-
	
	if image_index=clamp(image_index,1,1.5)
	or image_index=clamp(image_index,3,3.5)
	or image_index=clamp(image_index,4,4.5)
		   atk=1 else atk=0
if AnimFrame>4.5 {powlock=0 hurt=0 atk=0 canmove=1 hit=0
		}
}
	
		///Kick Attack 2
if anim=17
{
selfatk.NoKnock=1 dizzyAtk=0 damage=0.01
	weaponBack=2
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48
sprite_index=spr_pharaoh_kick selfatk.recovery=4
	//atkAddX=-32 selfatk.image_xscale=3 selfatk.image_yscale=1.5
	 if AnimFrame=0 {PlaySound(snd_pharaoh6)}
		frame_set(0,0,0.25)
	frame_set(1,1,0.25)
	frame_set(2,2,0.25)
	frame_set(3,0,0.25)
	frame_set(4,3,0.25)//-
	frame_set(5,2,0.25)
	frame_set(6,0,0.25)
	frame_set(7,4,0.25)//-
	frame_set(8,2,0.25)
	frame_set(9,0,0.25)
	frame_set(10,1,0.25)//-
	frame_set(11,2,0.25)
	frame_set(12,0,0.25)
	frame_set(13,3,0.25)//-
	frame_set(14,2,0.25)
	frame_set(15,0,0.25)
	frame_set(16,4,0.25)//-
	frame_set(17,2,0.25)
	frame_set(18,0,0.25)
	frame_set(19,1,0.25)//-
	frame_set(20,2,0.25)
	frame_set(21,0,0.25)
	frame_set(22,3,0.25)//-
	frame_set(23,2,0.25)
	frame_set(24,0,0.25)
	frame_set(25,4,0.25)//-
	frame_set(26,2,0.25)
	frame_set(27,0,0.25)
	frame_set(28,1,0.25)//-
	frame_set(29,2,0.25)
	frame_set(30,0,0.25)
	frame_set(31,1,0.25)
	frame_set(32,2,0.25)
	frame_set(33,2,0.25) if AnimFrame<30 selfatk.MoveType=0 else {selfatk.MoveType=1 selfatk.damage=0.05}
	frame_set(34,2,0.05)
	frame_set(35,0,0.1)
	
	if image_index=clamp(image_index,1,1.5)
	or image_index=clamp(image_index,3,3.5)
	or image_index=clamp(image_index,4,4.5)
		   atk=1 else atk=0
if AnimFrame>32.5 {powlock=0 hurt=0 atk=0 canmove=1 hit=0
		}
}

if anim=18 ///Disc sphere of Destruction
{sprite_index=spr_pharaoh_summon
if AnimFrame=0 {PlaySound(snd_pharaoh4) }
frame_set(0,1,0.25)
frame_set(1,2,0.05) var Lx=0;
if image_xscale=1 Lx=__view_get( e__VW.XView, 0 )-60; else Lx=__view_get( e__VW.XView, 0 )+320+60;
frame_set(2,2,0.5)	if AnimFrame=3 {oControl.quakeFX=5
	
	sm=instance_create_depth(Lx,targetY,0,oLocusts) sm.hspeed=4*image_xscale
	sm.reverseSpd=8*image_xscale sm.z=z-48
	sm=instance_create_depth(Lx-80*image_xscale,targetY,0,oLocusts) sm.hspeed=4*image_xscale
	sm.reverseSpd=8*image_xscale sm.z=z-48
		}
 atk=0
frame_set(3,2,0.5)
frame_set(4,2,0.1)
frame_set(5,2,0.25)
frame_set(6,1,0.25)
	
	if AnimFrame>6.5 {hurt=0 atk=0 canmove=1 hit=0
	}
}
	
	///Intro
if anim=100
{canbeGrabbed=0 recovery=10
 if AnimFrame=0 {visible=0 sprite_index=spr_pharaoh_rise z=-240
	pillar=instance_create_depth(x,y-2,-1,oFlashFX) with pillar
	{sprite_index=spr_pharaoh_teleport animEnd=0 alarm[0]=0 loopimg=2 image_speed=0.5 z=-16}
	pillar2=instance_create_depth(x,y-2,-1,oFlashFX) with pillar2
	{sprite_index=spr_pharaoh_teleport animEnd=0 alarm[0]=0 loopimg=2 image_speed=0.5 z=-16 image_yscale=-32}
	PlaySound(snd_thunder) oControl.quakeFX=10
	}zSpeed=0
frame_set(0,0,0.1)
frame_set(1,0,0.1) 
frame_set(2,0,0.1) if AnimFrame>4 and AnimFrame<8{z+=0.5}
frame_set(3,0,0.1) if AnimFrame=4 {visible=1 }
frame_set(4,0,0.01)
frame_set(5,0,0.01)
frame_set(6,0,0.01)
frame_set(7,0,0.01) if AnimFrame=8 {PlaySound(snd_pharaoh13)
	flashFX(x+16*image_xscale,y+2,-80+8-2-50,spr_smokeend,0,0.25,0,1,1,c_white,1)
	fx.hspeed=0.5*image_xscale fx.zSpeed=-0.5
}
frame_set(8,1,0.01)
frame_set(9,2,0.01) if AnimFrame=10 {
	pillar.sprite_index=spr_pharaoh_teleport2 pillar.image_index=0 pillar.animEnd=1
	pillar2.sprite_index=spr_pharaoh_teleport2 pillar2.image_index=0 pillar2.animEnd=1
	AnimFrame=0.1 specialcheck0=0 anim=21}

if AnimFrame>36.9 {oControl.TextDialogue="" canbeGrabbed=1 recovery=0 anim=0 canmove=1 alarm[1]=30}
}

///Prepare To Jump
if anim=21
{if AnimFrame=0 specialcheck0=4
if x<__view_get( e__VW.XView, 0 ) image_xscale=1
if x>__view_get( e__VW.XView, 0 )+320 image_xscale=-1

sprite_index=spr_pharaoh_jump
image_index=0

image_speed=0 atk=0
if AnimFrame=clamp(AnimFrame,0,1)
AnimFrame+=0.05 else AnimFrame+=0.05 if AnimFrame>0.1 {PlaySound(snd_pharaoh2) anim=666}
}

///Jump
if anim=666
{
if AnimFrame<0.5 {AnimFrame=1 ground=0 z-=2 zSpeed=-8 }
sprite_index=spr_pharaoh_jump
image_index=1


if image_xscale=1 if x>__view_get( e__VW.XView, 0 )+32 x-=specialcheck0
if image_xscale=-1 if x<__view_get( e__VW.XView, 0 )+320-32 x+=specialcheck0



if ground {AnimFrame=4 anim=12}
}

if hp<=0
x=clamp(x,__view_get( e__VW.XView, 0 )+32,__view_get( e__VW.XView, 0 )+320-32)
