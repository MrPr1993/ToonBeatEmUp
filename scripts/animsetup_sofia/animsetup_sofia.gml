///Animation Setup - Sofia
////Here it indicates the character's abilities
function animsetup_sofia() {
	walkSpeed=2
	damage=0.02
	extradamage=0
	defense=1.2
	extradefense=0

	DeathCry=snd_sofia2
	ReturnVoice=snd_sofia7

	DamageVoice1=snd_sofia10
	DamageVoice2=snd_sofia9
	DamageVoice3=snd_sofia8

	commandChargeColor=c_green//00bd5b

	weaponBack=1

	name="SOFIA"

	HitReactionScript=sofia_hitreaction

	height=68

	weaponBack=1

	///Hit Sprite Animation Setup
	defMask=mask_small

	ThrownSpr=spr_sofia_hit
	BurnSpr=spr_sofia_burned
	FrozenSpr=spr_sofia_frozen
	ShockSpr=spr_sofia_elec
	FlatSpr=spr_sofia_flat
	DizzySpr=spr_sofia_dizzy
	CarSpr=spr_sofia_car
	GrabbedSpr=spr_sofia_grabbed
	SuperSpr=spr_sofia_super
	PointSpr=spr_sofia_point
	PointDialouge1=snd_sofia20
	PointDialouge2=snd_sofia21
	ScreenHitSpr=spr_sofia_hit

	WildTakeSpr=spr_sofia_wildtake
	WildTakeSpr2=spr_sofia_wildtake2

	ScreenHitSpr=spr_sofia_hitscreen
	WinSpr=spr_sofia_win
	WinSnd=snd_sofia14
	cutSpr1=spr_sofia_cut1
	cutSpr2=spr_sofia_cut2
	cutSpr1B=spr_sofia_cut1B
cutSpr2B=spr_sofia_cut2B
	SpinningSpr=spr_sofia_spin
	petSprLow=spr_sofia_petlow
	throwItemSpr=spr_sofia_itemthrow
	BDanceSpr=spr_sofia_bdance
WildTakeSpr3=spr_sofia_wildtake3
PlaneOutSpr=spr_sofia_planeout
HeartSpr=spr_sofia_heart
WildTakeSpr4=spr_sofia_wildtake4

	if atk=0
	{hitFXreset() selfatk.HitSound=snd_hit isThrow=0 throwing=0 canSuper=1 atkAddX=24 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.75*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}
	if hurt=1 atk=0


	if anim=0///Stand
	{powlock=0 
	if weaponspawn=oHammer {weaponanim(weaponspr,weaponIndex,23,-61,90*image_xscale,weaponcolor)

	}

	atk=0
	if carry=0
	{
	if weaponspawn=-1 ////Default Stand
	{zAddGround=0
	if isIdle<60
	{//isIdle+=0.1
	if sprite_index!=spr_sofia_stand 
	{animFrame=0 sprite_index=spr_sofia_stand}
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
if animFrame>15.5 animFrame=0
	}
	else
	{
	var idlespr=spr_sofia_idle;
	if Cweather=1 idlespr=spr_sofia_idlecold;
		
	if sprite_index!=idlespr
	{animFrame=0 sprite_index=idlespr}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if animFrame>3-0.1 animFrame=1
	frame_set(2,2,0.1)
	}
	}
	if weaponspawn=oHammer ////Hammer Stand
	{zAddGround=0 image_index=0
	sprite_index=spr_sofia_standweapon
weaponanim(weaponspr,weaponIndex,13,-37,72*image_xscale,weaponcolor)

	if weapontype=2 or weapontype=6 or weapontype=7////Machine Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,6,-50+13,90*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_sofia_gunstand
	}
	
	if weapontype=4 ////Hand Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,17,-69+10,135*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_sofia_handgun
	}
	
	}


	}
	else
	{///Carry Stand
	item.carryZ=8-76
	image_index=0 sprite_index=spr_sofia_carrystand}

	}

	if anim=1 ///Move
	{powlock=0  weaponBack=1
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,20,-34,72*image_xscale,weaponcolor)
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	weaponanim(weaponspr,weaponIndex,20,-35,72*image_xscale,weaponcolor)
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	weaponanim(weaponspr,weaponIndex,20,-36,72*image_xscale,weaponcolor)



	if dashing=0
	{
	if carry=0
	{


	if weaponspawn=-1 ////Default Move
	{zAddGround=0
	sprite_index=spr_sofia_move
	image_index+=0.02 if image_index>6-0.2  image_index=0
	}
	if weaponspawn=oHammer ////Hammer Move
	{zAddGround=0 
	sprite_index=spr_sofia_moveweapon
	
	}
	}
	else
	{
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	item.carryZ=-6-76
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	item.carryZ=-5-76
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	item.carryZ=-4-76
	sprite_index=spr_sofia_moveobject ///Carry Walk
	}

	image_index+=0.2 if image_index>6-0.2  image_index=0 atk=0}
	else
	{	if sprite_index!=spr_sofia_run
		{	dust_make(x,y,z,-2*image_xscale,0,0)
		sprite_index=spr_sofia_run
		}
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-4,-36,-10*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,0,-29,-29*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,3,-29,-4*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,22,-52,160*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,24,-46,132*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,21,-40,101*image_xscale,weaponcolor)
	  ///Run
	image_index+=0.2 if image_index>6-0.2  image_index=0 atk=0}
	}

	///Jump 1
	if anim=2
	{

	powlock=0 weaponBack=0

	if carry=0
	{weaponBack=0
	sprite_index=spr_sofia_jump1
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,4,-48,0,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-65,-40,90,weaponcolor)}

	}
	else
	{item.carryZ=-5-76
	sprite_index=spr_sofia_moveobject ///Carry Walk
	}

	image_index+=0.1 if image_index>0 image_index=0
	}
	///Jump 2
	if anim=3 
	{


	powlock=0 
	weaponBack=0
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,4,-48,0,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-31,-66,90*image_xscale,weaponcolor)}

	if carry=0
	sprite_index=spr_sofia_jump1
	else
	{item.carryZ=-5-76
	sprite_index=spr_sofia_moveobject ///Carry Walk
	}
	image_index+=0.1 if image_index>1 image_index=1
	}

	///Attacks
	if anim=10 ///Attack Stand
	{
	selfatk.NoKnock=0 dizzyAtk=0
	///Instantly Change if Carrying Object
	if carry=1 {dropitem=1 event_user(2)} atkcol_set(34,0,26,1.55,1,30) weaponAttack=0 comboBreak=0 flashX=0 flashY=2 flashZ=32

	///Change Anim from weapons
	if weaponspawn=oHammer {if weaponLife=0 and weaponIsGun=1{event_user(5)} else {anim=26 exit;}} 


	if animFrame=0 {PlaySound(snd_swing) PlaySound(snd_sofia3)}
	damage=0.02 targetHeight=2
	if comboHit!=0 and animFrame>2
	{if key_shield_pressed {event_user(4) exit;} ////<---Here to use special instantly
	{
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 animFrame=0 anim=11 atk=1}}////<---Here to perform second attack
	selfatk.recovery=5
	hit=0 MoveType=0
	sprite_index=spr_sofia_attack
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.4 else animFrame+=0.1 if animFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=11 ///Attack Stand 2
	{selfatk.NoKnock=0 dizzyAtk=0
	comboBreak=0
	flashX=4
	flashY=2
	flashZ=48

	atkcol_set(34,0,26,1.55,1,47)

	if animFrame=0 PlaySound(snd_swing)

	damage=0.02 targetHeight=2
	if comboHit!=0 and animFrame>2
	{if key_shield_pressed {event_user(4) exit;} 
	{
		
		comboHit=0 animFrame=0 anim=12 atk=1}}
	  hit=0 MoveType=0
	selfatk.recovery=5
	sprite_index=spr_sofia_attack2
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=12 ///Attack Stand 3
	{selfatk.NoKnock=0 dizzyAtk=0

	atkcol_set(34,0,26,1.55,1,30)

	if animFrame=0 PlaySound(snd_swing)

	comboBreak=0
	flashX=-4
	flashY=2
	flashZ=24

	damage=0.04 targetHeight=0
	if comboHit!=0 and animFrame>1.5
	{if key_shield_pressed {event_user(4) exit;} 
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		{PlaySound(snd_swing)} comboHit=0 animFrame=0 anim=13 atk=1}}
	hit=0 MoveType=0
	selfatk.recovery=5
	sprite_index=spr_sofia_attack
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=13 ///Attack Stand 4
	{ selfatk.NoKnock=0 dizzyAtk=0


	atkcol_set(34,0,26,1.55,1,47)

	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	damage=0.04 targetHeight=1
	if comboHit!=0 and animFrame>2.5
	{if key_shield_pressed {event_user(4) exit;} 
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		{PlaySound(snd_swing) PlaySound(snd_sofia5)} comboHit=0 animFrame=0 anim=14 atk=1}}
	hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_sofia_attack3
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.3 else animFrame+=0.3 if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=14 ///Attack Stand 5
	{selfatk.NoKnock=0 dizzyAtk=0
atkcol_set(34,0,26,1.55,1,47)
	if animFrame=0 PlaySound(snd_swing)

	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32

	comboHit=0
	damage=0.08
	hit=0 MoveType=1
	selfatk.recovery=10
	sprite_index=spr_sofia_attack4
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {comboHit=0 hurt=0 atk=0 canmove=1 hit=0
	}
	}

	if anim=15 ///Attack Air - and Forwards Attack Ait
	{selfatk.NoKnock=0 dizzyAtk=0
	
		if animFrame=0 
	{
	if -key_left or key_right sentflying=2*image_xscale
	if key_down
	{sprite_index=spr_sofia_attackair3 PlaySound(snd_sofia3)}
	else
	{
	if -key_left or key_right zSpeed=-4	
	PlaySound(snd_swing) PlaySound(snd_sofia12)
	}		
	}
	
atkcol_set(34,0,26,1.55,1,47)
	weaponAttack=0

	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	////Change your attack colission box
	atkAddX=24
	atkAddY=0
	selfatk.image_xscale=1.4
	selfatk.image_yscale=1

	if sprite_index=spr_sofia_attackair
	{ weaponBack=0
	if image_index<1
	weaponanim(weaponspr,weaponIndex,1,-29,-25*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-9,-35,-25*image_xscale,weaponcolor)
	}
	if sprite_index=spr_sofia_attackair2
	{ weaponBack=0
	if image_index<1
	{weaponBack=1
	weaponanim(weaponspr,weaponIndex,15,-45,74*image_xscale,weaponcolor)
	}
	else
	{weaponBack=0
	weaponanim(weaponspr,weaponIndex,6,-29,153*image_xscale,weaponcolor)
	}
	}

	damage=0.03
	hit=1
	selfatk.recovery=90
	
		if sprite_index!=spr_sofia_attackair3
	{
	if sentflying=0
	{sprite_index=spr_sofia_attackair MoveType=2 atkAddZ=0 selfatk.height=64}
	else {sprite_index=spr_sofia_attackair2 MoveType=1 atkAddZ=16 selfatk.height=32}
	image_index=animFrame image_speed=0
	if sprite_index=spr_sofia_attackair
	 {if animFrame>1 and animFrame<=2 atk=1 else atk=0
	 if animFrame<2.5 animFrame+=0.5}
	 if sprite_index=spr_sofia_attackair2
	 {if animFrame>1 atk=1 else atk=0
	 if animFrame<1.5 animFrame+=0.5}
	}
 
 if sprite_index=spr_sofia_attackair3
{animFrame=1 atk=1
atkcol_set(15,0,0,0.85,1,26)
damage=0.01
hit=1
selfatk.recovery=30
weaponanim(weaponspr,weaponIndex,-31,-30,90*image_xscale,weaponcolor)
}
 
	 if ground {hurt=1 canmove=0 animFrame=0 anim=25}
	}

	if anim=16 ///Attack Dash
	{selfatk.NoKnock=0 dizzyAtk=0
	if animFrame=0 {PlaySound(snd_swing) PlaySound(snd_sofia12)  MoveType=0
	ground=0 sentflying=6*image_xscale zSpeed=-5
	}

	weaponAttack=0

	comboBreak=0
	flashX=0
	flashY=2
	flashZ=48
	weaponBack=0
	damage=0.025
	hit=1
	selfatk.recovery=4
	MoveType=0

	if weaponspawn=-1 {weaponAttack=0 atkcol_set(0,0,5,1.75,1,60)
	}
	else
	{
	weaponAttack=1
	atkcol_set(0,0,0,weaponColScaleX,weaponColScaleY,60)
	}



	if image_index<1
	weaponanim(weaponspr,weaponIndex,15,-45,74*image_xscale,weaponcolor)
	else
	{if image_index=1
	weaponanim(weaponspr,weaponIndex,-3,-23,-40*image_xscale,weaponcolor)
	if image_index=2
	weaponanim(weaponspr,weaponIndex,17,-50,-133*image_xscale,weaponcolor)
	if image_index=3
	weaponanim(weaponspr,weaponIndex,17,-18,-225*image_xscale,weaponcolor)
	if image_index=4
	weaponanim(weaponspr,weaponIndex,-2,-18,-321*image_xscale,weaponcolor)
	}

	sprite_index=spr_sofia_runatk

	image_index+=0.5 if image_index>4.5 image_index=1 image_speed=0


	 if animFrame>1 atk=1 else atk=0
	 animFrame+=0.5 animFrame=clamp(animFrame,0,1.5)
	 if ground {hurt=1 canmove=0 animFrame=0 anim=25 wobbleX=1.1 wobbleY=0.9}
	}



	if anim=17 ///Stand Special Attack
	{selfatk.NoKnock=1 dizzyAtk=0
	if animFrame=0 {PlaySound(snd_swing2) PlaySound(snd_sofia5)}



	weaponAttack=0

	canSuper=1 weaponBack=2
	comboBreak=0
	flashY=0
	flashZ=48
	selfatk.x=x
	selfatk.image_xscale=3
	selfatk.image_yscale=2
selfatk.height=128
	damage=0.2 targetHeight=3
	selfatk.recovery=60
	hit=0 MoveType=2
	sprite_index=spr_sofia_special1
	image_index+=0.1 image_speed=0
	 if animFrame=clamp(animFrame,0,0.9)
	 {image_index=animFrame animFrame+=0.5}
	  if animFrame=clamp(animFrame,1,8.9)
	   {animFrame+=0.1 atk=1 if image_index>9 image_index=1 image_index+=0.4}
	    else atk=0
	if animFrame>4.9
	animFrame+=0.5

	  if animFrame>9.5 {hurt=0 atk=0 canmove=1 hit=0
	  if powcheck=0 hp-=powhp else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}
	}

	///Special Attacks
	if anim=18 ///Special Side Attack
	{selfatk.NoKnock=0 dizzyAtk=0
	weaponBack=2
	canSuper=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48 damage=0.12



	atkcol_set(-3,0,-4,1.75,1,64)

	weaponAttack=0

	if animFrame=0 PlaySound(snd_sofia4)

	if animFrame<3
	{atk=0
	frame_set(0,0,0.5) if animFrame=1 zSpeed=-10
	frame_set(1,0,0.5) if animFrame<1 sprite_index=spr_sofia_pjump else sprite_index=spr_sofia_jump1
	frame_set(2,1,0.1)
	}
	else
	{
	if !ground
	{animFrame=3 sentflying=4*image_xscale zSpeed=4
	atk=1 sprite_index=spr_sofia_special2 image_index+=0.5
	}
	else
	{atk=0
	animFrame+=0.1 if sprite_index!=spr_sofia_item {sprite_index=spr_sofia_item	wobbleX=1.1 wobbleY=0.9}
	if animFrame>4
	{powlock=0 hurt=0 atk=0 canmove=1 hit=0
	if powcheck=0
	hp-=powhp else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}
	}
	}

	//atkAddX=-32 selfatk.image_xscale=3 selfatk.image_yscale=1.5

	selfatk.recovery=4
	hit=0 




	}


	if anim=35 ///Grab Enemy
	{weaponBack=2 prevanim=36
	throwStrengthTime=90 throwStrengthMax=0

	if animFrame>0.1
	{
	if (key_attack or key_jump) and !key_right and !-key_left
	{

	///instantly use Down Up Move
	if key_attack and (commandDown!=0 and commandUp!=0)
	{if !place_free(x+1*image_xscale,y)
	targetID.x=x targetID.z=z with targetID {
	animFrame=0 HitType=0 ground=1 hurt=0 hit=0 Throw=0 hitBack=0 throwcombo=2
	HitForceReact=0*image_xscale throw_quickrelease() recovery=0 recoveryThrow=0 shake=0 shaketime=0}
	targetID=-1 animFrame=0 anim=80 exit;} ///instantly use Down Up Move

	animFrame=0 anim=36 ///Pummel
	}

	if (image_xscale=1 and key_right and (key_attack or key_jump))
	or (image_xscale=-1 and -key_left and (key_attack or key_jump))
	{PlaySound(snd_sofia4) animFrame=0 anim=37 throwcombo=2} ///Throw Forwards

	if (image_xscale=1 and -key_left and (key_attack or key_jump))
	or (image_xscale=-1 and key_right and (key_attack or key_jump))
	{PlaySound(snd_sofia4) animFrame=0 anim=38 throwcombo=2} ///Throw Backwards

	////Instantly use Special
	if key_shield_pressed 
	if hp>=powhp
	//or pow>4
	{prevanim=35
	with targetID {y=y z=z ground=1 canmove=0 hurt=1 animFrame=0 anim=4 Throw=0 recovery=2}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 animFrame=0 event_user(4) recovery=60 exit;
	}
	else {animFrame=0
	if (key_right and image_xscale=1) anim=37
	if (-key_left and image_xscale=1) anim=38
	if (-key_left and image_xscale=-1) anim=37
	if (key_right and image_xscale=-1) anim=38
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_sofia4)}

	////Instantly use Super
	if key_super if super>=17.5
	{with targetID {ground=1 canmove=0 hurt=1 animFrame=0 anim=4 Throw=0}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 event_user(8) exit;}
	else {animFrame=0
	if (key_right and image_xscale=1) anim=37
	if (-key_left and image_xscale=1) anim=38
	if (-key_left and image_xscale=-1) anim=37
	if (key_right and image_xscale=-1) anim=38
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_sofia4)}
	}

	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	if animFrame>0.1
	Throw=0 else Throw=1
	sprite_index=spr_sofia_grab
	image_index=0 image_speed=0
	sentFlying=0 hspeed=0
	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.recoveryThrow=10
	canmove=0 targetID.hitSource=id
	targetID.ground=1 targetID.recovery=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	targetID.animFrame=0
	targetID.targetHeightHit=targetID.GrabFrame
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1
	atk=0 if animFrame>grabTime/2 targetID.shaketime=1
	animFrame+=0.02 if animFrame>grabTime {grabTime=2
	grabX=0 grabY=0 grabZ=0 //targetID.hp-=0.05+extradamage
	if !place_free(x+1*image_xscale,y)
	targetID.x=x

	with targetID
	{recovery=0 animFrame=0 
	hurt=0 Throw=0
	atk=0 canmove=1 
	animFrame=EgrabFrame anim=EgrabAnim if anim!=0 canmove=0 throwcombo=2 z+=EgrabzAdd
	sentflying=EgrabSentFlying*image_xscale zSpeed=EgrabZspeed if zSpeed!=0 ground=0 sprite_index=EgrabzSpr image_index=EgrabzIG
	}throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
	targetID=-1
	}
	if targetID!=-1 ///Check if Target is dead
	{
	if targetID.dead=1
	{throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
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
	sprite_index=spr_sofia_grab
	image_index=animFrame image_speed=0
	sentFlying=0 hspeed=0


	targetID.hit=2 canmove=0 
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if animFrame<3 targetID.targetHeightHit=targetID.GrabFrame else targetID.targetHeightHit=2
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1 MoveType=0
	atk=0 ///Anim End
	if animFrame=2.02
	{atkcol_set(30,0,49,0.75,1,27) targetHeight=0 if throwcombo=1 MoveType=1 else MoveType=0 damage=0.04 atk=1
	super+=0.25*canSuper targetID.hp-=0.04
	if targetID.hp>=0
	PlayerScore+=targetID.pointshit else PlayerScore+=targetID.points
	with targetID {event_user(11) ///Hit Enemy
	shaketime=10 grabbed=1 PlaySound(snd_hit)


	hud_show() hpscan()
	}




	}
	with targetID {hud_show() hpscan()
	}

	animFrame+=0.2 if animFrame>4 {
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


	sentflying=4*-image_xscale

	///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	hud_show() hpscan()
	event_user(9)
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
	animFrame=3
	anim=5
	hud_show() hpscan()
	event_user(9)
	}throwing=0 
	targetID=-1 throwcombo=2 anim=39 
	}
	else {throwcombo-=1 animFrame=0 anim=35}
	}
	}
	}

	if anim=37 ///Throw Forwards
	{
	if animFrame=0

	prevanim=37
	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	Throw=1 recovery=10
	sprite_index=spr_sofia_throw
	image_index=animFrame image_speed=0

	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.hitSource=id targetID.ThrowDamage=0
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if animFrame<0.5 {targetID.targetHeightHit=1 grabX=32*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale}
	if animFrame=1 {targetID.targetHeightHit=2 grabX=32*image_xscale grabY=0 grabZ=-1 targetID.image_xscale=-image_xscale}
	if animFrame=2 {targetID.targetHeightHit=0 grabX=32*image_xscale grabY=0 grabZ=-1 targetID.image_xscale=-image_xscale}

	 if animFrame=clamp(animFrame,2,2.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.1 else animFrame+=0.1 if animFrame>2.5 {
		
		atkcol_set(24,0,25,1.55,1,52) MoveType=0 damage=0.1 atk=1
	super+=0.25*canSuper targetID.hp-=0.04
		
		anim=39 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25 targetID.hp-=0.1+extradamage
	super+=0.25*canSuper
	targetID.thrownAtk=1
	targetID.thrownAtkDmg=0 ///Damage when the thrown targets hits another enemy

	if targetID.hp<=0  PlayerScore+=targetID.points
	else PlayerScore+=targetID.pointshit

	if !place_free(x+1*image_xscale,y)
	targetID.x=x

	with targetID
	{event_user(11) PlaySound(snd_hit)
	recovery=90 Throw=0
	hurt=1
	hit=1
	ground=0
	zSpeed=-4
	sentflying=4*-image_xscale///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	hud_show() hpscan()
	event_user(9)
	}throwing=0
	targetID=-1
	}
	if targetID!=-1 ///Check if Target is dead
	{
	if targetID.dead=1
	{throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
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
	sprite_index=spr_sofia_throwback
	image_speed=0
	if instance_exists(targetID) targetID.depth=depth+1
	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.ThrowDamage=0.08
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	 if animFrame=clamp(animFrame,0,0.9)
	{image_index=0
	targetID.canDrag=0

	z=targetID.z-targetID.waistPosY[targetID.GrabFrame]+8///targetID.height+8

	targetID.animFrame=3
	}
	 if animFrame=clamp(animFrame,1,1.9)
	{if image_index!=1 image_index=1

	targetID.animFrame=targetID.GrabFrame   ////Get on enemy's head
	targetID.x=x
	z=targetID.z-targetID.headPosY[targetID.GrabFrame]+8///targetID.height+8

	///Has a unique enemythrow
	if targetID.throwHeavy=1 and animFrame>1///1
	if throwStrengthTime!=0
	{animFrame=1.5 throwStrengthTime-=1
	if key_attack throwStrengthMax+=1 if throwStrengthMax>=3 animFrame=2.1
	if throwStrengthTime<30
	shaketime=1}
	else
	{
	throwStrengthTime=90
	targetID.canmove=1
	with targetID
	{
	recovery=2
	recoveryThrow=2
	ThrowDamage=0
	Throw=0
	}

	PlaySoundNoStack(snd_jump)
	targetID=-1
	canmove=1 event_user(7) zSpeed=-4
	exit;
	} 
	//enemy_heavythrow(1,1.5,3,2.1)

	}

	 if animFrame=clamp(animFrame,1.91,2.9)
	{ 
	if image_index!=2 {PlaySound(snd_swing) z=targetID.z-targetID.height/2 image_index=2 }
	targetID.canDrag=1
	targetID.targetHeightHit=18 grabX=32*image_xscale grabY=0 grabZ=-16

	}


	 if animFrame=clamp(animFrame,3,3.9) {  targetID.x=x z=0 atk=1} else atk=0

	 if animFrame=clamp(animFrame,0,0.8)
	 animFrame+=0.2 else
	 { 
	if animFrame=clamp(animFrame,1,1.5)
	animFrame+=0.05 
	else animFrame+=0.2
	}

	if animFrame>3.5 {anim=39 ///Throw End
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
	event_user(11) ///Hit Enemy
	recovery=90 Throw=0
	hurt=1
	hit=1
	ground=0
	zSpeed=-6
	image_xscale=-image_xscale
	sentflying=5*-image_xscale///Throw Distance
	image_index=3 sprite_index=ThrownSpr
	animFrame=3
	anim=5
	hud_show() hpscan()
	event_user(9)
	}throwing=0
	targetID=-1
	}
	if targetID!=-1 ///Check if Target is dead
	{
	if targetID.dead=1
	{throwing=0 animFrame=0 anim=0 canmove=1 throwcombo=2
	character_release(0,-4,2*image_xscale,0,3,5)}}
	}

	///Throw End
	if anim=39
	{
	comboBreak=0
	selfatk.recovery=30
	Throw=0
	if prevanim=36 ///Detect previous throwing animations when they throw opponent
	{image_index=animFrame image_speed=0}
	if prevanim=37///Throw Fowards
	{image_index=animFrame image_speed=0}
	if prevanim=38///Throw Back
	{
	if image_index<4.2 image_index+=0.2
	else if animFrame>4.4 image_index=0
	  image_speed=0}
  
	throwing=0
	if prevanim=38
	animFrame+=0.025 else
	animFrame+=0.1 

	if animFrame>4.5 {hurt=0 canmove=1 Throw=0}
	}

	///Prepare To Jump
	if anim=21 or anim=22
	{
		if anim=22 if animFrame=0 {wobbleX=1.1 wobbleY=0.9}
	hit=0 MoveType=0 canmove=0  weaponBack=1
	weaponanim(weaponspr,weaponIndex,9,-31,90*image_xscale,weaponcolor)

	if carry=0
	{image_index=10 sprite_index=spr_sofia_pjump }
	else
	{item.carryZ=-16-76 image_index=5
	sprite_index=spr_sofia_moveobject ///Carry Walk
	}

	 image_speed=0 atk=0
	if animFrame=clamp(animFrame,0,1)
	animFrame+=0.05 else animFrame+=0.05 if animFrame>0.1 {
	if anim=21
	{hurt=0 atk=0 canmove=1 hit=0 event_user(7)}
	else canmove=1
	}
	}


	///Throw Item
	if anim=24
	{
	if animFrame=0 PlaySound(snd_swing)

	hit=0 MoveType=0 
	sprite_index=spr_sofia_hammeratk
	image_index=animFrame+1.5 image_speed=0 atk=0
	if animFrame=clamp(animFrame,0,1)
	animFrame+=0.05 else animFrame+=0.05 if animFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	///Take Item
	if anim=25
	{hit=0 MoveType=0 zAddGround=0
	weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor)
	if carry=0
	{
	sprite_index=spr_sofia_item
	}
	else
	{sprite_index=spr_sofia_item
	item.carryZ=64-76
	}
	image_index=animFrame image_speed=0 atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>1.5 {hurt=0 atk=0 canmove=1 hit=0 
	}
	}
	
	///Lift Heavy Object
	if anim=250
	{hit=0 MoveType=0 weaponanim(weaponspr,weaponIndex,2,-9,45*image_xscale,weaponcolor) zAddGround=0
	if carry=1	{if animFrame<1 item.carryZ=64-76 else item.carryZ=-8-76}
	if animFrame<1 {sprite_index=spr_sofia_item image_index=0} else {sprite_index=spr_sofia_hammeratk image_index=0}
		image_speed=0 atk=0 animFrame+=0.05 if animFrame>2 {hurt=0 atk=0 canmove=1 hit=0}}

	///Down Up Attack
	if anim=80
	{
	if animFrame=1.2 {PlaySound(snd_sofia5) PlaySound(snd_swing)}



	sprite_index=spr_sofia_downup image_index=animFrame

	atkcol_set(25,0,0,1.35,1,88)

	MoveType=1 damage=0.12

	if animFrame=clamp(animFrame,1,2) atk=1 else atk=0

	flashZ=32
	
	

	if animFrame=clamp(animFrame,1,4) {sentflying=-0.5*image_xscale ground=0 z-=8}
	else sentflying=0

	frame_set(0,0,0.1)
	frame_set(1,1,0.2)
	frame_set(2,2,0.3)
	frame_set(3,3,0.3)
	frame_set(4,4,0.3)
	frame_set(5,5,0.3)
	frame_set(6,6,0.3)
	frame_set(7,7,0)
	
	if animFrame=clamp(animFrame,1,7)
	afterimage_create(4,make_colour_rgb(0, 189, 90),current_pal,my_pal_sprite,0)

	if animFrame>6 and ground=1 {canmove=0 animFrame=0 anim=25}
	}

	///Side Attack
	if anim=81
	{if animFrame=0 PlaySound(snd_sofia3) weaponBack=-1

	if animFrame=2 { PlaySound(snd_sofia6)}
	sprite_index=spr_sofia_attack image_index=animFrame



	atkcol_set(19,0,47,2.15,1,18) MoveType=1 damage=0.1

	if animFrame=clamp(animFrame,3,4) {wobbleX=1.1 wobbleY=0.9
			afterimage_create(4,make_colour_rgb(0, 189, 90),current_pal,my_pal_sprite,-16*image_xscale)

		sentflying=16*image_xscale atk=1} else {sentflying=lerp(sentflying,0,0.3) atk=0}

	frame_set(0,0,0.2)
	frame_set(1,0,0.2)
	frame_set(2,1,0.5)
	frame_set(3,1,0.1)
	frame_set(4,1,0.05)
	frame_set(5,5,0.1)

	if animFrame>5.75 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
			///Taunt
	if anim=83
{sprite_index=spr_sofia_taunt
atk=0  	weaponanim(weaponspr,weaponIndex,15,-50+999910,90*image_xscale,weaponcolor)
	frame_set(0,0,0.2)
	frame_set(1,1,0.1)
	frame_set(2,2,0.2) if animFrame=3 //-58
	{hrt=instance_create_depth(x+12*image_xscale,y,-1,oFlashFX)
		hrt.z=z-42 hrt.depth=depth-1 hrt.hspeed=0.8*image_xscale
		with hrt
		{alarm[0]=8888 sprite_index=spr_heart image_speed=0.0001
image_index=0.9995 zSpeed=2.04 zSpeedAdd=-0.1 isDepth=0
alarm[5]=60 changespr=sprite_index changeimgspd=0.5 changeimpindex=2}}
	frame_set(3,3,0.3)
	frame_set(4,4,0.3)
	frame_set(5,5,0.05)
	frame_set(6,0,0.1)
if animFrame>6.5 {canmove=1 atk=0}
}
	
		///Back Punch Attack
	if anim=84
{sprite_index=spr_sofia_punchback
if animFrame=0 {PlaySound(snd_swing) PlaySound(snd_sofia3)}
atkcol_set(-33,0,12,0.85,1,37) MoveType=1 damage=0.03
if animFrame=clamp(animFrame,2,3) { atk=1} else atk=0
	frame_set(0,0,0.2)
	frame_set(1,1,0.2) if animFrame=2 {ground=0 zSpeed=-4 sentflying=-2*image_xscale}
	frame_set(2,2,0.2) sentflying=lerp(sentflying,0,0.1) if animFrame>2.5 if !ground animFrame=2.9
	frame_set(3,1,0.2)
if animFrame>3.5 {canmove=1 atk=0}

}
	
		///Charge Attack
	if anim=85
	{
	HitForce=-4
	HitForceZ=-4


	damage=0.5

if animFrame<1
	sprite_index=spr_sofia_charge

	atkcol_set(0,0,0,3.5,2,100) MoveType=2 damage=0.18

	frame_set(0,0,0.1)
	frame_set(1,1,0.2) if animFrame=2 
	{PlaySound(snd_sofia3) PlaySound(snd_swing5)
	oControl.quakeFXTime=8
	elec=instance_create_depth(x,y+1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z elec.sprite_index=spr_sofia_chargewind elec.hspeed=4
	elec=instance_create_depth(x,y+1,depth,oAnimFX) elec.image_speed=0.5 elec.z=z elec.sprite_index=spr_sofia_chargewind elec.hspeed=-4
	
	}
	frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,2.5) {atk=1 zSpeed=-8} else atk=0
	frame_set(3,3,0.25)
if animFrame>3
{if image_index<6.5 image_index+=0.5 else image_index=3}

	if animFrame>3 if ground {hurt=1 canmove=0 animFrame=0 anim=25}
	}
	
	/////Respawn
		if anim=255
{sprite_index=spr_sofia_respawn

if animFrame=0
{
oControl.quakeFXTime=10
wnd=instance_create_depth(x-320*image_xscale,y,depth,oAnimFX) wnd.alarm[0]=9999 wnd.canEnd=0
wnd.sprite_index=spr_sofia_respawnwind wnd.image_speed=0.5
}
frame_set(0,0,0.025)

if animFrame=clamp(animFrame,0.25,1-0.25) {wnd.x=lerp(wnd.x,x,0.25)}

if animFrame=1 {with wnd instance_destroy() oControl.quakeFXTime=10
	PlaySoundNoStack(snd_swing5)
	PlaySound(ReturnVoice) enemy_knoockdown() visible=1 dead=0 hurt=0 DeathCryOnce=0}
frame_set(1,0,0.25)
frame_set(2,1,0.25)
frame_set(3,2,0.25)
frame_set(4,3,0.1)
frame_set(5,4,0.05)
if animFrame>5.8
{hurt=0 atk=0 canmove=1 hit=0 disappearTime=90 canmove=1 recovery=180 showp1=1;
alarm[4]=2
if visible=0 visible=1 else visible=0
disappearTime-=1
	
}
}
	
	sofia_weaponanim()

	animsetup_sofia_super()

	animsetup_sofia_misc()

	///Stand
	///Move
	///Jump
	///Jump Forwards
	///Hit Stand
	///Hit Air
	///Ground-Get Up





}
