///Animation Setup - Viva
////Here it indicates the character's abilities
function animsetup_viva() {
	 
	 
//if canmove{if screamset=0 if key_screamP oControl.quakeFXTime=10 screamset=key_scream if screamset {if !audio_is_playing(snd_vivanoise) {var timesSound=1 var snd = audio_play_sound(snd_vivanoise,0,1) audio_sound_gain(snd_vivanoise, timesSound, 0); audio_sound_gain(snd_vivanoise,global.SFXvolume/100,0)} with selfatk{seten=instance_place(x,y,parEnemy) if place_meeting(x,y,seten) if seten.x<hitSource.x seten.image_xscale=1 else seten.image_xscale=-1 with seten if hp!=0 and dead=0 {if place_free(x-2*image_xscale,y) x-=2*image_xscale anim=4 canmove=0 AnimFrame=0 shaketime=2 targetHeightHit=GrabFrame sprite_index=ThrownSpr image_index=targetHeightHit hp-=0.01 if hp<=0 {HitType=19936 event_user(0)}}}}} else {screamset=0} if screamset=0 audio_stop_sound(snd_vivanoise)


	walkSpeed=2
	damage=0.05
	extradamage=damage*global.Cheat[3]*global.NoCheat
	defense=1.5
	extradefense=0
	weaponBack=1
	height=88
	HitReactionScript=viva_hitreaction
	commandChargeColor=c_blue

	name="VIVA"

	///Hit Sprite Animation Setup
	defMask=mask_small

	DeathCry=snd_viva2
	DamageVoice1=snd_viva9
	DamageVoice2=snd_viva10
	DamageVoice3=snd_viva11
	ReturnVoice=snd_viva8
	
	if 	ThrownSpr!=spr_viva_hit
	{
	ThrownSpr=spr_viva_hit
	BurnSpr=spr_viva_burned
	FrozenSpr=spr_viva_frozen
	ShockSpr=spr_viva_elec
	FlatSpr=spr_viva_flat
	DizzySpr=spr_viva_dizzy
	meltSpr=spr_viva_melt
	CarSpr=spr_viva_car
	GrabbedSpr=spr_viva_grabbed
	SuperSpr=spr_viva_super
	PointSpr=spr_viva_point
	PointDialouge1=snd_viva20
	PointDialouge2=snd_viva21
	ScreenHitSpr=spr_viva_hitscreen
	WildTakeSpr=spr_viva_wildtake
	WildTakeSpr2=spr_viva_wildtake2
	WinSpr=spr_viva_win
	WinSnd=snd_viva13
	cutSpr1=spr_viva_cut1
	cutSpr2=spr_viva_cut2
	cutSpr1B=spr_viva_cutB1
cutSpr2B=spr_viva_cutB2
	SpookyMonthSpr=spr_viva_spookymonth
	SpinningSpr=spr_viva_spin
	petSprLow=spr_viva_petlow
    throwItemSpr=spr_viva_itemthrow
BDanceSpr=spr_viva_bdance
WildTakeSpr3=spr_viva_wildtake3
PlaneOutSpr=spr_viva_planeout
HeartSpr=spr_viva_heart
WildTakeSpr4=spr_viva_wildtake4
qSandSpr=spr_viva_quicksand
	inflateSpr=spr_viva_inflate
	wrapSpr=spr_viva_wrap
	pigSpr=spr_viva_pig
	bubSpr=spr_viva_bubble
	}

	if atk=0 ///To Set default colission
	{hitFXreset() selfatk.HitSound=snd_hit isThrow=0 throwing=0 canSuper=1 atkAddX=24 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.75*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}
	if hurt=1 atk=0


	if anim=0///Stand
	{powlock=0 
	if weaponspawn=oHammer {weaponanim(weaponspr,weaponIndex,21,-59,90*image_xscale,weaponcolor)

	}

	atk=0
	if carry=0
	{
	if weaponspawn=-1 ////Default Stand
	{zAddGround=0
	if isIdle<60
	{//isIdle+=0.1
	if sprite_index!=spr_viva_stand 
	{AnimFrame=0 sprite_index=spr_viva_stand}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.1)
	frame_set(3,1,0.1)
	frame_set(4,0,0.1)
	frame_set(5,3,0.1)
	frame_set(6,4,0.1)
	frame_set(7,3,0.1)
	frame_set(8,5,0.1)
	frame_set(9,1,0.1)
	frame_set(10,2,0.1)
	frame_set(11,1,0.1)
	frame_set(12,0,0.1)
	frame_set(13,3,0.1)
	frame_set(14,4,0.1)
	frame_set(15,3,0.1)
if AnimFrame>15.5 AnimFrame=0

	}
	else
	{
	var idlespr=spr_viva_idle;
	if Cweather=1 idlespr=spr_viva_idlecold;
		
	if sprite_index!=idlespr
	{AnimFrame=0 sprite_index=idlespr}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if AnimFrame>3-0.1 AnimFrame=1
	frame_set(2,2,0.1)
	}


	}
	if weaponspawn=oHammer ////Hammer Stand
	{zAddGround=0 image_index=0
	sprite_index=spr_viva_standweapon
	weaponanim(weaponspr,weaponIndex,10,-46,72*image_xscale,weaponcolor)

	if weapontype=2 or weapontype=6 or weapontype=7 ////Machine Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_viva_gunstand
	}
	
		if weapontype=4 ////Hand Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,17,-69,135*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_viva_handgun
	}

	}



	}
	else
	{///Carry Stand
	
	
	item.carryZ=0-76
	image_index=0 sprite_index=spr_viva_hammeratk}

	} else isIdle=0

	if anim=1 ///Move
	{powlock=0 weaponBack=1
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,15,-48,70*image_xscale,weaponcolor)
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	weaponanim(weaponspr,weaponIndex,15,-49,70*image_xscale,weaponcolor)
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	weaponanim(weaponspr,weaponIndex,15,-50,70*image_xscale,weaponcolor)


	if dashing=0
	{
	if carry=0
	{


	if weaponspawn=-1 ////Default Move
	{zAddGround=0
	sprite_index=spr_viva_move
	image_index+=0.02 if image_index>6-0.2 image_index=0
	}
	if weaponspawn=oHammer ////Hammer Move
	{zAddGround=0 
	sprite_index=spr_viva_moveweapon
	}
	}
	else
	{		
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	item.carryZ=-15-76
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	item.carryZ=-16-76
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	item.carryZ=-17-76
		
	sprite_index=spr_viva_moveobject ///Carry Walk
	}

	image_index+=0.2 if image_index>6-0.2 image_index=0 atk=0}
	else
	{
if 	sprite_index!=spr_viva_run	
{sprite_index=spr_viva_run
dust_make(x,y,z,-2*image_xscale,0,0)
	}
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-12,-44,-16*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-12,-45,-29*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-8,-33,-4*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,24,-57,160*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,32,-50,132*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,25,-36,101*image_xscale,weaponcolor)
	  ///Run
	image_index+=0.2 if image_index>6-0.2 image_index=0 atk=0}
	}

	///Jump 1
	if anim=2
	{
	powlock=0 weaponBack=0

	if carry=0
	{weaponBack=0
	sprite_index=spr_viva_jump1
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,4,-48,0,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-65,-40,90,weaponcolor)}

	}
	else
	{item.carryZ=-16-76
	sprite_index=spr_viva_moveobject ///Carry Walk
	}

	image_index+=0.1 if image_index>0 image_index=0
	}
	///Jump 2
	if anim=3 
	{powlock=0 
	weaponBack=0
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,4,-48,0,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-31,-66,90*image_xscale,weaponcolor)}

	if carry=0
	sprite_index=spr_viva_jump1
	else
	{item.carryZ=-16-76
	sprite_index=spr_viva_moveobject ///Carry Walk
	}
	image_index+=0.1 if image_index>1 image_index=1
	}

///Rolling Dodge (Unfinished, Unused)
	if anim=50000
	{
	if place_free(x,y+dodging*4) y+=dodging*4
	hit=0 MoveType=0
	weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor)
	image_index=AnimFrame image_speed=0 atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	///Attacks
	if anim=10 ///Attack Stand
	{
	selfatk.NoKnock=0 dizzyAtk=0
	///Instantly Change if Carrying Object
	if carry=1 {dropitem=1 event_user(2)} atkcol_set(31,0,46,1.35,1,21) weaponAttack=0 comboBreak=0 flashX=0 flashY=2 flashZ=32

	///Change Anim from weapons
	if weaponspawn=oHammer {if weaponLife=0 and weaponIsGun=1{event_user(5)} else {AnimFrame=0 anim=26 exit;}} 


	if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_viva3)}
	damage=0.02 targetHeight=2
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;}////<---Here to use special instantly
	if key_attack {if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 AnimFrame=0 anim=11 atk=1}}////<---Here to perform second attack
	selfatk.recovery=10
	hit=0 MoveType=0
	sprite_index=spr_viva_attack
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=11 ///Attack Stand 2
	{selfatk.NoKnock=0 dizzyAtk=0
	comboBreak=0
	flashX=4
	flashY=2
	flashZ=48

	atkcol_set(31,0,46,1.35,1,21)


	damage=0.02 targetHeight=2
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} ////<---Here to use special instantly
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 AnimFrame=0 anim=12 atk=1}} ////<---Here to perform third attack
	  hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_viva_attack2
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=12 ///Attack Stand 3
	{selfatk.NoKnock=0 dizzyAtk=0

	atkcol_set(31,0,26,1.35,1,21)

	comboBreak=0
	flashX=-4
	flashY=2
	flashZ=24

	damage=0.02 targetHeight=0
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} 
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 AnimFrame=0 anim=13 atk=1}}
	hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_viva_attack3
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=13 ///Attack Stand 4
	{ selfatk.NoKnock=0 dizzyAtk=0


	atkcol_set(31,0,44,1.35,1,29)

	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	damage=0.04 targetHeight=1
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} 
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 AnimFrame=0 anim=14 atk=1}}
	hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_viva_attack4
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=14 ///Attack Stand 5
	{selfatk.NoKnock=0 dizzyAtk=0
selfatk.spriteFX=spr_hitflash
	atkcol_set(31,0,44,1.35,1,46)

	if AnimFrame=0.2 {PlaySound(snd_swing) PlaySound(snd_viva4)}


	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32

	comboHit=0
	damage=0.1
	hit=0 MoveType=1
	selfatk.recovery=10
	sprite_index=spr_viva_attack5
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,2,2.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>4.5 {comboHit=0 hurt=0 atk=0 canmove=1 hit=0
	}
	}

	if anim=15 ///Attack Air - and Forwards Attack Ait
	{selfatk.NoKnock=0 dizzyAtk=0
	selfatk.spriteFX=spr_hitflash
	if AnimFrame=0 
	{
	if -key_left or key_right sentflying=2*image_xscale
	if key_down
	{sprite_index=spr_viva_attackair3 PlaySound(snd_viva3)}
	else
	{
	if -key_left or key_right zSpeed=-4	
	PlaySound(snd_swing) PlaySound(snd_viva5)
	}		
	}
	weaponAttack=0
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	////Change your attack colission box
	if sprite_index=spr_viva_attackair
	{ weaponBack=0 atkcol_set(25,0,-1,1.25,1,86)
	if image_index<1
	weaponanim(weaponspr,weaponIndex,2,-41,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-7,-56,90*image_xscale,weaponcolor)
	}
	if sprite_index=spr_viva_attackair2
	{ weaponBack=0 atkcol_set(20,0,17,2.15,1,26)
	if image_index<1
	weaponanim(weaponspr,weaponIndex,13,-46,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-12,-67,90*image_xscale,weaponcolor)
	}
	damage=0.04
	hit=1
	selfatk.recovery=90
	
	 if sprite_index!=spr_viva_attackair3
	 {
	if sentflying=0
	{sprite_index=spr_viva_attackair MoveType=2 atkAddZ=0 selfatk.height=64}
	else {sprite_index=spr_viva_attackair2 MoveType=1 atkAddZ=16 selfatk.height=32}
	image_index=AnimFrame image_speed=0
	if sprite_index=spr_viva_attackair
	 {if AnimFrame>1 and AnimFrame<=2 atk=1 else atk=0
	 if AnimFrame<2.5 AnimFrame+=0.5}
	 if sprite_index=spr_viva_attackair2
	 {if AnimFrame>1 atk=1 else atk=0
	 if AnimFrame<1.5 AnimFrame+=0.5}
	 }
 
 if sprite_index=spr_viva_attackair3
{AnimFrame=1 atk=1
atkcol_set(4,0,11,0.65,1,30)
weaponanim(weaponspr,weaponIndex,13,-69,90*image_xscale,weaponcolor)
damage=0.02
hit=1
selfatk.recovery=30
}if ground {hurt=1 canmove=0 AnimFrame=0 anim=25 wobbleX=1.1 wobbleY=0.9}

}

	if anim=16 ///Attack Dash
	{selfatk.NoKnock=0 dizzyAtk=0
	if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_viva6) MoveType=1
	ground=0 sentflying=4*image_xscale zSpeed=-4
	}

	weaponAttack=0

	comboBreak=0
	flashX=0
	flashY=2
	flashZ=48
	weaponBack=0
	damage=0.1
	hit=1
	selfatk.recovery=90
	MoveType=1

	atkcol_set(19,0,17,1.05,1,66)

	if image_index<1
	weaponanim(weaponspr,weaponIndex,2,-46,0,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-13,-41,135*image_xscale,weaponcolor)


	sprite_index=spr_viva_runatk
selfatk.spriteFX=spr_hitflash
	image_index=AnimFrame image_speed=0
	 if AnimFrame>1 atk=1 else atk=0
	 AnimFrame+=0.5 AnimFrame=clamp(AnimFrame,0,1.5)
	 if ground {wobbleX=1.1 wobbleY=0.9 if image_xscale=1 image_xscale=-1 else image_xscale=1 hurt=1 canmove=0 AnimFrame=0 anim=25}
	}



	if anim=17 ///Stand Special Attack
	{selfatk.NoKnock=1 dizzyAtk=0 selfatk.spriteFX=spr_hitflash
	if AnimFrame=0 {PlaySound(snd_viva5)
	   } 

	weaponAttack=0

	canSuper=1 weaponBack=2
	comboBreak=0
	flashY=0
	flashZ=48
	selfatk.x=x
	selfatk.image_xscale=3
	selfatk.image_yscale=2
	selfatk.height=128
	


	 targetHeight=3
	selfatk.recovery=60
	hit=0 
	if AnimFrame=0 {sprite_index=spr_viva_special1 damage=0.2 MoveType=3
		
		}
		if sprite_index=spr_viva_special1 {selfatk.HitForce=-4 selfatk.HitForceZ=-4 HitForce=-4 HitForceZ=-4}

		
	image_index+=0.1 image_speed=0
	 if AnimFrame=clamp(AnimFrame,0,0.9)
	 {image_index=AnimFrame AnimFrame+=0.5}
	 if AnimFrame=1 {flashFX(x,y-1,z+1,spr_lightingbolt,0,0.5,0,1,1,c_white,1) oControl.quakeFXTime=10 PlaySound(snd_thunder)  PlaySoundNoStack(snd_shocked2)}
	  if AnimFrame=clamp(AnimFrame,1,8.9)
	   {AnimFrame+=0.1 atk=1 if image_index>8.6 {image_index=1 sprite_index=spr_viva_special1b MoveType=2 damage=0.15} image_index+=0.4 }
	    else atk=0
	if AnimFrame>4.9
	AnimFrame+=0.5

	  if AnimFrame>9.5 {hurt=0 atk=0 canmove=1 hit=0
	  if powcheck=0 hp-=powhp else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}
	}

	///Special Attacks
	if anim=18 ///Special Side Attack
	{selfatk.NoKnock=1 dizzyAtk=0
	weaponBack=2
	canSuper=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48
	
	

	weaponAttack=0

	//atkAddX=-32 selfatk.image_xscale=3 selfatk.image_yscale=1.5

	 if AnimFrame=0 {PlaySound(snd_viva4) 
	}
	if AnimFrame=clamp(AnimFrame,1,1.9)

	selfatk.recovery=2
	hit=0 

	 if AnimFrame=clamp(AnimFrame,0,3.9)
	 or AnimFrame=clamp(AnimFrame,0+8,3.9+8)
	 or AnimFrame=clamp(AnimFrame,0+16,3.9+16)
	  or AnimFrame=clamp(AnimFrame,0+24,3.9+24)

	{  damage=0.02  sprite_index=spr_viva_specialpunch1 targetHeight=0 MoveType=0}

	 if AnimFrame=clamp(AnimFrame,0,3.9+4)
	 or AnimFrame=clamp(AnimFrame,0+8+4,3.9+8+4)
	 or AnimFrame=clamp(AnimFrame,0+16+4,3.9+16+4)
	  or AnimFrame=clamp(AnimFrame,0+24+4,3.9+24+4)
	{damage=0.02 sprite_index=spr_viva_specialpunch2 targetHeight=2 MoveType=0
		//if AnimFrame=clamp(AnimFrame,0+24+4,3.9+24+4) sprite_index=spr_viva_special2b
		}

	    if AnimFrame=clamp(AnimFrame,0+30,3.9+30)
	{damage=0.08 sprite_index=spr_viva_specialpunch3 targetHeight=2 MoveType=3 }
	
	image_index=AnimFrame image_speed=0 

	 if AnimFrame=clamp(AnimFrame,1,1.9)
	  or AnimFrame=clamp(AnimFrame,1+4,1.9+4)
	    or AnimFrame=clamp(AnimFrame,1+8,1.9+8)
	      or AnimFrame=clamp(AnimFrame,1+12,1.9+12)
	        or AnimFrame=clamp(AnimFrame,1+16,1.9+16)
	                or AnimFrame=clamp(AnimFrame,1+20,1.9+20)
	   or AnimFrame=clamp(AnimFrame,1+24,1.9+24)
	      or AnimFrame=clamp(AnimFrame,1+28,1.9+28)
	            or AnimFrame=clamp(AnimFrame,1+30,1.9+30)
	   atk=1 else atk=0
	   
if AnimFrame<=30
{//43,34
if AnimFrame=1 or AnimFrame=8 or AnimFrame=16  or AnimFrame=24
{flashFX(x+40*image_xscale,y+1,z-66,spr_elecex2,0,0.25,0,1,1,c_white,1) PlaySoundNoStack(snd_shocked3)}

if AnimFrame=1+4 or AnimFrame=8+4 or AnimFrame=16+4  or AnimFrame=24+4
{flashFX(x+43*image_xscale,y+1,z-34,spr_elecex2,0,0.25,0,1,1,c_white,1) PlaySoundNoStack(snd_shocked3)}
}
	   
	if AnimFrame=clamp(AnimFrame,0,31)
	AnimFrame+=0.5 else AnimFrame+=0.1
	if AnimFrame=30 {
			selfatk.HitForce=-4  selfatk.HitForceZ=-4  PlaySoundNoStack(snd_shocked3)
		oControl.quakeFX=10 flashFX(x+40*image_xscale,y+1,z-66+15,spr_elecex,0,0.25,0,1,1,c_white,1)  PlaySoundNoStack(snd_shocked2)
		selfatk.spriteFX=spr_elecflash selfatk.MoveType=3 
		}
	if sprite_index=spr_viva_specialpunch3 {selfatk.MoveType=3 selfatk.HitForce=-4 selfatk.HitForceZ=-4 HitForce=-4 HitForceZ=-4}

	if AnimFrame>32.5 {powlock=0 hurt=0 atk=0 canmove=1 hit=0
	if powcheck=0
	hp-=powhp else {pow=0 powlock=0}
	  if hp<=0.01 hp=0.01
	}
	}


	if anim=35 ///Grab Enemy
	{weaponBack=2 prevanim=36


	if AnimFrame>0.1
	{
	weaponAttack=0



	if (key_attack or key_jump) and !key_right and !-key_left
	{

	///instantly use Down Up Move
	if key_attack and (commandDown!=0 and commandUp!=0)
	{if !place_free(x+1*image_xscale,y)
	targetID.x=x targetID.z=z with targetID {throwcombo=2
	AnimFrame=0 HitType=0 ground=1 hurt=0 hit=0 Throw=0 hitBack=0
	HitForceReact=-8*image_xscale throw_quickrelease() recovery=0 recoveryThrow=0 shake=0 shaketime=0}
	targetID=-1 AnimFrame=0 anim=80 exit;} ///instantly use Down Up Move

	AnimFrame=0 anim=36 ///Pummel
	}

	if (image_xscale=1 and key_right and (key_attack or key_jump))
	or (image_xscale=-1 and -key_left and (key_attack or key_jump))
	{PlaySound(snd_viva4) AnimFrame=0 anim=37 throwcombo=2} ///Throw Forwards

	if (image_xscale=1 and -key_left and (key_attack or key_jump))
	or (image_xscale=-1 and key_right and (key_attack or key_jump))
	{PlaySound(snd_viva4) AnimFrame=0 anim=38 throwcombo=2} ///Throw Backwards

	////Instantly use Special
	if key_shield_pressed 
	if hp>=powhp
	//or pow>4  
	{prevanim=35
	with targetID {y=y z=z ground=1 canmove=0 hurt=1 AnimFrame=0 anim=4 Throw=0 recovery=2}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 AnimFrame=0 event_user(4) recovery=60 exit;
	}
	else {AnimFrame=0 
	if (key_right and image_xscale=1) anim=37
	if (-key_left and image_xscale=1) anim=38
	if (-key_left and image_xscale=-1) anim=37
	if (key_right and image_xscale=-1) anim=38
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_viva4)}

	////Instantly use Super
	if key_super if super>=17.5
	{with targetID {ground=1 canmove=0 hurt=1 AnimFrame=0 anim=4 Throw=0}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 event_user(8) exit;}
	else {AnimFrame=0 
	if (key_right and image_xscale=1) anim=37
	if (-key_left and image_xscale=1) anim=38
	if (-key_left and image_xscale=-1) anim=37
	if (key_right and image_xscale=-1) anim=38
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_viva4)}
	}

	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	if AnimFrame>0.1
	Throw=0 else Throw=1
	sprite_index=spr_viva_grab
	image_index=0 image_speed=0
	sentFlying=0 hspeed=0
	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.recoveryThrow=10
	canmove=0 targetID.hitSource=id
	targetID.ground=1 targetID.recovery=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	targetID.AnimFrame=0
	targetID.targetHeightHit=targetID.GrabFrame
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1
	atk=0 if AnimFrame>grabTime/2 targetID.shaketime=1
	AnimFrame+=0.02 if AnimFrame>grabTime {grabTime=2
	grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
	if !place_free(x+1*image_xscale,y)
	targetID.x=x

	with targetID
	{recovery=0 AnimFrame=0 
	hurt=0 Throw=0
	atk=0 canmove=1 
	AnimFrame=EgrabFrame anim=EgrabAnim if anim!=0 canmove=0 throwcombo=2 z+=EgrabzAdd
	sentflying=EgrabSentFlying*image_xscale zSpeed=EgrabZspeed if zSpeed!=0 ground=0 sprite_index=EgrabzSpr image_index=EgrabzIG
	}throwing=0 AnimFrame=0 anim=0 canmove=1 throwcombo=2
	targetID=-1
	}
	if targetID!=-1 ///Check if Target is dead
	{
	if targetID.dead=1
	{throwing=0 AnimFrame=0 anim=0 canmove=1 throwcombo=2
	character_release(0,-4,2*image_xscale,0,3,5)}}

	}

	if anim=36 ///Pummel
	{prevanim=36
	isThrow=1
	throwing=1
	comboBreak=0 recovery=10
	selfatk.recovery=10
	Throw=1
	sprite_index=spr_viva_grab
	image_index=AnimFrame image_speed=0
	sentFlying=0 hspeed=0

	targetID.hit=2 canmove=0 
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if AnimFrame<3 targetID.targetHeightHit=targetID.GrabFrame else targetID.targetHeightHit=2
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1 atkcol_set(27,0,43,1.45,1,28)
	 ///Anim End
	if AnimFrame=2.02
	{targetHeight=2 if throwcombo=1 MoveType=1 else MoveType=0 damage=0.06 atk=1
	super+=0.25*canSuper targetID.hp-=0.06
	if targetID.hp>=0
	PlayerScore+=targetID.pointshit else PlayerScore+=targetID.points
	with targetID {event_user(11) ///Hit Enemy
	shaketime=10 grabbed=1 PlaySound(snd_hit)


	hud_show() hpscan()
	} 




	}else atk=0
	with targetID {hud_show() hpscan()
	}

	AnimFrame+=0.2 if AnimFrame>4 {
	if throwcombo=0
	{
	anim=0 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25// targetID.hp-=0.05+extradamage

	if targetID.hp>=0
	PlayerScore+=targetID.pointshit else PlayerScore+=targetID.points

	if !place_free(x+1*image_xscale,y)
	targetID.x=x
	with targetID
	{
	hurt=1
	hit=1
	ground=0
	zSpeed=-6
	recovery=2 Throw=0
	recoveryThrow=10

	sentflying=4*-image_xscale

	///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	hud_show() hpscan()
	event_user(11)
	}throwing=0
	targetID=-1 throwcombo=2 anim=39
	}
	else
	{
	if targetID.hp<=0 ///Instantly let go of opponent if HP reduced to 0
	{
	if !place_free(x+1*image_xscale,y)
	targetID.x=x
	with targetID
	{
	hurt=1
	hit=1
	ground=0
	zSpeed=-6
	sentflying=4*-image_xscale

	///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	hud_show() hpscan()
	event_user(11)
	}throwing=0 
	targetID=-1 throwcombo=2 anim=39 
	}
	else {throwcombo-=1 AnimFrame=0 anim=35}
	}
	}
	}

	if anim=37 ///Throw Forwards
	{
	if AnimFrame=0
	prevanim=37
	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	Throw=1 recovery=10
	sprite_index=spr_viva_throw
	image_index=AnimFrame image_speed=0

	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.hitSource=id targetID.ThrowDamage=0
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1 
	///Drag Enemy
	if AnimFrame<0.75 {targetID.targetHeightHit=targetID.GrabFrame grabX=32*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale}
	else {targetID.targetHeightHit=targetID.GrabFrame grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale}
	
//	if AnimFrame=1 {targetID.targetHeightHit=2 grabX=32*image_xscale grabY=0 grabZ=-1 targetID.image_xscale=-image_xscale}
//	if AnimFrame=2 {targetID.targetHeightHit=0 grabX=32*image_xscale grabY=0 grabZ=-1 targetID.image_xscale=-image_xscale}

	 if AnimFrame=clamp(AnimFrame,2,2.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.1 else AnimFrame+=0.1 if AnimFrame>2.5 {
		atkcol_set(31,0,42,1.35,1,26)
		MoveType=1 damage=0.1
		
		anim=39 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25 targetID.hp-=0.1+extradamage
	super+=0.25*canSuper
	targetID.thrownAtk=1
	targetID.thrownAtkDmg=0 ///Damage when the thrown targets hits another enemy

	if targetID.hp<=0  PlayerScore+=targetID.points
	else PlayerScore+=targetID.pointshit

	if !place_free(x+1*image_xscale,y)
	targetID.x=x
	if !place_free(targetID.x+1*image_xscale,y)
	targetID.x=x
	if instance_exists(targetID) targetID.depth=depth+1
	with targetID
	{event_user(11) PlaySound(snd_hit)  ////This is for the enemy they grab, setting up the animations and effects
	recovery=90 Throw=0 hitBack=0
	hurt=1
	hit=1
	ground=0
	zSpeed=-4 
	sentflying=4*-image_xscale///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	hud_show() hpscan()
	event_user(12)
	}throwing=0
	targetID=-1
	}
	if targetID!=-1 ///Check if Target is dead
	{
	if targetID.dead=1
	{throwing=0 AnimFrame=0 anim=0 canmove=1 throwcombo=2
	character_release(0,-4,2*image_xscale,0,3,5)}}
	}

	if anim=38 ///Throw Backards
	{
	prevanim=38
	isThrow=1 recovery=10
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	Throw=1
	sprite_index=spr_viva_throwback
	image_speed=0

	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.ThrowDamage=0.1
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	 if AnimFrame=clamp(AnimFrame,0,0.5)
	{image_index=0 throwStrengthTime=90 throwStrengthMax=0
	targetID.targetHeightHit=16 grabX=16*image_xscale grabY=1 grabZ=0 targetID.image_xscale=-image_xscale}

	 if AnimFrame=clamp(AnimFrame,0.6,0.9)
	{image_index=1 throwStrengthTime=90 throwStrengthMax=0
	targetID.targetHeightHit=16 grabX=16*image_xscale grabY=-60 grabZ=0 targetID.image_xscale=-image_xscale}

	  if AnimFrame=clamp(AnimFrame,1,1.9)
	{  if image_index!=2 image_xscale=-image_xscale image_index=2
	targetID.targetHeightHit=18 grabX=0 grabY=1 grabZ=-72+shake targetID.image_xscale=image_xscale
	targetID.hitBack=1
	//Check if enemy is too heavy to be picked up and thrown
	////////////////
	enemy_heavythrow(1,1.5,3,2.1)	//////////
	}

	 if AnimFrame=clamp(AnimFrame,2,2.9)
	{if AnimFrame<2.5 image_index=3 else image_index=4
	targetID.AnimFrame=5 grabX=-4*image_xscale grabY=1 grabZ=-70}

	 if AnimFrame=clamp(AnimFrame,2,2.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.1 else AnimFrame+=0.1 if AnimFrame>2.5 {anim=39 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25 targetID.hp-=0.0+extradamage
	super+=0.25*canSuper
	targetID.thrownAtk=1
	targetID.thrownAtkDmg=0.1 ///Damage when the thrown targets hits another enemy
    if targetID.hp<=0  PlayerScore+=targetID.points
	else PlayerScore+=targetID.pointshit

	if !place_free(x+1*image_xscale,y)
	targetID.x=x
	if !place_free(targetID.x+1*image_xscale,y)
	targetID.x=x
	with targetID
	{
	PlaySound(snd_swing)
	event_user(11)
	recovery=90 Throw=0
	hurt=1
	hit=1
	ground=0
	zSpeed=-6
	sentflying=5*image_xscale///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3
	anim=5
	hud_show() hpscan()
	event_user(12)
	if !place_free(x,y+1) y-=1
	if !place_free(x,y+2) y-=2
	if !place_free(x,y-1) y+=1
	if !place_free(x,y-2) y+=2
	}throwing=0
	targetID=-1
	}
	if targetID!=-1 ///Check if Target is dead
	{
	if targetID.dead=1
	{throwing=0 AnimFrame=0 anim=0 canmove=1 throwcombo=2
	character_release(0,-4,2*image_xscale,0,3,5)}}
	}

	///Throw End
	if anim=39
	{atk=0
	comboBreak=0
	selfatk.recovery=30
	Throw=0
	if prevanim=36 ///Detect previous throwing animations when they throw opponent
	{image_index=AnimFrame image_speed=0}
	if prevanim=37///Throw Fowards
	{image_index=AnimFrame image_speed=0}
	if prevanim=38///Throw Back
	{if AnimFrame>3.5 image_index=0 else if image_index<4.5 image_index+=0.25 image_speed=0}
	throwing=0
	AnimFrame+=0.1 if AnimFrame>4.5 {hurt=0 canmove=1 Throw=0}
	}

	///Prepare To Jump / Land
	if anim=21 or anim=22
	{hit=0 MoveType=0 canmove=0  weaponBack=1
	if anim=22 if AnimFrame=0 {wobbleX=1.1 wobbleY=0.9}
	weaponanim(weaponspr,weaponIndex,9,-31,90*image_xscale,weaponcolor)

	if carry=0
	{sprite_index=spr_viva_hammeratk image_index=3}
	else
	{item.carryZ=-16-76 image_index=5
	sprite_index=spr_viva_moveobject ///Carry Walk
	}

	 image_speed=0 atk=0
	if AnimFrame=clamp(AnimFrame,0,1)
	AnimFrame+=0.05 else AnimFrame+=0.05 if AnimFrame>0.1 {
	if anim=21
	{hurt=0 atk=0 canmove=1 hit=0 event_user(7)}
	else canmove=1
	}
	}


	///Throw Item
	if anim=24
	{
	if AnimFrame=0 PlaySound(snd_swing)

	hit=0 MoveType=0 
	sprite_index=spr_viva_hammeratk
	image_index=AnimFrame+1.5 image_speed=0 atk=0
	if AnimFrame=clamp(AnimFrame,0,1)
	AnimFrame+=0.05 else AnimFrame+=0.05 if AnimFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	///Take Item
	if anim=25
	{hit=0 MoveType=0 zAddGround=0
	weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor)
	if carry=0
	{
	sprite_index=spr_viva_item
	}
	else
	{sprite_index=spr_viva_item
	item.carryZ=64-76
	}
	image_index=AnimFrame image_speed=0 atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0
	special_item_reaction_end();
	}
	}
	
	///Lift Heavy Object
	if anim=250
	{hit=0 MoveType=0 weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor) zAddGround=0
	if carry=1	{if AnimFrame<1 item.carryZ=64-76 else item.carryZ=-8-76}
	if AnimFrame<1 {sprite_index=spr_viva_item image_index=0} else {sprite_index=spr_viva_throwback image_index=1}
		image_speed=0 atk=0 AnimFrame+=0.1 if AnimFrame>2 {hurt=0 atk=0 canmove=1 hit=0}}
		
	if anim=260 ///Hitting Enemy On Ground
	{
	selfatk.NoKnock=0 dizzyAtk=0
	atkcol_set(11,0,-2,1.75,1,12)

	if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_viva3)}
	damage=0.02 targetHeight=2
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed event_user(4)////<---Here to use special instantly
	if key_attack {comboHit=0 AnimFrame=0 anim=11 atk=1}}////<---Here to perform second attack
	selfatk.recovery=10
	hit=0 MoveType=0
	sprite_index=spr_viva_attack
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}


	///Down Up Attack
	if anim=80
	{weaponBack=-1
weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
	if AnimFrame=0 PlaySound(snd_viva4)
	if AnimFrame=1.2 PlaySound(snd_swing)

	sprite_index=spr_viva_downup image_index=AnimFrame

	if AnimFrame<2 {sentflying=8*image_xscale wobbleX=lerp(wobbleX,1.1,0.1) wobbleY=lerp(wobbleY,1.1,0.1)}
	else sentflying=lerp(sentflying,0,0.1)
	
	if AnimFrame<4 afterimage_create(4,make_colour_rgb(57, 173, 255),current_pal,my_pal_sprite,0)


	atkcol_set(25,0,0,1.35,1,88)

	MoveType=1 damage=0.14

	if AnimFrame=clamp(AnimFrame,2,3) atk=1 else atk=0

	flashZ=32

	if AnimFrame=clamp(AnimFrame,2,4) {ground=0 z-=16 wobbleY=1.2 wobbleX=0.8}


	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.2)
	frame_set(3,3,0.2)
	frame_set(4,4,0.2)
	frame_set(5,5,0.0)

	if AnimFrame>4 and ground=1 {canmove=0 AnimFrame=0 anim=25 wobbleX=1.1 wobbleY=0.9}
	}

	///Side Attack
	if anim=81
	{if AnimFrame=0 PlaySound(snd_viva3) weaponBack=-1
weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
	if AnimFrame=2 { PlaySound(snd_viva6)}
	sprite_index=spr_viva_sideatk image_index=AnimFrame



	atkcol_set(19,0,47,2.15,1,18) MoveType=1 damage=0.14

	if AnimFrame=clamp(AnimFrame,3,4) {
		
		afterimage_create(4,make_colour_rgb(57, 173, 255),current_pal,my_pal_sprite,0)
		sentflying=16*image_xscale atk=1
		wobbleX=1.1 wobbleY=0.9
		} else {sentflying=lerp(sentflying,0,0.3) atk=0}

	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.5)
	frame_set(3,3,0.1)
	frame_set(4,4,0.05)
	frame_set(5,5,0.1)

	if AnimFrame>5.75 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
		///Taunt
	if anim=83
{weaponanim(weaponspr,weaponIndex,99990,99999,101*image_xscale,weaponcolor)
if AnimFrame=0 {specialanim=-1 if key_up {specialanim=1 specialtimes[0]+=1}
if key_down {specialanim=2 specialtimes[0]=0}
}	

if specialanim=-1 ///Heart Taunt
{
sprite_index=spr_viva_taunt //if key_right if AnimFrame<1 {AnimFrame=0 anim=211}
atk=0 
	frame_set(0,0,0.2)
	frame_set(1,1,0.1)
	frame_set(2,2,0.2) if AnimFrame=3 //-58
	{hrt=instance_create_depth(x+4*image_xscale,y,-1,oFlashFX)
		hrt.z=z-58 hrt.depth=depth-1 hrt.hspeed=0.8*image_xscale
		with hrt
		{alarm[0]=8888 sprite_index=spr_heart image_speed=0.0001
image_index=0.9995 zSpeed=2.04 zSpeedAdd=-0.1 isDepth=0
alarm[5]=60 changespr=sprite_index changeimgspd=0.5 changeimpindex=2}}
	frame_set(3,3,0.3)
	frame_set(4,4,0.3)
	frame_set(5,5,0.05)
	frame_set(6,0,0.1)
if AnimFrame>6.5 {canmove=1 atk=0}
}
if specialanim=1 ///Smoke
{
sprite_index=spr_viva_win2 //-4,-72
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.01)
	frame_set(3,1,0.1) if AnimFrame=4
			{
			if specialtimes[0]<3		
			{
			specialtimes[0]+=1			
			hrt=instance_create_depth(x-4*image_xscale,y,-1,oFlashFX)
		hrt.z=z-72 hrt.depth=depth-1 hrt.hspeed=0.16*image_xscale
		with hrt
		{alarm[0]=8888 sprite_index=spr_smokesmall image_speed=0.5
zSpeed=-.04 zSpeedAdd=-0.1 isDepth=0}
			}
else
{specialtimes[0]=0 specialcheck5=0
			specialanim=10 AnimFrame=1
			}
}
	frame_set(4,3,0.05)
	frame_set(5,0,0.1)
	if AnimFrame>5.5 {canmove=1 atk=0}
}
if specialanim=2 ///Flex Taunt
{specialtimes[0]+=0.1 if specialtimes[0]=1.9 specialtimes[0]=0
sprite_index=spr_viva_taunt3 //-4,-72
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2+specialtimes[0],0.01)
	frame_set(3,3,0.1)
	frame_set(4,1,0.1)
	frame_set(5,0,0.1)
	if AnimFrame>5.5 {canmove=1 atk=0}
}

if specialanim=10 ///Smoke cough
{frame_set(0,0,0.1) sprite_index=spr_viva_cough
frame_set(1,1,0.1) if AnimFrame=1.1
{
			hrt=instance_create_depth(x+11*image_xscale,y,-1,oFlashFX)
		hrt.z=z-59 hrt.depth=depth-1 hrt.hspeed=0.8*image_xscale
		with hrt
		{alarm[0]=8888 sprite_index=spr_smokesmall image_speed=0.5
zSpeed=-.04 zSpeedAdd=-0.1 isDepth=0}
}
frame_set(2,2,0.1)
frame_set(3,3,0.1)
frame_set(4,4,0.1) if AnimFrame=5 if specialcheck5!=2 {specialcheck5+=1 AnimFrame=1}
frame_set(5,4,0.1) if AnimFrame>5.5 {specialanim=1 AnimFrame=5}

}

}

	///Back Punch Attack
	if anim=84
{sprite_index=spr_viva_punchback weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_viva3)}
atkcol_set(-33,0,28,0.85,1,28) MoveType=1 damage=0.03
if AnimFrame=clamp(AnimFrame,2,3) {atk=1} else atk=0
	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.2)
	frame_set(3,1,0.2)
if AnimFrame>3.5 {canmove=1 atk=0}

}
	///Charge Attack
	if anim=85
	{weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
	HitForce=-4
	HitForceZ=-4


	damage=0.5

	sprite_index=spr_viva_charge

	atkcol_set(0,0,0,4,3,100) MoveType=3 damage=0.2

	frame_set(0,0,0.1)
	frame_set(1,1,0.2) if AnimFrame=2 
	{PlaySound(snd_viva6) PlaySound(snd_thunder) PlaySound(snd_hitground)  PlaySoundNoStack(snd_shocked2)
	oControl.quakeFXTime=8
	elec=instance_create_depth(x,y-1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z
	elec=instance_create_depth(x+48,y-1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z
	elec=instance_create_depth(x-48,y-1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z
	}
	frame_set(2,2,0.5) if AnimFrame=clamp(AnimFrame,2,2.5) atk=1 else atk=0
	frame_set(3,3,0.25)
	frame_set(4,4,0.25)
	frame_set(5,5,0.25)
	frame_set(6,4,0.25)
	frame_set(7,5,0.25)
	frame_set(8,4,0.25)
	frame_set(9,5,0.25)
	frame_set(6,4,0.25)
	frame_set(7,5,0.25)
	frame_set(8,4,0.25)
	frame_set(9,5,0.25)
	frame_set(10,4,0.25)
	frame_set(11,6,0.05)

	if AnimFrame>11.75 {hurt=0 atk=0 canmove=1 hit=0}
	}
	
/////Respawn
		if anim=255
{sprite_index=spr_viva_respawn
weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
frame_set(0,0,0.025)

if AnimFrame=0.20 or AnimFrame=0.40
or AnimFrame=0.60 or AnimFrame=0.80
{
oControl.quakeFXTime=10
PlaySoundNoStack(snd_thunder)
instance_create_depth(x+round(choose(-random_range(2,8),random_range(2,8))),y+round(choose(-random_range(1,2),random_range(1,2))),depth,oAnimFX)
}
if AnimFrame=1 { oControl.quakeFXTime=10
	PlaySoundNoStack(snd_thunder)
instance_create_depth(x,y,depth,oAnimFX)
	PlaySound(ReturnVoice) enemy_knoockdown() visible=1 dead=0 hurt=0 DeathCryOnce=0}
frame_set(1,0,0.25)
frame_set(2,1,0.25)
frame_set(3,2,0.25)
frame_set(4,3,0.1)
frame_set(5,4,0.05)
if AnimFrame>5.8
{hurt=0 atk=0 canmove=1 hit=0 disappearTime=90 canmove=1 recovery=180 showp1=1;
alarm[4]=2
if visible=0 visible=1 else visible=0
disappearTime-=1
	
}
}

	if anim=211 ///Special Win
	{sprite_index=spr_viva_win2 //-4,-72
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.01)
	frame_set(3,1,0.1) if AnimFrame=4
			{hrt=instance_create_depth(x-4*image_xscale,y,-1,oFlashFX)
		hrt.z=z-72 hrt.depth=depth-1 hrt.hspeed=0.8*image_xscale
		with hrt
		{alarm[0]=8888 sprite_index=spr_smokesmall image_speed=0.5
zSpeed=-.04 zSpeedAdd=-0.1 isDepth=0}}
	frame_set(4,3,0.1)
	

	
	}

	viva_weaponanim()

	animsetup_viva_super()


if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,21,-27,45*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,8,-55,29*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,18,-41,20*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,18,-54,-1*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-3,-45,93*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-9,-40,143*image_xscale,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,27,-2,41*image_xscale,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,4,-14,104*image_xscale,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,2,-1,8*image_xscale,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,-4,-1,19*image_xscale,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,10,-23,19*image_xscale,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,-4,-10,75*image_xscale,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,4,-17,171*image_xscale,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,4,-28,237*image_xscale,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-5,-9,370*image_xscale,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-22,-35,508*image_xscale,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-14,-53,485*image_xscale,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-6,-26,466*image_xscale,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,7,-1,421*image_xscale,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,7,-9,371*image_xscale,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,2,-9,371*image_xscale,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,6,0,383*image_xscale,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,0,-3,454*image_xscale,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,13,-7,423*image_xscale,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,6,-45,423*image_xscale,weaponcolor)
}
	///Stand
	///Move
	///Jump
	///Jump Forwards
	///Hit Stand
	///Hit Air
	///Ground-Get Up





}
