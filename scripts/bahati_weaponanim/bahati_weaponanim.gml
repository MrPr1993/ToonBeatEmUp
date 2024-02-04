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
	if spawnID!=oFishingRod
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
	
	///Knife Stab
	if animFrame=0 
	{if weaponLife=1 {animFrame=0 anim=19930 exit;}
		
		
		PlaySound(WswingSound)
		}
		if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,7,-49,0*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,32,-51,0*image_xscale,weaponcolor)
	sprite_index=spr_bahati_knife
	image_index=animFrame image_speed=0
	if animFrame=clamp(animFrame,1,1.9) atk=1 else atk=0
	animFrame+=0.2 if animFrame>2.6 {hurt=0 atk=0 canmove=1 hit=0}
	
	
	}
	///Machine Gun Fire
	if weapontype=2 or weapontype=3
	{
	if animFrame=0 weaponLife-=1-1*global.CheatUnlock[10]
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
	
		///Hand Gun Fire
	if weapontype=4
	{
	if animFrame=0 {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		weaponLife-=1-1*global.CheatUnlock[10] PlaySound(snd_gun)
		
	flashFX(x+38*image_xscale,y,z-50,spr_gunflash,0,1,0,1,1,c_white,1)
	projectile_create(x+38*image_xscale,y,z-50,-8,spr_bullet,4*image_xscale,mask_small,spr_blood,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	}
		sprite_index=spr_bahati_handgun
	
	frame_set(0,1,0.25)
	frame_set(1,2,0.1)
	frame_set(2,2,0.25) if animFrame>2 {hurt=0 atk=0 canmove=1 hit=0}
	
	if image_index<2 weaponanim(weaponspr,weaponIndex,23,-44,90*image_xscale,weaponcolor)
	else {weaponanim(weaponspr,weaponIndex,22,-70,135*image_xscale,weaponcolor)
	if key_attack if weaponLife!=0 animFrame=0	
	}
	}

if weapontype=5 ////Whip
{
sprite_index=spr_bahati_whip
if animFrame=clamp(animFrame,0,0.9)
weaponanim(weaponspr,image_index+1,9,-68,0,weaponcolor)
if animFrame=clamp(animFrame,1,1.9)
weaponanim(weaponspr,image_index+1,14,-52,0,weaponcolor)
if animFrame=clamp(animFrame,2,2.9)
weaponanim(weaponspr,image_index+1,11,-52,0,weaponcolor)
if animFrame=clamp(animFrame,3,3.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if animFrame=clamp(animFrame,4,4.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if animFrame=clamp(animFrame,5,5.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if animFrame=clamp(animFrame,6,6.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
	frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.25) if animFrame=3 PlaySound(WswingSound)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
atkcol_set(93,0,27,5.25,1,38)
if animFrame=clamp(animFrame,5,5.5) atk=1 else atk=0
if animFrame>6.7 {canmove=1 anim=0}
}

		///Ice Gun Fire
	if weapontype=6
	{MoveType=weaponHitType
	if animFrame=0 weaponLife-=1-1*global.CheatUnlock[10]
	if animFrame=0
	{
	PlaySoundNoStack(snd_laserbeam)
	flashFX(x+42*image_xscale,y,z-57,spr_icelaserfx,0,0.25,0,image_xscale,1,c_white,1)}
	sprite_index=spr_bahati_gunstand
	atkcol_set(207,0,48,9.65,1,17) 
	if animFrame=clamp(animFrame,0,1.5) {image_index=1 atk=1} else {image_index=0 atk=0}
		if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	animFrame+=0.2 if animFrame>4 {hurt=0 atk=0 canmove=1 hit=0}
	}
	///Shotgun Fire
	if weapontype=7
	{atkcol_set(50,0,22,3.35,1,49)
	
	selfatk.recovery=10
	hit=0 selfatk.MoveType=1 selfatk.HitType=1 selfatk.damage=0.25
		selfatk.HitSound=-1 selfatk.spriteFX=spr_nospace
		
	if animFrame=0 weaponLife-=1-1*global.CheatUnlock[10]
	if animFrame=0 
	{ atk=1
	PlaySoundNoStack(snd_shotgun)
	flashFX(x+42*image_xscale,y,z-57,spr_shotgunfx,0,1,0,image_xscale,1,c_white,1)
	}
	if animFrame=0.25
	{
	projectile_create(x+42*image_xscale,y,z-57,-8,spr_bullet,4*image_xscale,mask_small,spr_blood,0.1,weaponHitType,weapontargetHeight,0,0)
	projectile_create(x+42*image_xscale,y,z-57,-8,spr_bullet,4*image_xscale,mask_small,spr_blood,0.1,weaponHitType,weapontargetHeight,0,0)
	projectile.spdZ=-2
	projectile_create(x+42*image_xscale,y,z-57,-8,spr_bullet,4*image_xscale,mask_small,spr_blood,0.1,weaponHitType,weapontargetHeight,0,0)
	projectile.spdZ=2
	}	
	sprite_index=spr_bahati_gunstand if animFrame<1 atk=1 else atk=0
	frame_set(0,2,0.25)
	frame_set(1,1,0.25)	
	frame_set(2,3,0.1)
	frame_set(3,0,0.1) 
	
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	if animFrame>3.9 {hurt=0 atk=0 canmove=1 hit=0}
	}
	
	}


}
