// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pick_item(){
	if carry=0
	{
			if AttackOrItem=0 or AttackOrItem=2
		{animFrame=0 anim=10 canmove=0}
		
		item=instance_place(x,y,oPizza)
	if item.ground=1 and item.isBroken=0
	{
			if AttackOrItem=1 or AttackOrItem=2
	{
		anim=25 animFrame=0 canmove=0
	if weaponspawn!=-1 and (item.iscarry=1 or item.isweapon=1) event_user(1)

	PlaySound(item.PickupSound)

	///Get Liftable Object
	if item.iscarry=1 if weaponspr!=-1 event_user(1)
	if item.iscarry=1 atk=0 item.hitSource=id
	{carry=item.iscarry item.carryID=id } if item.isweapon=1 
	{weaponspawn=item.itemname weaponLife=item.weaponLife }
	PlayerScore+=item.points



	oControl.showhp=0
	oControl.enemyhp=0 oControl.hpLerp=0 oControl.enemymaxhp=0
	oControl.enemyPortraitSpr=spr_miscface
	oControl.enemyPortraitIndex=0
	oControl.enemyname=item.name
	oControl.enemyShowTime=30
	oControl.hpLerp=0
	oControl.enemyhplayer=0
	oControl.enemyID=0
	with oControl
	{current_pal=0;
	my_pal_sprite=spr_enemypal
	}

	if item.isweapon=1 ///Get Weapon
	{
	spawnID=item.itemspawner weaponExtraAngle=item.weaponExtraAngle
	weaponspr=item.sprite_index
	if item.weaponIndex=-1	
	weaponIndex=item.image_index
	else weaponIndex=item.weaponIndex
	
	stunWeapon=item.stunWeapon
	weaponX=0 weaponHitType=item.HitType
	weaponY=-32
	weaponangle=45
	weaponcolor=item.image_blend
	weaponIsGun=item.weaponIsGun
	weapontype=item.weapontype
	weaponCut=item.weaponCut
	//0 - Heavy - 1 - Knife/Staff-type
    weaponCanFlash=item.canFlash
	weaponDamage=item.weaponDamage
	weapontargetHeight=item.weapontargetHeight

	weaponColPosX=item.weaponColPosX
	weaponColPosY=item.weaponColPosY
	weaponColPosZ=item.weaponColPosZ
	weaponColScaleX=item.weaponColScaleX
	weaponColScaleY=item.weaponColScaleY
	weaponColScaleZ=item.weaponColScaleZ
	throwHspd=item.throwHspd
	
	spawnZAdd=item.spawnZAdd
	wThrowGrav=item.wThrowGrav
	//WcanGrav=item.canGrav

	weapon_pal=item.weapon_pal
	weapon_pal_sprite=item.weapon_pal_sprite

	WspriteFX=item.WspriteFX
	WindexFX=item.WindexFX
	WisDepth=item.WisDepth
	WanimEnd=item.WanimEnd
	WspeedFX=item.WspeedFX
	WspriteTime=item.WspriteTime
	WxScaleFX=item.WxScaleFX
	WyScaleFX=item.WyScaleFX
	WblendFX=item.WblendFX
	WalphaFX=item.WalphaFX

	HitSound=item.HitSound
	WswingSound=item.WswingSound
	WhitDisappear=item.WhitDisappear
    weaponSpin=item.weaponSpin

	}else if item.food=0 spawnID=-1
	hp+=item.hp*maxhp//extraheal
	if item.timeAdd!=0
	{oControl.alarm[0]=120 
	oControl.time+=item.timeAdd if oControl.time>99 oControl.time=99
	}
	super+=item.super
	if item.food=0{
	item.carryID=self.id item.height=height}

	{

	with item if iscarry=0 instance_destroy()
	else {carry=1 }
	}

	}
	}
	else {

		
		}
	} else {dropitem=1 player_throwitem()}
}