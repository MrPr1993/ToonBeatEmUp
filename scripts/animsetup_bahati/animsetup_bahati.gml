///Animation Setup - Bahati
////Here it indicates the character's abilities
function animsetup_bahati() {
	walkSpeed=2
	damage=0.08
	extradamage=damage*global.Cheat[3]*global.NoCheat
	defense=1.8
	extradefense=0

	DeathCry=snd_bahati2

	DamageVoice1=snd_bahati10
	DamageVoice2=snd_bahati9
	DamageVoice3=snd_bahati8

	ReturnVoice=snd_bahati6

	commandChargeColor=c_yellow

	weaponBack=1

	name="BAHATI"

	HitReactionScript=bahati_hitreaction

	height=88

	///Hit Sprite Animation Setup
	defMask=spr_shadow
	if ThrownSpr!=spr_bahati_hit
	{
	ThrownSpr=spr_bahati_hit
	BurnSpr=spr_bahati_burned
	FrozenSpr=spr_bahati_frozen
	ShockSpr=spr_bahati_elec
	FlatSpr=spr_bahati_flat
	DizzySpr=spr_bahati_dizzy
	meltSpr=spr_bahati_melt
	CarSpr=spr_bahati_car
	GrabbedSpr=spr_bahati_grabbed
	SuperSpr=spr_bahati_super
	PointSpr=spr_bahati_point
	PointDialouge1=snd_bahati20
	PointDialouge2=snd_bahati21
	ScreenHitSpr=spr_bahati_hit

	WildTakeSpr=spr_bahati_wildtake
	WildTakeSpr2=spr_bahati_wildtake2
	ScreenHitSpr=spr_bahati_hitscreen
	WinSpr=spr_bahati_win
	WinSnd=snd_bahati14
	cutSpr1=spr_bahati_cut1
	cutSpr2=spr_bahati_cut2
	cutSpr1B=spr_bahati_cutB1
cutSpr2B=spr_bahati_cutB2
	SpinningSpr=spr_bahati_spin
petSprLow=spr_bahati_petlow
throwItemSpr=spr_bahati_itemthrow
BDanceSpr=spr_bahati_bdance
WildTakeSpr3=spr_bahati_wildtake3
PlaneOutSpr=spr_bahati_planeout
HeartSpr=spr_bahati_heart
WildTakeSpr4=spr_bahati_wildtake4
qSandSpr=spr_bahati_quicksand
	inflateSpr=spr_bahati_inflate
		wrapSpr=spr_bahati_wrap
		pigSpr=spr_bahati_pig
		bubSpr=spr_bahati_bubble
	}
	if atk=0 {hitFXreset() selfatk.HitSound=snd_hit isThrow=0 throwing=0 canSuper=1 atkAddX=24 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.75*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}

	if anim=0///Stand
	{powlock=0 
	if weaponspawn=oHammer {weaponanim(weaponspr,weaponIndex,24,-58,90*image_xscale,weaponcolor)

	}

	atk=0
	if carry=0
	{
	if weaponspawn=-1 ////Default Stand
	{zAddGround=0
	if isIdle<60
	{//isIdle+=0.1
	if sprite_index!=spr_bahati_stand 
	{AnimFrame=0 sprite_index=spr_bahati_stand}
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
	var idlespr=spr_bahati_idle;
	if Cweather=1 idlespr=spr_bahati_idlecold;
		
	if sprite_index!=idlespr
	{AnimFrame=0 sprite_index=idlespr}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if AnimFrame>3-0.1 AnimFrame=1
	frame_set(2,2,0.1)
	}
	}
	if weaponspawn=oHammer ////Hammer Stand
	{zAddGround=0 image_index=0
	sprite_index=spr_bahati_standweapon
	weaponanim(weaponspr,weaponIndex,23,-44,101*image_xscale,weaponcolor)

	if weapontype=2 or weapontype=6 or weapontype=7////Machine Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_bahati_gunstand
	}
	
			if weapontype=4 ////Hand Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,17,-69,135*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_bahati_handgun
	}
	
	}

	}
	else
	{///Carry Stand
	zAddGround=68 item.carryZ=-13-76
		image_index=0 sprite_index=spr_bahati_carrystand}

	}

	if anim=1 ///Move
	{powlock=0 weaponBack=1
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,20,-48,101*image_xscale,weaponcolor)
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	weaponanim(weaponspr,weaponIndex,20,-49,101*image_xscale,weaponcolor)
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	weaponanim(weaponspr,weaponIndex,20,-50,101*image_xscale,weaponcolor)


	if dashing=0
	{
	if carry=0
	{


	if weaponspawn=-1 ////Default Move
	{zAddGround=0
	sprite_index=spr_bahati_move
	image_index+=0.02 if image_index>6-0.2  image_index=0
	}
	if weaponspawn=oHammer ////Hammer Move
	{zAddGround=0 
	sprite_index=spr_bahati_move
	}
	}
	else
	{
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	item.carryZ=-14-76
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	item.carryZ=-15-76
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	item.carryZ=-16-76
		
	sprite_index=spr_bahati_moveobject ///Carry Walk
	}

	image_index+=0.2 if image_index>6-0.2  image_index=0 atk=0}
	else
	{if sprite_index!=spr_bahati_run
		{sprite_index=spr_bahati_run
			dust_make(x,y,z,-2*image_xscale,0,0)
		}
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,13,-38,84*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,13,-34,84*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,13,-35,84*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,13,-38,84*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,13,-34,84*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,13,-35,84*image_xscale,weaponcolor)
	  ///Run
	image_index+=0.2 if image_index>6-0.2  image_index=0 atk=0}
	}

	///Jump 1
	if anim=2
	{


	powlock=0 weaponBack=0

	if carry=0
	{weaponBack=1
	sprite_index=spr_bahati_jump1
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,25,-36,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,25,-61,90*image_xscale,weaponcolor)}

	}
	else
	{item.carryZ=-16-76 image_index=0
	sprite_index=spr_bahati_moveobject ///Carry Walk
	}

	image_index+=0.1 if image_index>0 image_index=0
	}
	///Jump 2
	if anim=3 
	{powlock=0 
	weaponBack=1
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,25,-36,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,25,-61,90*image_xscale,weaponcolor)}

	if carry=0
	sprite_index=spr_bahati_jump1
	else
	{item.carryZ=-16-76 image_index=0
	sprite_index=spr_bahati_moveobject ///Carry Walk
	}
	image_index+=0.1 if image_index>1 image_index=1
	}


	///Attacks
	if anim=10 ///Attack Stand
	{
	selfatk.NoKnock=0 dizzyAtk=0
	///Instantly Change if Carrying Object
	if carry=1 {dropitem=1 event_user(2)} atkcol_set(27,0,47,1.85,1,21) weaponAttack=0 comboBreak=0 flashX=0 flashY=2 flashZ=32

	///Change Anim from weapons
	if weaponspawn=oHammer {if weaponLife=0 and weaponIsGun=1{event_user(5)} else {anim=26 exit;}} 


	if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_bahati5)}
	damage=0.04 targetHeight=2
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} ////<---Here to use special instantly
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 AnimFrame=0 anim=11 atk=1}}////<---Here to perform second attack
	selfatk.recovery=10
	hit=0 MoveType=0
	sprite_index=spr_bahati_attack
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>2.8 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=11 ///Attack Stand 2
	{selfatk.NoKnock=0 dizzyAtk=0
	comboBreak=0
	flashX=4
	flashY=2
	flashZ=48

	atkcol_set(27,0,47,1.85,1,21)


	damage=0.06 targetHeight=2
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} 
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		PlaySound(snd_swing) PlaySound(snd_bahati5) comboHit=0 AnimFrame=0 anim=12 atk=1}}
	  hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_bahati_attack2
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.125 else AnimFrame+=0.1 if AnimFrame>2.8 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=12 ///Attack Stand 3
	{selfatk.NoKnock=0 dizzyAtk=0


	comboBreak=0
	flashX=-4
	flashY=2
	flashZ=24

	atkcol_set(27,0,47,1.85,1,21)


	damage=0.04 targetHeight=0
	hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_bahati_attack3
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.125 else AnimFrame+=0.1 if AnimFrame>2.8 {hurt=0 atk=0 canmove=1 hit=0
	}
	if comboHit!=0 and AnimFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} 
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 AnimFrame=0 image_index=0 anim=13}}
	}
	if anim=13 ///Attack Stand 4
	{selfatk.NoKnock=0 dizzyAtk=0
selfatk.spriteFX=spr_hitflash
	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32

	atkcol_set(27,0,47,1.85,1,36)




	comboHit=0
	damage=0.12
	hit=0 MoveType=1
	selfatk.recovery=10
	sprite_index=spr_bahati_attack5
	image_index=AnimFrame image_speed=0
	if AnimFrame=clamp(AnimFrame,2,2.9) atk=1 else atk=0
	frame_set(0,0,0.1) if AnimFrame=1 PlaySound(snd_bahati11)
	frame_set(1,1,0.1) if AnimFrame=2 PlaySound(snd_swing)
	frame_set(2,2,0.5)
	frame_set(3,3,0.05)
	frame_set(4,0,0.1)


if AnimFrame=clamp(AnimFrame,2,3.25) sentflying=2*image_xscale else sentflying=0

	if AnimFrame>4.5 {comboHit=0 hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	if anim=14 ///Attack Stand 5 (Unused)
	{selfatk.NoKnock=0 dizzyAtk=0

	if AnimFrame=0 PlaySound(snd_swing)

	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32

	comboHit=0
	damage=0.08
	hit=0 MoveType=1
	selfatk.recovery=10
	sprite_index=spr_bahati_attack
	image_index=AnimFrame image_speed=0
	 if AnimFrame=clamp(AnimFrame,2,2.9) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>4.5 {comboHit=0 hurt=0 atk=0 canmove=1 hit=0
	}
	}

	if anim=15 ///Attack Air - and Forwards Attack Ait
	{selfatk.NoKnock=0 dizzyAtk=0 selfatk.spriteFX=spr_hitflash
	if AnimFrame=0 
	{
	PlaySound(snd_swing) 

	weaponAttack=0

	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	if key_down ///GroundPound
	{
	sentflying=4*image_xscale zSpeed=-8
	sprite_index=spr_bahati_attackair2 PlaySound(snd_bahati3)}
	else {
	sprite_index=spr_bahati_attackair PlaySound(snd_bahati5)
		if -key_left or key_right {sentflying=2*image_xscale zSpeed=-4	sprite_index=spr_bahati_attackair3 }
		
		
		}
	
	}
	


	////Change your attack colission box

selfatk.spriteFX=spr_hitflash


	if sprite_index=spr_bahati_attackair
	{ weaponBack=1  MoveType=1 damage=0.08 
	if image_index<1
	weaponanim(weaponspr,weaponIndex,25,-35,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,32,-47,90*image_xscale,weaponcolor)
	atkcol_set(9,0,-4,1.85,1,68)
	}
	
	if sprite_index=spr_bahati_attackair3
	{ weaponBack=1  MoveType=1 damage=0.08 
	if image_index<1
	weaponanim(weaponspr,weaponIndex,11,-57,123*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,5,-76,123*image_xscale,weaponcolor)
	atkcol_set(31,0,15,2.05,1,45)
	}

	if sprite_index=spr_bahati_attackair2
	{ weaponBack=1 MoveType=4 sentflying=lerp(sentflying,0,0.1) zSpeed+=0.1

		if !ground and zSpeed>=0.1 {wobbleX=lerp(wobbleX,0.8,0.1) wobbleY=lerp(wobbleY,1.2,0.1)}
		
	if image_index<5
	weaponanim(weaponspr,weaponIndex,25,-35,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,19,-49,90*image_xscale,weaponcolor)
	atkcol_set(-1,0,-4,1.85,1,14) damage=0.16

	if image_index>5 if !ground {zSpeed=8
		if image_index<6 afterimage_create(4,make_colour_rgb(239,222, 0),current_pal,my_pal_sprite,0)
		
		}
	}
	


	hit=1
	selfatk.recovery=90

	image_index=AnimFrame image_speed=0


	if !ground
	{
selfatk.spriteFX=spr_hitflash
	if sprite_index=spr_bahati_attackair2
	{if AnimFrame<5.5 AnimFrame+=0.5

	if AnimFrame>5 and AnimFrame<5.9 
	{
	atk=1 damage=0.14
	} else atk=0
	}


	if sprite_index=spr_bahati_attackair
	{
	if AnimFrame<1.5 AnimFrame+=0.5
	if AnimFrame>1 and AnimFrame<1.9 
	{
	atk=1
	} else atk=0
	}
	
	if sprite_index=spr_bahati_attackair3
	{
	if AnimFrame<1.5 AnimFrame+=0.5
	if AnimFrame>1 and AnimFrame<1.9 
	{
	atk=1
	} else atk=0
	}
	
	}
 
	 if ground 
	 {
	 if sprite_index=spr_bahati_attackair2
	if AnimFrame<5.9
	{AnimFrame=6 PlaySoundNoStack(snd_hitgroundheavy) oControl.quakeFXTime=5 wobbleX=1.25 wobbleY=0.7
	FX=instance_create_depth(x,y,depth,oAnimFX) FX.sprite_index=spr_hitground}
 
	 if sprite_index=spr_bahati_attackair2
	 {
	 frame_set(6,6,0.2)
	  frame_set(7,7,0.05)
	 if AnimFrame>7.5 {hurt=1 canmove=0 AnimFrame=0 anim=25}
	 }
	 else
	 {hurt=1 canmove=0 AnimFrame=0 anim=25 wobbleX=1.1 wobbleY=0.9}
	 }
	}

	if anim=16 ///Attack Dash
	{selfatk.NoKnock=0 dizzyAtk=0 selfatk.spriteFX=spr_hitflash
	if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_bahati5) MoveType=1
	ground=0 //sentflying=4*image_xscale zSpeed=-4
	}sprite_index=spr_bahati_slide

	atkcol_set(18,0,-2,1.75,1,44)

	weaponAttack=0

	comboBreak=0
	flashX=0
	flashY=2
	flashZ=48
	weaponBack=0
	damage=0.12
	hit=1
	selfatk.recovery=90
	MoveType=1
	
	frame_set(0,0,0.25) if AnimFrame<2 sentflying=4*image_xscale
	frame_set(1,1,0.05) if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0
	frame_set(2,2,0.1)
	
	weaponBack=1

	if image_index<1
	weaponanim(weaponspr,weaponIndex,6,-32,46*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,6,-28,69*image_xscale,weaponcolor)

	 if AnimFrame>2.9 {hurt=1 canmove=0 AnimFrame=0 anim=25}
	}



	if anim=17 ///Stand Special Attack
	{selfatk.NoKnock=1 dizzyAtk=0 selfatk.spriteFX=spr_hitflash
	if AnimFrame=0 {PlaySound(snd_hitground) PlaySound(snd_bahati12)
		
		flashFX(x,y+1,z-1,spr_bahati_special1b,0,0.5,0,image_xscale,image_yscale,image_blend,image_alpha)
	oControl.quakeFXTime=10

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
	damage=0.26 targetHeight=3
	selfatk.recovery=60
	hit=0 MoveType=2
	sprite_index=spr_bahati_special1
	image_index+=0.1 image_speed=0
	 if AnimFrame=clamp(AnimFrame,0,0.9)
	 {image_index=AnimFrame AnimFrame+=0.5}
	  if AnimFrame=clamp(AnimFrame,1,8.9)
	   {AnimFrame+=0.1 atk=1 if image_index>8 image_index=0 image_index+=0.4}
	    else atk=0
		
			if AnimFrame=1.2
	{
							iceFX=0;
								
		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-16
if iceFX=1 or iceFX=5 part.z=z-48
if iceFX=2 or iceFX=6 part.z=z-64
if iceFX=3 or iceFX=7 part.z=z-80
part.sprite_index=spr_bahati_rock3
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(16,24)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
	iceFX+=1;
} iceFX=0;
	}
		
	if AnimFrame>4.9
	AnimFrame+=0.5
	
	


	  if AnimFrame>9.5 {hurt=0 atk=0 canmove=1 hit=0
	  if powcheck=0 hp-=powhp-powhp*global.Cheat[9]*global.NoCheat else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}
	}

	///Special Attacks
	if anim=18 ///Special Side Attack
	{selfatk.NoKnock=1 dizzyAtk=0
	weaponBack=2 selfatk.spriteFX=spr_hitflash
	canSuper=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	weaponAttack=0

	//atkAddX=-32 selfatk.image_xscale=3 selfatk.image_yscale=1.5

	 if AnimFrame=0 PlaySound(snd_bahati4)
if AnimFrame=0
	{
	flashFX(x,y+1,z-1,spr_bahati_special1b,0,0.5,0,image_xscale,image_yscale,image_blend,image_alpha)

	}
	selfatk.recovery=4
	hit=0 

	frame_set(0,0,0.2) if AnimFrame=1
	{
		oControl.quakeFXTime=10 PlaySound(snd_hitground)
		
								iceFX=0;
								
		repeat(6)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-16
if iceFX=1 or iceFX=5 part.z=z-48
if iceFX=2 or iceFX=6 part.z=z-64
if iceFX=3 or iceFX=7 part.z=z-80
part.sprite_index=spr_bahati_rock3
if iceFX <4
part.hspeed=choose(1,2,1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(16,24)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
	iceFX+=1;
} iceFX=0;	
	
	}
	frame_set(1,1,0.05)
	frame_set(2,2,0.2)
	frame_set(3,3,0.2)
	frame_set(4,4,0.2)
	frame_set(5,5,0.2)

	if AnimFrame>1 sentflying=4*image_xscale
	if AnimFrame=clamp(AnimFrame,1,2) atk=1 else atk=0

	damage=0.16  sprite_index=spr_bahati_special2 targetHeight=0 MoveType=1

	   //atk=1
	if AnimFrame>5.8 {powlock=0 hurt=0 atk=0 canmove=0 hit=0 AnimFrame=0 anim=25
	if powcheck=0
	hp-=powhp-powhp*global.Cheat[9]*global.NoCheat else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}
	}


	if anim=35 ///Grab Enemy
	{weaponBack=2
	throwStrengthTime=90 throwStrengthMax=0

	if AnimFrame>0.1
	{
	grabLockX=x

	weaponAttack=0

	if ground ///Ground Throw
	{
	if (key_attack) and !key_right and !-key_left
	{

	///instantly use Down Up Move
	if key_attack and (commandDown!=0 and commandUp!=0)
	{if !place_free(x+1*image_xscale,y)
	targetID.x=x
	if !place_free(targetID.x+1*image_xscale,y)
	targetID.x=x
	targetID.z=z with targetID {throwcombo=2
	AnimFrame=0 HitType=0 ground=1 hurt=0 hit=0 Throw=0 hitBack=0
	HitForceReact=0*image_xscale throw_quickrelease() recovery=0 recoveryThrow=0 shake=0 shaketime=0}
	targetID=-1 AnimFrame=0 anim=80 exit;} ///instantly use Down Up Move

	AnimFrame=0 anim=36 ///Pummel
	}

	if (image_xscale=1 and key_right and (key_attack))
	or (image_xscale=-1 and -key_left and (key_attack))
	{AnimFrame=0 image_xscale=-image_xscale anim=38 throwcombo=2} ///Throw Forwards

	if (image_xscale=1 and -key_left and (key_attack))
	or (image_xscale=-1 and key_right and (key_attack))
	{PlaySound(snd_bahati3) AnimFrame=0 anim=38 throwcombo=2} ///Throw Backwards

	////Instantly use Special
	if key_shield_pressed 
	if hp>=powhp
	//or pow>4
	{prevanim=35
	with targetID {y=y z=z ground=1 canmove=0 hurt=1 AnimFrame=0 anim=4 Throw=0 recovery=2}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 AnimFrame=0 event_user(4) recovery=60 exit;
	}
	else {AnimFrame=0 
	if (key_right and image_xscale=1) {image_xscale=-1 anim=38}
	if (-key_left and image_xscale=1) {anim=38}
	if (-key_left and image_xscale=-1) {image_xscale=1 anim=38}
	if (key_right and image_xscale=-1) {anim=38}
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_bahati3)}

	////Instantly use Super
	if key_super if super>=17.5
	{with targetID {ground=1 canmove=0 hurt=1 AnimFrame=0 anim=4 Throw=0}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 event_user(8) exit;}
	else {AnimFrame=0 
	if (key_right and image_xscale=1) {image_xscale=-1 anim=38}
	if (-key_left and image_xscale=1) anim=38
	if (-key_left and image_xscale=-1) {image_xscale=1 anim=38}
	if (key_right and image_xscale=-1) anim=38
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_bahati3)}
	}
	else
	{
	if (key_attack) ///Air Throw
	{
	{PlaySound(snd_bahati3) AnimFrame=0 anim=37 throwcombo=2}
	}

	}

	///Move Around
	if -key_left if place_free(x-2,y) x-=1
	if key_right if place_free(x+2,y) x+=1
	if key_up if place_free(x,y-2) y-=1
	if key_down if place_free(x,y+2) y+=1

	} else image_index=0



	if ground
	{
	if (!-key_left and !key_right and !key_up and !key_down)
	{
	sprite_index=spr_bahati_grab grabZ=0
	image_index=0 image_speed=0
	}
	else
	{
	sprite_index=spr_bahati_grabmove 

	if image_index=clamp(image_index,0,1-0.2) or image_index=clamp(image_index,3,4-0.2)
	grabZ=0
	if image_index=clamp(image_index,1,2-0.2) or image_index=clamp(image_index,4,5-0.2)
	grabZ=-1
	if image_index=clamp(image_index,2,3-0.2) or image_index=clamp(image_index,5,6-0.2)
	grabZ=-2

	if image_index>6-0.1  image_index=0
	if image_index<0 image_index=6-.1
	if image_index>5.8 and ((image_xscale=1 and key_right) or (image_xscale=-1 and -key_left))
image_index=0

	if image_xscale=1
	{
	if -key_left image_index-=0.1 else
	image_index+=0.1
	}
	else
	{
	if -key_left image_index+=0.1 else
	image_index-=0.1
	}
	}
	}
	else
	{
	sprite_index=spr_bahati_grabmove grabZ=0
	image_index=1 image_speed=0
	}

	if key_jump if ground ///Jump with Enemy
	{AnimFrameSave=AnimFrame AnimFrame=0 anim=82}
	///{ground=0 zSpeed=-8}


	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	if AnimFrame>0.1
	Throw=0 else Throw=1



	sentFlying=0 hspeed=0
	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.recoveryThrow=10
	canmove=0 targetID.hitSource=id

	targetID.ground=ground

	targetID.recovery=0
	targetID.atk=0
	targetID.hurt=1
	targetID.AnimFrame=0
	targetID.targetHeightHit=targetID.GrabFrame
	grabX=24*image_xscale
	grabY=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1
	atk=0 if AnimFrame>(grabTime*2)/2 targetID.shaketime=1
	AnimFrame+=0.02 if AnimFrame>grabTime*2 {grabTime=2
	grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
	if !place_free(x+1*image_xscale,y)
	targetID.x=x
if !place_free(targetID.x+1*image_xscale,y)
	targetID.x=x
	with targetID
	{recovery=0 AnimFrame=0 
	hurt=0 Throw=0 if !ground {hurt=1 anim=4}
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
	selfatk.image_xscale=0
	comboBreak=0 recovery=10
	selfatk.recovery=0
	Throw=1
	sprite_index=spr_bahati_grab
	image_index=AnimFrame image_speed=0
	sentFlying=0 hspeed=0


	targetID.hit=2 canmove=0 
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if AnimFrame<2 targetID.targetHeightHit=targetID.GrabFrame else targetID.targetHeightHit=15
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1
	atk=0 ///Anim End
	if AnimFrame=1.02
	{
	super+=0.25*canSuper targetID.hp-=0.06
	if targetID.hp>=0
	PlayerScore+=targetID.pointshit else PlayerScore+=targetID.points
	with targetID {event_user(11) ///Hit Enemy
	shaketime=10 grabbed=1 PlaySound(snd_hit)

	hud_show() hpscan()
	}




	}
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
if !place_free(targetID.x+1*image_xscale,y)
	targetID.x=x
	with targetID
	{
	hurt=1
	hit=1
	ground=0
	zSpeed=-6 hitBack=0
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
if !place_free(targetID.x+1*image_xscale,y)
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

	if anim=37 ///Throw Forwards / Air Throw / Piledriver
	{grabLockX=x
	if AnimFrame=0

	prevanim=37
	isThrow=1
	throwing=1
	selfatk.image_xscale=2
	comboBreak=0
	selfatk.recovery=90
	Throw=1 recovery=10
	sprite_index=spr_bahati_throwair
	image_speed=0
if instance_exists(targetID) targetID.depth=depth+1
	if AnimFrame<0.1
	{
	specialcheck1=(key_right - -key_left)
	}
	if place_free(x+specialcheck1*1,y) x+=specialcheck1*1

	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.hitSource=id targetID.ThrowDamage=0
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	
	if AnimFrame>1 
{atkcol_set(-2,0,0,3.15,1,64) damage=0.5 MoveType=1 atk=1} else atk=0

	///Drag Enemy
	 if AnimFrame=clamp(AnimFrame,0,0.9)
	{image_index=0 atk=0
	grabX=26*image_xscale grabY=0 grabZ=-68+targetID.height/2 targetID.image_xscale=-image_xscale 
	targetID.targetHeightHit=3
	}

	 if AnimFrame=clamp(AnimFrame,1,1.9)
	{image_index=1 atk=0
	grabX=26*image_xscale grabY=0 grabZ=-32+targetID.height/2 targetID.image_xscale=-image_xscale 
	targetID.targetHeightHit=4
	}
	 if AnimFrame=clamp(AnimFrame,2,2.9)
	{if image_index!=2 image_index=2 atk=1
	grabX=38*image_xscale grabY=0 grabZ=-58+targetID.height/2 targetID.image_xscale=image_xscale targetID.thrownAtk=1
	targetID.targetHeightHit=5
	}
	 if AnimFrame=clamp(AnimFrame,3,3.9) 
	{if image_index!=3 {

	hground=instance_create_depth(targetID.x+targetID.headPosX[6]*targetID.image_xscale,y,depth,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z


	oControl.quakeFXTime=10 PlaySoundNoStack(targetID.HitGround) PlaySoundNoStack(snd_hit) image_index=3 targetID.hp-=0.125 with targetID event_user(11)}
	targetID.targetHeightHit=6 grabX=32*image_xscale grabY=0 grabZ=-1 targetID.image_xscale=image_xscale
	       ///Hit Enemy
	}

	if AnimFrame=clamp(AnimFrame,0,2.8)
	AnimFrame+=0.2 else 
	if ground AnimFrame+=0.2 if AnimFrame>4.5 and ground {anim=39 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25
	super+=0.25*canSuper
	targetID.thrownAtk=1
	targetID.thrownAtkDmg=0.1 ///Damage when the thrown targets hits another enemy

	if targetID.hp<=0  PlayerScore+=targetID.points
	else PlayerScore+=targetID.pointshit

	if !place_free(x+1,y)
	targetID.x=x

	if targetID!=-1
	with targetID
	{
	recovery=90 Throw=0
	hurt=1 hitBack=0
	hit=1
	ground=0
	zSpeed=-4
	sentflying=4*image_xscale///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=7
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

	if anim=38 ///Throw Backwards
	{grabLockX=x

	prevanim=38
	isThrow=1 recovery=10
	throwing=1
	selfatk.image_xscale=2
	selfatk.image_yscale=2
	atkAddX=grabX*image_xscale atkAddY=0 atkAddZ=0
	selfatk.height=64
	comboBreak=0
	selfatk.recovery=0
	Throw=1
	sprite_index=spr_bahati_throwback
	image_speed=0
	if instance_exists(targetID) targetID.depth=depth+1
if targetID!=-1
	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.ThrowDamage=0
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1 
	///Drag Enemy
	 if AnimFrame=clamp(AnimFrame,0,0.9)
	{image_index=0 atk=0
	grabX=16*image_xscale grabY=0 grabZ=-72+targetID.height/2 targetID.image_xscale=-image_xscale 
	targetID.targetHeightHit=16
	}
	 if AnimFrame=clamp(AnimFrame,1,1.9)
	{if image_index!=1 image_index=1  atk=0
	 grabX=-31*image_xscale grabY=0 grabZ=-77 targetID.image_xscale=-image_xscale 
	targetID.targetHeightHit=18
	}
	 if AnimFrame=clamp(AnimFrame,1.91,2.9) 
	{if image_index!=2 {

	hground=instance_create_depth(targetID.x+targetID.headPosX[6]*targetID.image_xscale,y,depth,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z

	oControl.quakeFXTime=10 PlaySoundNoStack(targetID.HitGround) PlaySoundNoStack(snd_hit) image_index=2 targetID.hp-=0.1
	targetID.AnimFrame=0 grabX=-63*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.targetHeightHit=6 with targetID event_user(11)
	}
	
	atkcol_set(-67,0,0,1.95,1,64) MoveType=1 damage=0.1

	if AnimFrame<2.5 atk=1 else atk=0 targetID.thrownAtk=1

	  }

	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.1 else AnimFrame+=0.1 if AnimFrame>3.5 {anim=39 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25 targetID.hp-=0.0+extradamage
	super+=0.25*canSuper
	targetID.thrownAtk=1
	targetID.thrownAtkDmg=0.1 ///Damage when the thrown targets hits another enemy

	if targetID.hp<=0  PlayerScore+=targetID.points
	else PlayerScore+=targetID.pointshit

	if !place_free(x-1*image_xscale,y)
	targetID.x=x
	if !place_free(targetID.x-1*image_xscale,y)
	targetID.x=x

	with targetID
	{
	recovery=90 Throw=0
	hurt=1
	hit=1 hitBack=1
	ground=0 
	zSpeed=-4
	z+=2
	image_xscale=image_xscale
	sentflying=5*image_xscale///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	AnimFrame=3 image_yscale=1
	anim=5
	hud_show() hpscan()
	//event_user(12)
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
	{
	comboBreak=0
	selfatk.recovery=30
	Throw=0
	if prevanim=36 ///Detect previous throwing animations when they throw opponent
	{image_index=AnimFrame image_speed=0}
	if prevanim=37///Throw Fowards
	{image_index=AnimFrame image_speed=0}
	if prevanim=38///Throw Back
	{if AnimFrame>3.5 image_index=0 image_speed=0}
	throwing=0
	AnimFrame+=0.1 if AnimFrame>4.5 {hurt=0 canmove=1 Throw=0}
	}

	///Prepare To Jump
	if anim=21 or anim=22
	{
			if anim=22 if AnimFrame=0 {wobbleX=1.1 wobbleY=0.9}
	hit=0 MoveType=0 canmove=0  weaponBack=1
	weaponanim(weaponspr,weaponIndex,9,-31,90*image_xscale,weaponcolor)

	if carry=0
	{sprite_index=spr_bahati_attack2 image_index=0}
	else
	{item.carryZ=-16-76 image_index=4
	sprite_index=spr_bahati_moveobject ///Carry Jump
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
	sprite_index=spr_bahati_hammeratk
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
	sprite_index=spr_bahati_item
	}
	else
	{sprite_index=spr_bahati_item
	item.carryZ=64-76
	}


	image_index=AnimFrame image_speed=0 atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	///Lift Heavy Object
	if anim=250
	{hit=0 MoveType=0 weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor) zAddGround=0
	if carry=1	{if AnimFrame<1 item.carryZ=64-76 else item.carryZ=8-76}
	if AnimFrame<1 {sprite_index=spr_bahati_item image_index=0} else {sprite_index=spr_bahati_attack3 image_index=0}
		image_speed=0 atk=0 AnimFrame+=0.1 if AnimFrame>2 {hurt=0 atk=0 canmove=1 hit=0}}

	///Down Up Attack
	if anim=80
	{weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
	if AnimFrame=0 PlaySound(snd_bahati3)
	AnimFrame+=0.25 if AnimFrame=1 zSpeed=-12
	
	if AnimFrame<1 {image_index=0 sprite_index=spr_bahati_attack2 image_index=0}
	else {sentflying=2*image_xscale sprite_index=spr_bahati_attackair2 image_index+=0.5 
	if image_index>4 {AnimFrame=4 anim=15}
	}
	}

	///Side Attack
	if anim=81
	{if AnimFrame=0 PlaySound(snd_bahati5) weaponBack=-1


	sprite_index=spr_bahati_sideatk image_index=AnimFrame

	atkcol_set(15,0,14,1.75,1,64) MoveType=1 damage=0.18

	if AnimFrame=clamp(AnimFrame,0.8,2.2) {afterimage_create(4,make_colour_rgb(239,222, 0),current_pal,my_pal_sprite,0) sentflying=12*image_xscale atk=1} else {sentflying=lerp(sentflying,0,0.3) atk=0}

	frame_set(0,0,0.2) if AnimFrame=1 {zSpeed=-4}
	frame_set(1,1,0.5)
	frame_set(2,1,0.5)
	frame_set(3,1,0.5)
	frame_set(4,1,0.0)

	if AnimFrame>2 and ground=1 {wobbleX=1.25 wobbleY=0.7 canmove=0 AnimFrame=0 anim=25}
	}

	///Grab Jump
	if anim=82
	{
	prevanim=36
	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0 recovery=10
	selfatk.recovery=0
	Throw=1
	sprite_index=spr_bahati_grab
	image_index=3 image_speed=0
	sentFlying=0 hspeed=0


	targetID.hit=2 canmove=0 
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if AnimFrame<2 targetID.targetHeightHit=targetID.GrabFrame else targetID.targetHeightHit=1
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1
	atk=0 ///Anim End
	with targetID {hud_show() hpscan()
	}

	AnimFrame+=0.2 if AnimFrame>1 {PlaySound(snd_jump) PlaySound(snd_bahati5)
	{AnimFrame=AnimFrameSave anim=35 ground=0 zSpeed=-8
	}
	}
	}
	
			///Taunt
	if anim=83
{weaponanim(weaponspr,weaponIndex,99990,99999,101*image_xscale,weaponcolor)
if AnimFrame=0 {specialanim=-1 if key_up {specialanim=1 specialtimes[0]=0}
if key_down {specialanim=2 specialtimes[0]=0}
}	

if specialanim=-1
{
sprite_index=spr_bahati_taunt
atk=0 
	frame_set(0,0,0.2)
	frame_set(1,1,0.1)
	frame_set(2,2,0.2) if AnimFrame=3 //-58
	{hrt=instance_create_depth(x+10*image_xscale,y,-1,oFlashFX)
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
if specialanim=1 ///Flex Taunt
{specialtimes[0]+=0.1 if specialtimes[0]=1.9 specialtimes[0]=0
sprite_index=spr_bahati_win2 //-4,-72
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2+specialtimes[0],0.01)
	frame_set(3,3,0.1)
	frame_set(4,1,0.05)
	frame_set(5,0,0.1)
	if AnimFrame>5.5 {canmove=1 atk=0}
}
if specialanim=2 ///Flex Taunt
{specialtimes[0]+=0.1 if specialtimes[0]=3.9 specialtimes[0]=0
var setframe=1;
if specialtimes[0]>1 {setframe=2 if specialtimes[0]>2 {setframe=1
	if specialtimes[0]>3 {setframe=3}
	}

}	
sprite_index=spr_bahati_taunt3 //-4,-72
	frame_set(0,0,0.1)
	frame_set(1,setframe,0.1)
	frame_set(2,setframe,0.01)
	frame_set(3,setframe,0.1)
	frame_set(4,setframe,0.1)
	frame_set(5,0,0.1)
	if AnimFrame>5.5 {canmove=1 atk=0}
}


}
	
		///Back Punch Attack
	if anim=84
{sprite_index=spr_bahati_punchback
	weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
if AnimFrame=0 {PlaySound(snd_swing) PlaySound(snd_bahati4)}
atkcol_set(-42,0,23,0.85,1,37) MoveType=1 damage=0.03
if AnimFrame=clamp(AnimFrame,2,3) {atk=1} else atk=0
	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.2)
	frame_set(3,1,0.2)
if AnimFrame>3.5 {canmove=1 atk=0}

}
	
		///Charge Attack
	if anim=85
	{
weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
	sprite_index=spr_bahati_charge

	atkcol_set(0,0,0,4.45,4.45,16) MoveType=1 damage=0.24
	
	frame_set(0,0,0.1)
	frame_set(1,1,0.05) if AnimFrame=2 
	{PlaySound(snd_bahati12)  PlaySound(snd_hitgroundheavy)
	oControl.quakeFXTime=4
	rockFX=0;
	
	quake=instance_create_depth(x,y,depth,oAnimFX) quake.isDepth=0 quake.image_speed=0.5
	quake.depth=99999 quake.sprite_index=spr_bahati_quake
	
	repeat(8)
	{
	rock=instance_create_depth(x,y+1,depth,oDisappearPart) rock.z=z rock.spdZ=choose(-6,6.5,7,5.5) rock.image_xscale=image_xscale rock.sprite_index=spr_bahati_rock2 rock.image_speed=0 rock.hspeed=2 rock.image_index=random(2)
	if rockFX=0 {rock.hspeed=choose(-4,-4.5,-5)} //Left
	if rockFX=1 {rock.hspeed=choose(4,4.5,5)} ///Right
	if rockFX=2 {rock.vspeed=choose(-2,-2.5,-3) rock.hspeed=0} ///Up
	if rockFX=3 {rock.vspeed=choose(2,2.5,3) rock.hspeed=0} //Down
	if rockFX=4 {rock.hspeed=choose(-4,-4.5,-5) rock.vspeed=choose(-2,-2.5,-3)} //<I
	if rockFX=5 {rock.hspeed=choose(4,4.5,5) rock.vspeed=choose(2,2.5,3)} //>U
	if rockFX=6 {rock.hspeed=choose(4,4.5,5) rock.vspeed=choose(-2,-2.5,-3)} //>I
	if rockFX=7 {rock.hspeed=choose(-4,-4.5,-5) rock.vspeed=choose(2,2.5,3)} //<U
		
	rockFX+=1;
	} rockFX=0;
	}
	frame_set(2,2,0.5) if AnimFrame=clamp(AnimFrame,2,2.5) atk=1 else atk=0
	//frame_set(3,3,0.25)
if AnimFrame>2.5 {image_index=3 AnimFrame+=0.25}

	if AnimFrame>11.75 {hurt=0 atk=0 canmove=1 hit=0}
	}

/////Respawn
		if anim=255
{sprite_index=spr_bahati_respawn
weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
frame_set(0,0,0.025)

if AnimFrame=0.25
{
 oControl.quakeFXTime=10
	PlaySoundNoStack(snd_explosion)
	
st=instance_create_depth(x,y,depth,oAnimFX) st.sprite_index=spr_bahati_respawn
st.image_speed=0.5
}
if AnimFrame=0.6 st.image_speed=0


frame_set(1,0,0.25)
if AnimFrame=1.5 st.image_index=4

if AnimFrame=2 {with st instance_destroy()
 oControl.quakeFXTime=10
	PlaySoundNoStack(snd_explosion)
					iceFX=0;
								
		repeat(8)
{
part=instance_create_depth(x,y+1,depth,oDisappearPart)
if iceFX=0 or iceFX=1 or iceFX=2 or iceFX=3 part.x=x
if iceFX=4 or iceFX=5 or iceFX=6 or iceFX=7 part.x=x
if iceFX=0 or iceFX=4 part.z=z-16
if iceFX=1 or iceFX=5 part.z=z-48
if iceFX=2 or iceFX=6 part.z=z-64
if iceFX=3 or iceFX=7 part.z=z-80
part.sprite_index=spr_bahati_rock3
if iceFX <4
part.hspeed=choose(-1,-2,-1.5)
else
part.hspeed=choose(1,2,1.5)
part.image_index=choose(0,1,2) part.image_speed=0
part.spdZ=-4 part.image_blend=image_blend
part.disappeartime=random_range(16,24)
part.my_pal_sprite=my_pal_sprite
part.current_pal=current_pal
	iceFX+=1;
} iceFX=0; enemy_knoockdown() dead=0 hurt=0 DeathCryOnce=0
	PlaySound(ReturnVoice) visible=1
	}
frame_set(2,5,0.25) 
frame_set(3,5,0.25)
frame_set(4,6,0.1)
frame_set(5,6,0.05)
if AnimFrame>5.8
{hurt=0 atk=0 canmove=1 hit=0 disappearTime=90 canmove=1 recovery=180 showp1=1;
alarm[4]=2
if visible=0 visible=1 else visible=0
disappearTime-=1	
}
}

	bahati_weaponanim()

	animsetup_bahati_super()

if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,14,-42,0*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,14,-38,-16*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,28,-42,41*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,28,-60,-3*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,9,-38,97*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-11,-48,153*image_xscale,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,41,-7,81*image_xscale,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,4,-30,95*image_xscale,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,11,-5,13*image_xscale,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,11,-30,53*image_xscale,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,25,-28,28*image_xscale,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,3,-28,85*image_xscale,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,8,-26,157*image_xscale,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,8,-26,221*image_xscale,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,2,-36,-28*image_xscale,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-32,-60,117*image_xscale,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-35,-68,97*image_xscale,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-11,-33,25*image_xscale,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-4,-23,-4*image_xscale,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,1,-3,54*image_xscale,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,1,-7,7*image_xscale,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,9,-6,7*image_xscale,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,15,-14,1*image_xscale,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,18,-22,50*image_xscale,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,21,-36,40*image_xscale,weaponcolor)
}	

	///Stand
	///Move
	///Jump
	///Jump Forwards
	///Hit Stand
	///Hit Air
	///Ground-Get Up





}
