///character_setup()
///Default Stats
function character_setup() {
	canControl=0
	controller_setup()
	
	colorshade_setup()

specialtaunt=-1

playerGet=0

Cweather=0
///1 - cold - 2 - hot

	nameID="None"
	name="NULL"
	enemyPortraitSpr=spr_miscface
	enemyPortraitIndex=0
	enemyID=0

	characterID=instance_number(self)
	targetCheckID=0

	reFocusTime=0

	AIoff=0
	
	
	leaveMode=0
	enterAnim=11
	leaveAnim=-1
	leaveDir=1

	hp=1
	maxhp=1
	extraheal=0
	showhp=1
	showp1=0
	showmash=0
	hplayer=0
	hplayertake=0
	hpSet=0
	
	superarmor=0
	superarmorhp=5
	superarmortime=0
	superarmorFX=0
	
	waterbubble=0
	
	pow=0
	powcheck=0
	powlock=0
	powhp = 0.05 ///HP to lose if using Power before it fully charges

	PlayerScore=0
	PlayerLife=0

	///Physics---------------------------
	walkSpeed=2
	walkSpeedY=2
	totalSpeed=1
	totalSpeedY=1
	walkMulX=1
	walkMulY=1

	thrownAtk=1

	isDepth=1
	z=0
	trainz=0
	zSpeed=0
	ground=1
	fallMul=1
	jumpMul=1
	noHitFall=0
	hover=0
	hoverZ=0
	atkAir=0
	fallHole=0
	wallCheck=0
	ThrowDamage=0
	isHeavy=0
	throwHeavy=0
	Throw=0
	disappearTime=24
	roll=0
	targetHit=0
	targetHeight=0 ///So the opponent detects if it's a hight punch or a low kick, for example
	///0 - Bottom - 2 - Mid - 3 - High
	targetHeightHit=0

	thrownAtkDmg=0

	sentflying=0
	isGrabbed=0
	grabLockX=x
	grabLockY=0
	grabLockZ=0
	grabTest=0
    grabTime=2
	EgrabTime=2
	EgrabAnim=0
	EgrabFrame=0
	EgrabSentFlying=0
	EgrabZspeed=0
	EgrabzAdd=0
	EgrabzSpr=sprite_index
	EgrabzIG=0
	recovery=0
	recoveryThrow=0
	grabbed=0
	canbeGrabbed=1
	invincible=0
	immune=0
	///Turn it on and when the player hits the ground, they'll bounce a bit
	hasBounce=1
	canBounce=0
	canDrag=1
	///------------------------



	spawnID=-1 ///For character's Weapon when they pick it up; the weapon's data will be transferred to them and when they drop it that data will be transferred to it
	weaponspr=-1
	weaponIndex=0
	weaponX=0
	weaponY=0
	weaponangle=0
	weaponExtraAngle=0
	weaponcolor=c_white
	weaponLife=6
	weaponAttack=0
	weaponFlash=0
	weaponCanFlash=1
	weaponIsGun=0
	weaponDamage=0.2
	weapontargetHeight=2
	weapontype=0
	weaponspawn=-1
	weaponHitType=0
	weaponBack=0
	weaponColPosX=0
	weaponColPosY=0
	weaponColPosZ=0
	weaponColScaleX=0
	weaponColScaleY=0
	weaponColScaleZ=0
	weaponCut=0
	weaponSpin=1
	WhitDisappear=0
	armX=0
	armY=0
	////Weapon effects and sounds
	DeathCry=-1//snd_deathcry2
	DeathCryOnce=0
	HitGround=snd_hitground
	isEnemy=0
	enemyID=0
	DamageVoice1=-1
	DamageVoice2=-1
	DamageVoice3=-1
	SoundCount0=0
	SoundCount1=0
	SoundCount2=0
	SoundCount3=0
	SoundCount4=0

	WspriteFX=spr_hitflash
	WindexFX=0
	WisDepth=1
	WanimEnd=0
	WspeedFX=1
	WspriteTime=10
	WxScaleFX=1
	WyScaleFX=1
	WblendFX=c_white
	WalphaFX=1
	WswingSound=snd_hit
	Whitsound=snd_hit
	///Sounds and effects
	HitSound=snd_hit
	HitQuake=0
	flashX=0
	flashY=0
	flashZ=0

	hitBack=0
	hashitBack=1 ///This will be if you want the enemy to have a hit animation if hit behind

	/////UNUNSED
	hitBackFaceDown=0
	hashitBackFaceDown=1 ///This will be to make enemy face down when falling down while face up
	///

	groundRoll=0
	hasGroundRoll=1

	///For enemy AI
	////this is exclusively for the computer character
	isEnemy=0 //Set the enemy's varible to 1 to be the enemy - not here
	isBoss=0
	isBossCheck=0
	specialBossState=0
	waveNo=-1
	isWave=0

	AImode="Approach"
	AIchangetime=80
	if instance_exists(oPlayer)
	targetEnemy=oPlayer//oPlayer
	else targetEnemy=self
	targetX=targetEnemy.x
	targetY=targetEnemy.y
	targetXcheck=0
	targetYcheck=0

	affSave=oControl

	AtkTime=30
	canAttack=5///To start on what they do when they run through the screen
	canAttack5Move=-1;
	canGrab=0
	screenCheck=0
	if sprite_index=-1 sprite_index=mask_none
	if mask_index=-1 mask_index=mask_none
	if x>__view_get( e__VW.XView, 0 )+320 screenCheck=x-__view_get( e__VW.XView, 0 )+sprite_get_width(mask_index)+10
	if x<__view_get( e__VW.XView, 0 ) screenCheck=x-__view_get( e__VW.XView, 0 )+sprite_get_width(mask_index)+10
	
	
	
	canRun=1///For characters who lack that ability
	HasRunAnim=0
	RunAnimRecharge=0
	RunMoveSpeedDecrease=0
	alarmCheck1=30
	AIchoose=choose(0,1)
	act=1
	//////---------------------------------

	canmove=1
	automove=0
	automoveX=0
	automoveY=0
	automoveDist=8
	automoveFace=1
	automoveDash=0
	hurt=0

	canBlock=0

	anim=0
	prevanim=0


	charThrown=0

	dizzyAtk=0
	dizzyHit=0
	dizzyPercentage=0
	dizzyPercentageMin=0
	dizzyPercentageMax=100
	thrownDMG=0
	throwATK=0
	throwAtk=0
	cutDMG=0
	isCut=0
	hasCut=0
	cutSpawn=0
	cutSpr1=spr_viva_cut1
	cutSpr2=spr_viva_cut2
	SpookyMonthSpr=spr_spookymonth
	SpinningSpr=spr_viva_spin
	petSprLow=spr_viva_petlow
	petSprMid=spr_viva_petlow
	petSprHigh=spr_viva_petlow
	throwItemSpr=spr_viva_itemthrow
	meltSpr=spr_viva_melt
	spawnZAdd=0
	throwHspd=4
	frictionX=0
	frictionY=0
	wThrowGrav=0
	//WcanGrav=0
	
	enemyIdle1=spr_burglar_idle
	enemyIdle1Ind=0
	enemyIdle2=spr_burglar_idle
	enemyIdle2Ind=0
	enemyIdle3=spr_burglar_idle3
	enemyIdle3Ind=0
	enemyIdle3Spd=0.25
	enemyIdle4=spr_burglar_idle
	enemyIdle4Ind=0
	enemyIdle5=spr_burglar_idle
	enemyIdle5Ind=0
	
	
	hitCheck=0

	GrabFrame=24
	GrabFrameExtra=0

	dead=0

	isThrow=0
	throwing=0
	throwcombo=2
	superThrown=0
	dizFXAdd=4

	MoveType=0
	HitType=0
	HitForce=0
	HitForceZ=0
	HitForceReact=0
	HitForceReactZ=0

	ignore=0

	///Script Options - for when the player takes a hit they'll react to it
	HitReactionScript=-1 ///viva_hitreaction
	isSpawn=0
	///

	comboHit=0

	hit=0
	hittype=0
	character=0
	targetID=-1
	grabX=0
	grabY=0
	grabZ=0
	extraY=0

	animFrame=0
	animFrameSave=0
	image_speed=0
	atk=0
	Gatk=0

	isPlayer=0

	selfatk=instance_create_depth(x,y,0,oSelfAtk)
	selfatk.x=x selfatk.y=y selfatk.isPlayer=1
	selfatk.hitSource=id selfatk.selfsource=id
    hitSource=-1
	range=12
	rangeX=8
	rangeY=1
	rangeAtk=64

	///For attack colissions
	atkAddX=0
	atkAddY=0
	atkAddZ=0

	doubledash=0
	dashing=0
	
	dodge=0
	dodging=0
	dodgetime=0

	isIdle=0
	hasIdle=0
	idleRange=120

	throwStrengthTime=60
	throwStrengthMax=0

	super=0

	damage=0.08
	damageFall=4
	damageFallTime=0
	extradamage=0
	defense=1
	extradefense=0
	height=68


	canThrow=0

	overwriteAnim=0

	pointshit=0
	points=0

	hitSource=-1
	waiting=1
	canThrowAtk=0

	///When in car
	carMode=0
	carAnim=0
	carExTime=0


	stunWeapon=0

	noMask=0

	activeCheck=1
	isEnemy=0

	watchSourceX=0

	alarmSave[0]=0
	alarmSave[1]=0
	alarmSave[2]=0
	alarmSave[3]=0
	alarmSave[4]=0
	alarmSave[5]=0
	alarmSave[6]=0
	alarmSave[7]=0
	alarmSave[8]=0
	alarmSave[9]=0

	dropitem=0

	takingitem=0

	canAttack=1

	carry=0

	shake=0
	shaketime=0

	specialDead=0
	canSuper=0

	dashcheck=0

	specialFX=0
	
	fireFX=0;
	iceFX=0;
    rockFX=0;
    windFX=0;

	special0=0
	special1=0
	special2=0
	special3=0
	special4=0
	special5=0
	special6=0
	special7=0
	special8=0
	special9=0

	specialcheck0=0
	specialcheck1=0
	specialcheck2=0
	specialcheck3=0
	specialcheck4=0
	specialcheck5=0

	canact=1

	///This is built to set up the character's X and Y positions if grabbed.
	///Think MUGEN. Don't edit these; edit the Create of the characters; they're what you need
	SpritePos=0
	SpritePosType=0
	floorPos=0
	floorPosX[60]=0
	floorPosY[60]=0
	waistPos=0
	waistPosX[60]=0
	waistPosY[60]=0
	headPos=0
	headPosX[60]=0
	headPosY[60]=0

	areaEntry=1

	moveDirection=0

	///Palette Options
	current_pal=0;
	my_pal_sprite=spr_playerpal
	weapon_pal=0;
	weapon_pal_sprite=spr_weaponpal
	///Override stuff.
	override_surface=noone;
	override_pal_index=1;
	
	hasShadow=1;
	shadowSpr=spr_shadow
	waterhoverSpr=spr_waterhover
	waterMax=0;
	waterSplash=0;
	
	
	
	wobbleFX=0
	wobbleX=1
    wobbleY=1
	
chardraw=draw_enemy;

}
