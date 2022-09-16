///Animation Setup - Hina
////Here it indicates the character's abilities
function animsetup_hina() {

	walkSpeed=2
	damage=0.05
	extradamage=0
	defense=1.5
	extradefense=0

	name="HINA"

	DeathCry=snd_hina2
	ReturnVoice=snd_hina8
	DamageVoice1=snd_hina12
	DamageVoice2=snd_hina11
	DamageVoice3=snd_hina10

	HitReactionScript=hina_hitreaction

	commandChargeColor=c_red

	height=88

	weaponBack=1
	///Hit Sprite Animation Setup
	defMask=mask_small
	ThrownSpr=spr_hina_hit
	BurnSpr=spr_hina_burned
	FrozenSpr=spr_hina_frozen
	ShockSpr=spr_hina_elec
	FlatSpr=spr_hina_flat
	DizzySpr=spr_hina_dizzy
	CarSpr=spr_hina_car
	GrabbedSpr=spr_hina_grabbed
	SuperSpr=spr_hina_super
	PointSpr=spr_hina_point
	PointDialouge1=snd_hina20
	PointDialouge2=snd_hina21
	ScreenHitSpr=spr_hina_hit
	WildTakeSpr=spr_hina_wildtake
	WildTakeSpr2=spr_hina_wildtake2
	ScreenHitSpr=spr_hina_hitscreen
	WinSpr=spr_hina_win
	WinSnd=snd_hina13
	cutSpr1=spr_hina_cut1
	cutSpr2=spr_hina_cut2
	cutSpr1B=spr_hina_cutB1
cutSpr2B=spr_hina_cutB2
	SpinningSpr=spr_hina_spin
	petSprLow=spr_hina_petlow
	throwItemSpr=spr_hina_itemthrow
	BDanceSpr=spr_hina_bdance
	WildTakeSpr3=spr_hina_wildtake3
PlaneOutSpr=spr_hina_planeout
HeartSpr=spr_hina_heart
	WildTakeSpr4=spr_hina_wildtake4
	
	if atk=0
	{hitFXreset() selfatk.HitSound=snd_hit isThrow=0 throwing=0 canSuper=1 atkAddX=24 atkAddY=0 atkAddZ=0 selfatk.image_xscale=1.75*image_xscale selfatk.image_yscale=1
	HitForce=0
	HitForceZ=0
	}
	if hurt=1 atk=0


	if anim=0///Stand
	{powlock=0 
	if weaponspawn=oHammer {

	weaponanim(weaponspr,weaponIndex,12,-47,74*image_xscale,weaponcolor)
	}

	atk=0
	if carry=0
	{
	if weaponspawn=-1 ////Default Stand
	{
	zAddGround=0
	if isIdle<60
	{//isIdle+=0.1
	if sprite_index!=spr_hina_stand 
	{animFrame=0 sprite_index=spr_hina_stand}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1)
	frame_set(2,2,0.1)
	frame_set(3,1,0.1)
	frame_set(4,0,0.1)
	frame_set(5,3,0.1)
	frame_set(6,4,0.1)
	frame_set(7,3,0.1)
	frame_set(8,0,0.1)
if animFrame>8 animFrame=0
	}
	else
	{
	if sprite_index!=spr_hina_idle
	{animFrame=0 sprite_index=spr_hina_idle}
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if animFrame>3-0.1 animFrame=1
	frame_set(2,2,0.1)
	}	
	}
	if weaponspawn=oHammer ////Hammer Stand
	{zAddGround=0 image_index=0
	sprite_index=spr_hina_runatk

	if weapontype=2 or weapontype=6 or weapontype=7 ////Machine Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_hina_gunstand
	}
	
			if weapontype=4 ////Hand Gun Stand
	{
	weaponanim(weaponspr,weaponIndex,17,-69,135*image_xscale,weaponcolor)
	zAddGround=0 image_index=0
	sprite_index=spr_hina_handgun
	}
	
	}

	}
	else
	{///Carry Stand
	zAddGround=64 item.carryZ=0-76
	image_index=0 sprite_index=spr_hina_hammeratk}

	}

	if anim=1 ///Move
	{powlock=0 weaponBack=1
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
	weaponanim(weaponspr,weaponIndex,6,-51,74*image_xscale,weaponcolor)
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
	weaponanim(weaponspr,weaponIndex,6,-49,74*image_xscale,weaponcolor)
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
	weaponanim(weaponspr,weaponIndex,6,-50,74*image_xscale,weaponcolor)

	if dashing=0
	{
	if carry=0
	{


	if weaponspawn=-1 ////Default Move
	{zAddGround=0
	sprite_index=spr_hina_move
	image_index+=0.02 if image_index>6-0.2  image_index=0
	}
	if weaponspawn=oHammer ////Hammer Move
	{zAddGround=0 
	sprite_index=spr_hina_move
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
	
	sprite_index=spr_hina_moveobject ///Carry Walk
	}

	image_index+=0.2 if image_index>6-0.2  image_index=0 atk=0}
	else
	{
	if sprite_index!=spr_hina_run
		{
	sprite_index=spr_hina_run
	dust_make(x,y,z,-2*image_xscale,0,0)
		}
		
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,-15,-45,142*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-15,-52,144*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,-17,-46,144*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,-15,-45,142*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-15,-52,144*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-17,-46,144*image_xscale,weaponcolor)
	  ///Run
	image_index+=0.2 if image_index>6-0.2 -0.2 image_index=0 atk=0}
	}

	///Jump 1
	if anim=2
	{


	powlock=0 weaponBack=0

	if carry=0
	{weaponBack=0
	sprite_index=spr_hina_jump1
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,11,-34,76*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,36,-63,63*image_xscale,weaponcolor)

	}

	}
	else
	{item.carryZ=-16-76
	sprite_index=spr_hina_moveobject ///Carry Walk
	}

	image_index+=0.1 if image_index>0 image_index=0
	}
	///Jump 2
	if anim=3 
	{powlock=0 
	weaponBack=0
	if weaponspawn=oHammer{if image_index<1
	weaponanim(weaponspr,weaponIndex,11,-34,76*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,36,-63,63*image_xscale,weaponcolor)

	}
	if carry=0
	sprite_index=spr_hina_jump1
	else
	{item.carryZ=-16-76
	sprite_index=spr_hina_moveobject ///Carry Walk
	}
	image_index+=0.1 if image_index>1 image_index=1
	}



	///Attacks
	if anim=10 ///Attack Stand
	{
	selfatk.NoKnock=0 dizzyAtk=0
	///Instantly Change if Carrying Object
	if carry=1 {dropitem=1 event_user(2)} atkcol_set(49,0,50,1.95,1,14) weaponAttack=0 comboBreak=0 flashX=0 flashY=2 flashZ=32

	///Change Anim from weapons
	if weaponspawn=oHammer {if weaponLife=0 and weaponIsGun=1{event_user(5)} else {anim=26 exit;}} 


	if animFrame=0 {PlaySound(snd_swing) PlaySound(snd_hina3)}
	damage=0.02 targetHeight=2
	if comboHit!=0 and animFrame>1.7
	{if key_shield_pressed {event_user(4) exit;} ////<---Here to use special instantly
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		comboHit=0 animFrame=0 anim=11 atk=1}}////<---Here to perform second attack
	selfatk.recovery=10
	hit=0 MoveType=0
	sprite_index=spr_hina_attack
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>2.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=11 ///Attack Stand 2
	{selfatk.NoKnock=0 dizzyAtk=0
	comboBreak=0
	flashX=4
	flashY=2
	flashZ=48


	atkcol_set(49,0,46,1.95,1,24)

	damage=0.02 targetHeight=2
	if comboHit!=0 and animFrame>1.7
	{if key_shield_pressed {event_user(4) exit;} ////<---Here to use special instantly
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		PlaySound(snd_swing) PlaySound(snd_hina3) comboHit=0 animFrame=0 anim=12 atk=1}}
	  hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_hina_attack2
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.16 else animFrame+=0.1 if animFrame>2.8 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=12 ///Attack Stand 3
	{selfatk.NoKnock=0 dizzyAtk=0

	atkcol_set(49,0,46,1.95,1,24)


	comboBreak=0
	flashX=-4
	flashY=2
	flashZ=24

	damage=0.02 targetHeight=0
	if comboHit!=0 and animFrame>1.7
	{if key_shield_pressed {event_user(4) exit;} ////<---Here to use special instantly
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		PlaySound(snd_swing) PlaySound(snd_hina3) comboHit=0 animFrame=0 anim=13 atk=1}}
	hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_hina_attack3
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.16 else animFrame+=0.1 if animFrame>2.8 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=13 ///Attack Stand 4
	{ selfatk.NoKnock=0 dizzyAtk=0



	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48

	atkcol_set(49,0,3,1.95,1,44)

	damage=0.04 targetHeight=1
	if comboHit!=0 and animFrame>1.7
	{if key_shield_pressed {{event_user(4) exit;} }////<---Here to use special instantly
	if key_attack {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		PlaySound(snd_swing) PlaySound(snd_hina5) comboHit=0 animFrame=0 anim=14 atk=1}}
	hit=0 MoveType=0
	selfatk.recovery=10
	sprite_index=spr_hina_attack4
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,1,1.5) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.15 else animFrame+=0.1 if animFrame>2.8 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	if anim=14 ///Attack Stand 5
	{selfatk.NoKnock=0 dizzyAtk=0

	atkcol_set(65,0,47,2.95,1,44)

	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32

	comboHit=0
	damage=0.1
	hit=0 MoveType=1
	selfatk.recovery=10
	sprite_index=spr_hina_attack5
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>4.5 {comboHit=0 hurt=0 atk=0 canmove=1 hit=0

	}

	}

	if anim=15 ///Attack Air - and Forwards Attack Ait
	{selfatk.NoKnock=0 dizzyAtk=0
	if animFrame=0 
	{
	if -key_left or key_right sentflying=2*image_xscale
	if key_down
	{sprite_index=spr_hina_attackair3 PlaySound(snd_hina3)}
	else
	{
	if -key_left or key_right zSpeed=-4	
	PlaySound(snd_swing) PlaySound(snd_hina4)
	}		
	}
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

	if sprite_index=spr_hina_attackair
	{ weaponBack=0
	if image_index<1
	weaponanim(weaponspr,weaponIndex,2,-41,90*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-7,-56,90*image_xscale,weaponcolor)
	}
	if sprite_index=spr_hina_attackair2
	{ weaponBack=0
	if image_index<1
	weaponanim(weaponspr,weaponIndex,-17,-61,-27*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,-20,-48,-264*image_xscale,weaponcolor)
	}

	damage=0.04
	hit=1
	selfatk.recovery=90
	
	if sprite_index!=spr_hina_attackair3
	{
	if sentflying=0
	{sprite_index=spr_hina_attackair MoveType=2 atkAddZ=0 selfatk.height=64}
	else {sprite_index=spr_hina_attackair2 MoveType=1 atkAddZ=16 selfatk.height=32}
	image_index=animFrame image_speed=0
	if sprite_index=spr_hina_attackair
	 {if animFrame>1 and animFrame<=2 atk=1 else atk=0
	 if animFrame<2.5 animFrame+=0.5}
	 if sprite_index=spr_hina_attackair2
	 {if animFrame>1 atk=1 else atk=0
	 if animFrame<1.5 animFrame+=0.5}
	}
	
if sprite_index=spr_hina_attackair3
{animFrame=1 atk=1
atkcol_set(27,0,0,1.25,1,37)
damage=0.02
hit=1
selfatk.recovery=30
weaponanim(weaponspr,weaponIndex,32,-70,90*image_xscale,weaponcolor)
}
 
	 if ground {hurt=1 canmove=0 animFrame=0 anim=25 wobbleX=1.1 wobbleY=0.9}
	}

	if anim=16 ///Attack Dash
	{
	selfatk.NoKnock=0 dizzyAtk=0

	weaponanim(weaponspr,weaponIndex,111111,-34,76*image_xscale,weaponcolor)

	weaponAttack=0
	if animFrame=0 {PlaySound(snd_swing) PlaySound(snd_hina4)  }
	atkcol_set(90,0,48,3.55,1,46)
	if animFrame<1 {wobbleX=lerp(wobbleX,0.8,0.1) wobbleY=lerp(wobbleY,1.2,0.1)}
	if animFrame=2 {wobbleX=1.1 wobbleY=0.9}
	
	if animFrame<3
	{sentflying=2*image_xscale} else sentflying=0
	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32
	comboHit=0
	damage=0.06
	hit=0 MoveType=1
	selfatk.recovery=10
	sprite_index=spr_hina_runatk
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.4 else animFrame+=0.1 if animFrame>4.5 {comboHit=0 hurt=0 atk=0 canmove=1 hit=0}
	}


	if anim=17 ///Stand Special Attack
	{selfatk.NoKnock=1 dizzyAtk=0
	if animFrame=0 {PlaySound(snd_swing2) PlaySound(snd_hina4)}



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
	sprite_index=spr_hina_special1
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
	{selfatk.NoKnock=1 dizzyAtk=0
	weaponBack=2
	canSuper=1
	comboBreak=0
	flashX=6
	flashY=2
	flashZ=48



	if animFrame=0 {PlaySound(snd_hina3) PlaySound(snd_flame) specialcheck5=0}

	atkcol_set(69,0,43,2.2,1,22)

	HitForce=-4
	HitForceZ=-4


	comboBreak=1
	flashX=12
	flashY=2
	flashZ=32

	comboHit=0
	damage=0.12
	hit=0 MoveType=5
	selfatk.recovery=10
	sprite_index=spr_hina_special2
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.9) atk=1 else atk=0

if animFrame=0 fireFX=0

	frame_set(0,0,0.25)
	frame_set(1,1,0.25)
	frame_set(2,2,0.25)

	if animFrame=3 and specialcheck5=0
	{specialcheck5=1
	flame=instance_create_depth(x+37*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
	with flame
	{z=-42 image_speed=0.5 sprite_index=spr_hina_firebreath alarm[0]=0}
	}
if specialcheck5=1
{
	if animFrame=3.1
	{
	flame=instance_create_depth(x+37*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
	with flame
	{z=-42 image_speed=0.5 sprite_index=spr_hina_firebreath alarm[0]=0}
	}	
	if animFrame=clamp(animFrame,3.1,3.9)
	if instance_exists(flame) with flame if image_index>3 image_index=0

	frame_set(3,3,0.025)

	if animFrame=4
	{with flame instance_destroy()

	flame=instance_create_depth(x+37*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
	with flame
	{z=-42 image_speed=0.5 sprite_index=spr_hina_firebreath2 alarm[0]=0}
	}
}
	frame_set(4,4,0.25)
	frame_set(5,5,0.25)
 

	if animFrame>5.5
	{atk=0 canmove=1 hit=0
	  if powcheck=0 hp-=powhp else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}

if animFrame>5.5 animFrame+=0.25

	if animFrame>6.5
	{atk=0 canmove=1 hit=0
	  if powcheck=0 hp-=powhp else {pow=0 powlock=0}
	  if hp<0.01 hp=0.01
	}
	}


	if anim=35 ///Grab Enemy
	{weaponBack=2 weaponAttack=0 prevanim=36
	throwStrengthTime=90 throwStrengthMax=0
	if animFrame>0.1
	{
	if (key_attack or key_jump) and !key_right and !-key_left
	{

	///instantly use Down Up Move
	if key_attack and (commandDown!=0 and commandUp!=0)
	{if !place_free(x+1*image_xscale,y)
	targetID.x=x targetID.z=z with targetID {throwcombo=2
	animFrame=0 HitType=0 ground=1 hurt=0 hit=0 Throw=0 hitBack=0
	HitForceReact=0*image_xscale throw_quickrelease() recovery=0 recoveryThrow=0 shake=0 shaketime=0}
	targetID=-1 animFrame=0 anim=80 exit;} ///instantly use Down Up Move

	animFrame=0 anim=36 ///Pummel
	}


	if (image_xscale=1 and key_right and (key_attack or key_jump))
	or (image_xscale=-1 and -key_left and (key_attack or key_jump))
	{PlaySound(snd_hina5) animFrame=0 anim=37 throwcombo=2} ///Throw Forwards

	if (image_xscale=1 and -key_left and (key_attack or key_jump))
	or (image_xscale=-1 and key_right and (key_attack or key_jump))
	{PlaySound(snd_hina5) animFrame=0 anim=38 throwcombo=2} ///Throw Backwards

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
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_hina5)}

	////Instantly use Super
	if key_super if super>=17.5
	{with targetID {ground=1 canmove=0 hurt=1 animFrame=0 anim=4 Throw=0}
	targetID=-1 throwcombo=2 canmove=1 Throw=0 atk=0 event_user(8) exit;}
	else {animFrame=0
	if (key_right and image_xscale=1) anim=37
	if (-key_left and image_xscale=1) anim=38
	if (-key_left and image_xscale=-1) anim=37
	if (key_right and image_xscale=-1) anim=38
	if (!-key_left and !key_right) anim=36 else PlaySound(snd_hina5)}
	}

	isThrow=1
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	if animFrame>0.1
	Throw=0 else Throw=1
	sprite_index=spr_hina_grab
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
	selfatk.recovery=10
	Throw=1
	sprite_index=spr_hina_grab
	image_index=animFrame image_speed=0
	sentFlying=0 hspeed=0


	targetID.hit=2 canmove=0 
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	if animFrame<3 targetID.targetHeightHit=targetID.GrabFrame else targetID.targetHeightHit=0
	grabX=24*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.depth=depth+1
	atk=0 ///Anim End
	if animFrame=2.02
	{atkcol_set(18,0,32,0.85,1,56) targetHeight=0 if throwcombo=1 MoveType=1 else MoveType=0 damage=0.06 atk=1
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

	animFrame+=0.2 if animFrame>4 {
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

	prevanim=37
	isThrow=1 recovery=10
	throwing=1
	selfatk.image_xscale=0
	comboBreak=0
	selfatk.recovery=90
	Throw=1
	sprite_index=spr_hina_throw
	image_speed=0

	with targetID {hud_show() hpscan()}
	targetID.hit=2 //targetID.ThrowDamage=0.1
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1
	///Drag Enemy
	 if animFrame=clamp(animFrame,0,0.5)
	{image_index=0
	targetID.targetHeightHit=targetID.GrabFrame grabX=30*image_xscale grabY=1 grabZ=0 targetID.image_xscale=-image_xscale}
	 if animFrame=clamp(animFrame,0.6,1.9)
	{image_index=1
	targetID.targetHeightHit=targetID.GrabFrame grabX=30*image_xscale grabY=1 grabZ=0 targetID.image_xscale=-image_xscale
	//enemy_heavythrow(1,1.5,3,2.1)
	}
	 if animFrame=clamp(animFrame,2,2.9)

	 if animFrame=clamp(animFrame,2,2.9) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.1 else animFrame+=0.1 if animFrame>2 {anim=39 ///Throw End
	grabX=0 grabY=0 grabZ=0 super+=0.25 targetID.hp-=0.1+extradamage
	super+=0.25*canSuper
	targetID.thrownAtk=1
	targetID.thrownAtkDmg=0.1 ///Damage when the thrown targets hits another enemy
atkcol_set(24,0,25,1.55,1,52)
	if targetID.hp<=0  PlayerScore+=targetID.points
	else PlayerScore+=targetID.pointshit

	if !place_free(x+1*image_xscale,y)
	targetID.x=x
	if !place_free(targetID.x+1*image_xscale,y)
	targetID.x=x
flashFX(x+39*image_xscale,y,z-77,spr_hitflash,0,0.5,0,1,1,c_white,1)
	with targetID
	{
	PlaySound(snd_hit)	
	
	event_user(11) ///Hit Enemy
	recovery=90 Throw=0
	hurt=1
	hit=1 hitBack=0 
	ground=0
	zSpeed=-6
	sentflying=-5*image_xscale///Throw Distance
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
	sprite_index=spr_hina_throwback
	image_speed=0
	if instance_exists(targetID) targetID.depth=depth-1
if targetID!=-1
	with targetID {hud_show() hpscan()}
	targetID.hit=2 targetID.ThrowDamage=0
	targetID.ground=0
	targetID.atk=0
	targetID.hurt=1 
	///Drag Enemy
		if targetID!=-1
	{
	 if animFrame=clamp(animFrame,0,0.9)
	{if image_index<1.5 image_index+=0.5 atk=0
	grabX=38*image_xscale grabY=0 grabZ=-52+targetID.height/2 targetID.image_xscale=-image_xscale 
	targetID.targetHeightHit=16
	}
	
	 if animFrame=clamp(animFrame,1,1.9)
	{	{enemy_heavythrow(1,1.5,3,2)}
		
		if image_index<3.5 if animFrame>1.5 image_index+=0.5 else image_index=2  atk=0
	   	grabY=0
	if image_index<3
	{grabX=6*image_xscale  grabZ=-80}
	else
	{grabX=-38*image_xscale  grabZ=-64}	
		if targetID!=-1
	{
	targetID.image_xscale=-image_xscale 
	targetID.targetHeightHit=18
	}
	}
	 if animFrame=clamp(animFrame,1.91,2.9) 
	{if image_index!=4 {

	hground=instance_create_depth(x-44*image_xscale,y,depth,oFlashFX)
	hground.sprite_index=spr_hitground hground.depth=99996
	hground.isDepth=0 hground.z=z

	oControl.quakeFXTime=10 PlaySoundNoStack(targetID.HitGround) PlaySoundNoStack(snd_hit) image_index=4 targetID.hp-=0.1
	targetID.animFrame=0 grabX=-44*image_xscale grabY=0 grabZ=0 targetID.image_xscale=-image_xscale
	targetID.targetHeightHit=6 with targetID event_user(11)
	}
	
	atkcol_set(-67,0,0,1.95,1,64) MoveType=1 damage=0.1

	if animFrame<2.5 atk=1 else atk=0 targetID.thrownAtk=1
	}
	}
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.1 else animFrame+=0.1 if animFrame>3.5 {anim=39 ///Throw End
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
	animFrame=3 image_yscale=1
	anim=5
	hud_show() hpscan()
	event_user(12)

	
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
	{if animFrame>3.5 image_index=5 else if image_index<4.5 image_index+=0.25 image_speed=0}
	if prevanim=38///Throw Back
	{if image_index>0.5 image_index-=0.25 image_speed=0}
	throwing=0 
	if prevanim!=38
	{animFrame+=0.1 if animFrame>4.5 {hurt=0 canmove=1 Throw=0}}
	else
	{animFrame+=0.1 if animFrame>5.5 {hurt=0 canmove=1 Throw=0}}
	}

	///Prepare To Jump
	if anim=21 or anim=22
	{
	if anim=22 if animFrame=0 {wobbleX=1.1 wobbleY=0.9}
	hit=0 MoveType=0 canmove=0  weaponBack=1
	weaponanim(weaponspr,weaponIndex,9,-31,90*image_xscale,weaponcolor)

	if carry=0
	{sprite_index=spr_hina_pjump image_index=3}
	else
	{item.carryZ=-16-76 image_index=5
	sprite_index=spr_hina_moveobject ///Carry Walk
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
	sprite_index=spr_hina_hammeratk
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
	sprite_index=spr_hina_item
	}
	else
	{sprite_index=spr_hina_item
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
	if animFrame<1 {sprite_index=spr_hina_item image_index=0} else {sprite_index=spr_hina_moveobject image_index=0}
		image_speed=0 atk=0 animFrame+=0.1 if animFrame>2 {hurt=0 atk=0 canmove=1 hit=0}}

	///Down Up Attack
	if anim=80
	{
	weaponBack=-1

	if animFrame=0 {PlaySound(snd_hina4)}
	if animFrame=1.2 {PlaySound(snd_swing)}

	sprite_index=spr_hina_downup

	if ground=1
	{
	if image_index<2.25
	image_index+=0.25 else image_index=2.25
	}else {afterimage_create(4,make_colour_rgb(247,008, 33),current_pal,my_pal_sprite,0) image_index+=0.75 if image_index=6.75 image_index=3}

	if animFrame<2 sentflying=0*image_xscale
	else {
	if zSpeed>0
	sentflying=lerp(sentflying,0,0.1) else { sentflying=6*image_xscale}
	}

	atkcol_set(0,0,-1,1.35,1,43)

	MoveType=1 damage=0.14


	if animFrame=clamp(animFrame,2,3) atk=1 else atk=0

	flashZ=32

	if animFrame=clamp(animFrame,2,4) {ground=0 z-=4 sentflying=6*image_xscale}

	frame_set(0,image_index,0.2)
	frame_set(1,image_index,0.2)
	frame_set(2,image_index,0.05)
	frame_set(3,image_index,0.1)
	frame_set(4,image_index,0.1)
	frame_set(5,image_index,0.0)

	if animFrame>4 and ground=1 {canmove=0 animFrame=0 anim=25}
	}

	///Side Attack
	if anim=81
	{if animFrame=2 {PlaySound(snd_hina5) PlaySound(snd_swing)}
	sprite_index=spr_hina_sideatk image_index=animFrame



	atkcol_set(65,0,0,2.85,1,46) MoveType=1 damage=0.14

	if animFrame=clamp(animFrame,2,3) atk=1 else atk=0

	if animFrame=clamp(animFrame,1,5)
afterimage_create(4,make_colour_rgb(247,008, 33),current_pal,my_pal_sprite,0)

	animFrame+=0.25

	if animFrame>5.75 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
			///Taunt
	if anim=83
{sprite_index=spr_hina_taunt
atk=0 
	frame_set(0,0,0.2)
	frame_set(1,1,0.1)
	frame_set(2,2,0.2) if animFrame=3 //-58
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
if animFrame>6.5 {canmove=1 atk=0}
}
	
		///Back Punch Attack
	if anim=84
{sprite_index=spr_hina_punchback

if animFrame=0 {PlaySound(snd_swing) PlaySound(snd_hina3)}
atkcol_set(-26,0,13,1.45,1,37) MoveType=1 damage=0.03
if animFrame=clamp(animFrame,2,3) {atk=1} else atk=0
	frame_set(0,0,0.2)
	frame_set(1,1,0.2)
	frame_set(2,2,0.2)
	frame_set(3,1,0.2)
if animFrame>3.5 {canmove=1 atk=0}

}

	///Charge Attack
	if anim=85
	{
	HitForce=-4
	HitForceZ=-4


	

	sprite_index=spr_hina_charge
		
	atkcol_set(161,0,31,7.55,1,57) MoveType=5 damage=0.2

	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if animFrame=2 
	{PlaySound(snd_hina5) PlaySound(snd_flame)
	oControl.quakeFXTime=8
	fir=instance_create_depth(x+81*image_xscale,y+1,depth,oAnimFX) fir.image_speed=0.5 
	fir.sprite_index=spr_hina_chargefire fir.z=z-59 fir.image_xscale=image_xscale
	}
	frame_set(2,2,0.5) if animFrame=clamp(animFrame,2,2.5) atk=1 else atk=0
	frame_set(3,3,0.1)
	frame_set(4,4,0.1)
	frame_set(5,5,0.05)

	if animFrame>5.75 {hurt=0 atk=0 canmove=1 hit=0}
	}
	
	/////Respawn
		if anim=255
{sprite_index=spr_hina_respawn

if animFrame=0
{
	fr=instance_create_depth(x,y+1,depth,oDisappearPart) fr.spdZ=0 fr.z=z-256 fr.angle=0
	fr.image_xscale=image_xscale fr.sprite_index=spr_hina_respawnfire fr.image_speed=0
	fr.disappearTime=0
}
frame_set(0,0,0.025)

if animFrame=1 { oControl.quakeFXTime=10
	PlaySoundNoStack(snd_explosion)
fr=instance_create_depth(x,y,depth,oAnimFX) fr.sprite_index=spr_burn
	PlaySound(ReturnVoice) visible=1 enemy_knoockdown() dead=0 hurt=0 DeathCryOnce=0}
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

	hina_weaponanim()

	animsetup_hina_super()
	
	

	///Stand
	///Move
	///Jump
	///Jump Forwards
	///Hit Stand
	///Hit Air
	///Ground-Get Up





}
