/// @description Insert description here
// You can write your code in this editor
enemy_endstep()
throw_step()

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
	{ hit=0  if animFrame=0 PlaySound(choose(snd_pharaoh3,snd_pharaoh2,snd_pharaoh2))
sprite_index=AtkSpr atkcol_set(92,0,50,4.25,1,12)
	if sprite_index=AtkSpr {MoveType=2 damage=0.2}
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,4,4.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,2) animFrame+=0.5
	else if animFrame=clamp(animFrame,2,3) animFrame+=0.05 else 
	if animFrame=clamp(animFrame,3,4) animFrame+=0.2 else
	if animFrame=clamp(animFrame,4,5) animFrame+=0.5 else 
	if animFrame=clamp(animFrame,5,9) animFrame+=0.2 
	if animFrame>6.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
		///Smoke Spawn
	if anim=12 ///Attack Stand
	{ hit=0  MoveType=0
sprite_index=spr_pharaoh_smoke dizzyAtk=1 if animFrame=2 {PlaySound(snd_pharaoh2) PlaySound(snd_heavystep)}
damage=0.01

	image_index=animFrame
	if animFrame<2 animFrame+=0.1 else
	animFrame+=0.25
	
	if animFrame=2 {sm=instance_create_depth(x+64*image_xscale,y,0,oPharaohSmoke) sm.hspeed=1*image_xscale
		sm.z=z-54
		}
		
	if animFrame>5.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	} else dizzyAtk=0
	
		///Attacks - Drop
	if anim=13 ///Attack Stand
{if animFrame=0 PlaySound(snd_pharaoh5)
	HitForce=-4
	HitForceZ=-4

	damage=0.5

	sprite_index=spr_pharaoh_drop

	atkcol_set(0,0,0,2.75,2,100) MoveType=3 damage=0.3

	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	if animFrame=2
		{//PlaySound(snd_thunder) PlaySound(snd_hitground)
	oControl.quakeFXTime=8 animFrame=2.6
	elec=instance_create_depth(x,y-1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z PlaySound(snd_thunder)
	cof=instance_create_depth(targetEnemy.x,targetEnemy.y,depth,oCoffinCrusher)
		with cof	{ atk=0 alarm[0]=32 ground=0 spdZ=0 z-=256}	}	
	frame_set(2,2,0.5) 
	if animFrame=clamp(animFrame,2,2.5) atk=1 else atk=0
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

	if animFrame>19.75 {oControl.TextDialogue="" hurt=0 atk=0 canmove=1 hit=0}
	}
	
			///Kick Attack
if anim=14
{
selfatk.NoKnock=1 dizzyAtk=0 damage=0.01
	weaponBack=2
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48 
sprite_index=spr_pharaoh_kick selfatk.recovery=4
	//atkAddX=-32 selfatk.image_xscale=3 selfatk.image_yscale=1.5
	 
		frame_set(0,0,0.1) if animFrame=1 {PlaySound(snd_swing2)}
	frame_set(1,1,0.2)
	frame_set(2,2,0.25)
	frame_set(3,0,0.25)
	frame_set(4,3,0.2)//-
	
	if image_index=clamp(image_index,1,1.5)
	or image_index=clamp(image_index,3,3.5)
	or image_index=clamp(image_index,4,4.5)
		   atk=1 else atk=0
if animFrame>4.5 {powlock=0 hurt=0 atk=0 canmove=1 hit=0
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
	 if animFrame=0 {PlaySound(snd_pharaoh6)}
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
	frame_set(33,2,0.25) if animFrame<30 selfatk.MoveType=0 else {selfatk.MoveType=1 selfatk.damage=0.05}
	frame_set(34,2,0.05)
	frame_set(35,0,0.1)
	
	if image_index=clamp(image_index,1,1.5)
	or image_index=clamp(image_index,3,3.5)
	or image_index=clamp(image_index,4,4.5)
		   atk=1 else atk=0
if animFrame>32.5 {powlock=0 hurt=0 atk=0 canmove=1 hit=0
		}
}

if anim=18 ///Disc sphere of Destruction
{sprite_index=spr_pharaoh_summon
if animFrame=0 {PlaySound(snd_pharaoh4) }
frame_set(0,1,0.25)
frame_set(1,2,0.05) var Lx=0;
if image_xscale=1 Lx=__view_get( e__VW.XView, 0 )-60; else Lx=__view_get( e__VW.XView, 0 )+320+60;
frame_set(2,2,0.5)	if animFrame=3 {oControl.quakeFX=5
	
	sm=instance_create_depth(Lx,targetY,0,oLocusts) sm.hspeed=4*image_xscale
	sm.reverseSpd=8*image_xscale sm.z=z-48
	sm=instance_create_depth(Lx-80*image_xscale,targetY,0,oLocusts) sm.hspeed=4*image_xscale
	sm.reverseSpd=8*image_xscale sm.z=z-48
		}
 atk=0
frame_set(3,2,0.5)
frame_set(4,2,0.1)
frame_set(5,1,0.25)
frame_set(6,0,0.25)

	image_index=animFrame

	
	if animFrame>6.5 {hurt=0 atk=0 canmove=1 hit=0
	}
}
	
	///Intro
if anim=100
{canbeGrabbed=0 recovery=10
 
 isDepth=0 depth=888

if animFrame=0
{animFrame=0.01 sprite_index=spr_pharaoh_intro
	coff1=instance_create_depth(x,y,0,oFlashFX) coff1.image_xscale=image_xscale with coff1
	{image_speed=0 sprite_index=spr_coffincrusher image_index=0 isDepth=0 animEnd=0 depth=depth+1000 alarm[0]=-1}
	coff2=instance_create_depth(x,y,0,oFlashFX) coff2.image_xscale=image_xscale with coff2
	{image_speed=0 sprite_index=spr_coffincrusher image_index=1 isDepth=0 animEnd=0 depth=depth+887 alarm[0]=-1}	
	
	}



if animLock=0
frame_set(0,3,0.01) if animFrame=1 {PlaySound(snd_hit) special4=0 coff2.x+=1}


frame_set(1,3,0.5) if animFrame=2 { coff2.x-=1}
frame_set(2,3,0.5) if animFrame=3 { coff2.x+=1}
frame_set(3,3,0.5) if animFrame=4 { coff2.x-=1}
frame_set(4,3,0.5) if animFrame=5 { coff2.x+=1  if special4!=8 {special4+=1 animFrame=4}}
frame_set(5,3,0.1) if animFrame=6.5 {}
frame_set(6,3,0.01) if animFrame=7 {coff2.hspeed=1*image_xscale coff2.vspeed=-0.5


	}
	
	
	if animFrame=7.5
	{PlaySound(snd_pharaoh7)

	}
	

		
		
		if animFrame=9.7
		
		
if animFrame<2 visible=0 else visible=1

frame_set(7,3,0.025) if animFrame=8 {coff2.hspeed=0 coff2.vspeed=-0 coff2.depth=depth+400}
frame_set(8,3,0.01)
	frame_set(9,0,0.01) if animFrame=clamp(animFrame,9,9.5) {animFrame=9.6}
	frame_set(10,1,0.1)
	if animFrame=11
		{//PlaySound(snd_thunder) PlaySound(snd_hitground)
	oControl.quakeFXTime=8 sprite_index=spr_pharaoh_drop PlaySound(snd_pharaoh12)
	elec=instance_create_depth(x,y-1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z PlaySound(snd_thunder)
		}

	frame_set(11,2,0.5) 
	frame_set(12,3,0.25)
	frame_set(13,4,0.25)
	frame_set(14,3,0.25) 
	frame_set(15,4,0.25)
	frame_set(16,3,0.25)
	frame_set(17,4,0.25)
	frame_set(18,3,0.25)
	frame_set(19,4,0.25)
	frame_set(20,3,0.25)
	frame_set(21,4,0.25)
	frame_set(22,3,0.25)
	frame_set(23,4,0.25)
	frame_set(24,3,0.25)
	frame_set(25,4,0.25)
	frame_set(26,3,0.25)
	frame_set(27,4,0.25)
	frame_set(28,3,0.25)
	frame_set(29,4,0.25)
	frame_set(30,3,0.25)
	frame_set(31,4,0.25)
	frame_set(32,3,0.25) if animFrame=33 {isDepth=1 coff1.zSpeed=-16 coff2.zSpeed=-16}
	frame_set(33,4,0.05)
	frame_set(34,0,0.25)
	frame_set(35,0,0.25)
	frame_set(36,0,0.25)

if animFrame>36.9 {oControl.TextDialogue="" canbeGrabbed=1 recovery=0 anim=0 canmove=1 alarm[1]=30}
}