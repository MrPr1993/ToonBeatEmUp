/// @description Hammer Attack
function bahati_weaponanim() {
	if anim=26
	{
	weaponBack=1 dizzyAtk=stunWeapon
	damage=weaponDamage targetHeight=weapontargetHeight selfatk.isCut=weaponCut
	selfatk.recovery=10
	hit=0 MoveType=weaponHitType
	atkcol_set(weaponColPosX,weaponColPosY,weaponColPosZ,weaponColScaleX,weaponColScaleY,weaponColScaleZ)
	weaponAttack=1

	selfatk.HitSound=HitSound
	hitFXset(WspriteFX,WindexFX,WisDepth,WanimEnd,WspeedFX,WspriteTime,WxScaleFX,WyScaleFX,WblendFX,WalphaFX)


	if weapontype=0
	{
	////Hammer Swing
frame_set(0,0,0.25)
frame_set(1,1,0.25) if animFrame=2 PlaySound(WswingSound)
frame_set(2,0,0.25)
frame_set(3,2,0.1)
frame_set(4,3,0.1)
	if animFrame=clamp(animFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if animFrame=clamp(animFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if animFrame=clamp(animFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,90*image_xscale,weaponcolor)}
	if animFrame=clamp(animFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if animFrame=clamp(animFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}
	sprite_index=spr_bahati_hammeratk
	image_speed=0
	if animFrame=clamp(animFrame,3,3.9) atk=1 else atk=0
	if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}
	if weapontype=1
	{
	if animFrame=0 PlaySound(WswingSound)

	///Knife Stab

	if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,7,-49,0*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,32,-51,0*image_xscale,weaponcolor)

	sprite_index=spr_bahati_knife
	image_index=animFrame image_speed=0
	if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
	animFrame+=0.2 if animFrame>2.6 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

	///Machine Gun Fire
	if weapontype=2 or weapontype=3
	{
	if animFrame=0 weaponLife-=1
	if animFrame=0
	or animFrame=0.8 or animFrame=1.6 or animFrame=2.4  or animFrame=3.2
	{
	PlaySoundNoStack(snd_gun)
	flashFX(x+42*image_xscale,y,z-57,spr_gunflash,0,1,0,1,1,c_white,1)
	projectile_create(x+42*image_xscale,y,z-57,-8,spr_bullet,4*image_xscale,mask_small,spr_blood,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	}
	sprite_index=spr_bahati_gunstand
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	if image_index<2 image_index+=0.5 else image_index=0
	animFrame+=0.2 if animFrame>4 {hurt=0 atk=0 canmove=1 hit=0} atk=0
	}
	
			///Ice Gun Fire
	if weapontype=6
	{
	if animFrame=0 weaponLife-=1
	if animFrame=0
	{MoveType=weaponHitType
	PlaySoundNoStack(snd_laserbeam)
	flashFX(x+42*image_xscale,y,z-57,spr_icelaserfx,0,0.25,0,image_xscale,1,c_white,1)}
	sprite_index=spr_bahati_gunstand
	atkcol_set(207,0,48,9.65,1,17) 
	if animFrame=clamp(animFrame,0,1.5) {image_index=1 atk=1} else {image_index=0 atk=0}
	
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	animFrame+=0.2 if animFrame>4 {hurt=0 atk=0 canmove=1 hit=0}
	}

	}


}
