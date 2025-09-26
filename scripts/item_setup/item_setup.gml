function item_setup() {
	enemyPortraitSpr=spr_miscface
	enemyPortraitIndex=0
	ScreenDestroy=0
	specialscript=-1;
	armorbreak=0;
	playerFrom=1
	
	height=32
	canGrav=1
	wThrowGrav=0
	gravLandHalt=0
	itemHP=0
	trainz=0
	
	altSpr=-1
	altInd=-1
	
specialitemreaction=-1;
	
	colorshade_setup()

dead=0

	canFX=1
	FX=0

weaponIndex=-1
throwHspd=6

spawnZAdd=0

	name="PIZZA"
	
	

	HitSound=snd_hit
	PickupSound=snd_food
	HoldType=0
fallHole=0
	canFlash=1
	HPDie=1

	neutralLand=0

	walkSpeed=2
	walkSpeedY=2
	walkMulX=1
	walkMulY=1

	hitSource=id

	wallCheck=0

	super=0

	spdX=0

	ground=1

	super=0

	z=0

	spdZ=0

	hp=0.3


	iscarry=0

	isdepth=0
	
	isEnemy=0

	carry=0
	carryZ=0

	carryID=-1

	height=0

	itsmask=spr_selfatk

	zAdd=0
	zAddGround=1

	points=0

	airSpin=0

	itemname=oPizza
	itemspawner=object_index

	attack=0

	damage=0




	atktype=0

	groundAdd=0

	HitType=2

	specialState1=0
	specialState2=0
	specialState3=0
	specialState4=0

	food=1

	thrown=0

	itemCentered=0
	timeAdd=0

	obCheck=1

	spinBack=0

	weaponExtraAngle=0
	angleImage=0
	angleFX=0
	groundRot=0

	angleSpin=90

	isCentered=0

	carriedID=-1

	throwGravity=0

isCut=0
weaponCut=0
gravZAdd=0.45

	canHit=1

	weaponLife=3

	weaponRange=100 ///For enemy AI if htey want to pick up this weapon

	isweapon=0
	weapontype=0
	weaponColPosX=48
	weaponColPosY=0
	weaponColPosZ=0
	weaponColScaleX=2
	weaponColScaleY=1
	weaponColScaleZ=64
	weaponDamage=0.2
	weapontargetHeight=2
	


	alarm[0]=60

	isBroken=0
	brokenCheck=0

	weaponIsGun=0

	stunWeapon=0

	disappearTime=24

	walkSpeed=0
	dashing=0
	sentflying=0



	///Hit FX
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
	WswingSound=snd_swing3
	weaponSpin=1
    WhitDisappear=0
	
	weaponProjSpr=spr_bullet
	weaponProjFlashSpr=spr_gunflash
	weaponProjTimes=3 ///machine Gun Only
	weaponProjEndDelay=0.1
	
	weaponProjSpd=1
	weaponProjHitSpr=spr_blood
	weaponProjHitSpd=0.25
	weaponProjSpd=4
	weaponProjMask=mask_small
	weaponProjSnd=snd_gun
	weaponProjHitSnd=snd_hit


	weapon_pal=0;
	weapon_pal_sprite=spr_weaponpal

	///Override stuff.
	override_surface=noone;
	override_pal_index=1;

	waterhoverSpr=spr_waterhover
	waterMax=0;
	waterSplash=0;
	
	

itemto=1;
itemeffect=function(){}

}
