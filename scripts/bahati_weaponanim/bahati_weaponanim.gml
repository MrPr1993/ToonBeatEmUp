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
frame_set(1,1,0.25)  if AnimFrame=2 {if key_charge {if -key_left image_xscale=-1 if key_right image_xscale=1 AnimFrame-=0.25} else PlaySound(WswingSound)}
frame_set(2,0,0.25)
frame_set(3,2,0.1)
frame_set(4,3,0.1)
	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,180*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-35,-61,210*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-12,-75,90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-35,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,9,-31,45*image_xscale,weaponcolor)}
	sprite_index=spr_bahati_hammeratk
	image_speed=0
	if AnimFrame=clamp(AnimFrame,3,3.9) atk=1 else atk=0
	if AnimFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0}
	}
	if weapontype=1
	{
	
	///Knife Stab
	if AnimFrame=0 
	{if weaponLife=1 {AnimFrame=0 anim=19930 exit;}
		
		
		PlaySound(WswingSound)
		}
		if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,7,-49,0*image_xscale,weaponcolor)
	else
	weaponanim(weaponspr,weaponIndex,32,-51,0*image_xscale,weaponcolor)
	sprite_index=spr_bahati_knife
	image_index=AnimFrame image_speed=0
	if AnimFrame=clamp(AnimFrame,1,1.9) atk=1 else atk=0
	AnimFrame+=0.2 if AnimFrame>2.6 {hurt=0 atk=0 canmove=1 hit=0}
	
	
	}
	///Machine Gun Fire
	if weapontype=2 or weapontype=3
	{
	if AnimFrame=0 weaponLife-=1-1*global.Cheat[10]*global.NoCheat
	if AnimFrame=0
	or AnimFrame=0.8 or AnimFrame=1.6 or AnimFrame=2.4  or AnimFrame=3.2
	{
	PlaySoundNoStack(weaponProjSnd)
	flashFX(x+42*image_xscale,y,z-57,weaponProjFlashSpr,0,1,0,1,1,c_white,1)
	projectile_create(x+42*image_xscale,y,z-57,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.HitSound=weaponProjHitSnd
	}
	sprite_index=spr_bahati_gunstand
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	if image_index<2 image_index+=0.5 else image_index=0
	AnimFrame+=0.2 if AnimFrame>4 {hurt=0 atk=0 canmove=1 hit=0} atk=0
	}
	
		///Hand Gun Fire
	if weapontype=4
	{
	if AnimFrame=0 {
		if -key_left image_xscale=-1 if key_right image_xscale=1
		weaponLife-=1-1*global.Cheat[10]*global.NoCheat PlaySound(weaponProjSnd)
		
	flashFX(x+38*image_xscale,y,z-50,weaponProjFlashSpr,0,1,0,1,1,c_white,1)
	projectile_create(x+38*image_xscale,y,z-50,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.HitSound=weaponProjHitSnd
	}
		sprite_index=spr_bahati_handgun
	
	frame_set(0,1,0.25)
	frame_set(1,2,0.1)
	frame_set(2,2,0.25) if AnimFrame>2 {hurt=0 atk=0 canmove=1 hit=0}
	
	if image_index<2 weaponanim(weaponspr,weaponIndex,23,-44,90*image_xscale,weaponcolor)
	else {weaponanim(weaponspr,weaponIndex,22,-70,135*image_xscale,weaponcolor)
	if key_attack if weaponLife!=0 AnimFrame=0	
	}
	}

if weapontype=5 ////Whip
{
sprite_index=spr_bahati_whip
if AnimFrame=clamp(AnimFrame,0,0.9)
weaponanim(weaponspr,image_index+1,9,-68,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,1,1.9)
weaponanim(weaponspr,image_index+1,14,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,2,2.9)
weaponanim(weaponspr,image_index+1,11,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,3,3.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,4,4.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,5,5.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if AnimFrame=clamp(AnimFrame,6,6.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
	frame_set(0,0,0.25)
frame_set(1,1,0.25) 
frame_set(2,2,0.25) if AnimFrame=3 PlaySound(WswingSound)
frame_set(3,3,0.25)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
atkcol_set(93,0,27,5.25,1,38)
if AnimFrame=clamp(AnimFrame,5,5.5) atk=1 else atk=0
if AnimFrame>6.7 {canmove=1 anim=0}
}

		///Ice Gun Fire
	if weapontype=6
	{MoveType=weaponHitType
	if AnimFrame=0 weaponLife-=1-1*global.Cheat[10]*global.NoCheat
	if AnimFrame=0
	{
	PlaySoundNoStack(weaponProjSnd)
	flashFX(x+42*image_xscale,y,z-57,spr_icelaserfx,0,0.25,0,image_xscale,1,c_white,1)}
	sprite_index=spr_bahati_gunstand
	atkcol_set(207,0,48,9.65,1,17) 
	if AnimFrame=clamp(AnimFrame,0,1.5) {image_index=1 atk=1} else {image_index=0 atk=0}
		if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	AnimFrame+=0.2 if AnimFrame>4 {hurt=0 atk=0 canmove=1 hit=0}
	}
	///Shotgun Fire
	if weapontype=7
	{atkcol_set(50,0,22,3.35,1,49)
	
	selfatk.recovery=10
	hit=0 selfatk.MoveType=1 selfatk.HitType=1 selfatk.damage=0.25
		selfatk.HitSound=-1 selfatk.spriteFX=spr_nospace
		
	if AnimFrame=0 weaponLife-=1-1*global.Cheat[10]*global.NoCheat
	if AnimFrame=0 
	{ atk=1
	PlaySoundNoStack(weaponProjSnd)
	flashFX(x+42*image_xscale,y,z-57,weaponProjFlashSpr,0,1,0,image_xscale,1,c_white,1)
	}
	if AnimFrame=0.25
	{
	projectile_create(x+42*image_xscale,y,z-57,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.HitSound=weaponProjHitSnd
	projectile_create(x+42*image_xscale,y,z-57,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.spdZ=-2 projectile.HitSound=weaponProjHitSnd
	projectile_create(x+42*image_xscale,y,z-57,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.spdZ=2 projectile.HitSound=weaponProjHitSnd
	}	
	sprite_index=spr_bahati_gunstand if AnimFrame<1 atk=1 else atk=0
	frame_set(0,2,0.25)
	frame_set(1,1,0.25)	
	frame_set(2,3,0.1)
	frame_set(3,0,0.1) 
	
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	if AnimFrame>3.9 {hurt=0 atk=0 canmove=1 hit=0}
	}
	
		///Baseball Bat/Swinging Weapon
	if weapontype=19935
	{frame_set(0,0,0.1) frame_set(1,1,0.25)
if AnimFrame=2 {if key_charge {if -key_left image_xscale=-1 if key_right image_xscale=1 AnimFrame-=0.25}}
frame_set(2,2,0.25) if AnimFrame=3 {PlaySound(WswingSound)}
frame_set(3,3,0.25) frame_set(4,4,0.1) frame_set(5,3,0.25)

if AnimFrame=clamp(AnimFrame,2,2.9) weaponBack=0 else weaponBack=1

	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,-13,-55,76*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-20,-48,95*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,5,-36,-90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,21,-42,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,-15,-57,137*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,5,5.9)
	{weaponanim(weaponspr,weaponIndex,21,-42,90*image_xscale,weaponcolor)}
	sprite_index=spr_bahati_batter
	image_speed=0
	if AnimFrame=clamp(AnimFrame,3,3.9) atk=1 else atk=0
	if AnimFrame>5.5 {hurt=0 atk=0 canmove=1 hit=0}
	}

////Small Swinging Weapon
	if weapontype=19936
	{frame_set(0,0,0.25) frame_set(1,2,0.25)
if AnimFrame=2 {if key_charge {if -key_left image_xscale=-1 if key_right image_xscale=1 AnimFrame-=0.25}}
frame_set(2,1,0.25) if AnimFrame=3 {PlaySound(WswingSound)}
frame_set(3,3,0.25) frame_set(4,7,0.1) frame_set(5,5,0.25)

atkAddX+=32; ///S

if AnimFrame=clamp(AnimFrame,2,2.9) weaponBack=0 else weaponBack=1

	if AnimFrame=clamp(AnimFrame,0,0.9)
	{weaponanim(weaponspr,weaponIndex,9,-68,90*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,1,1.9)
	{weaponanim(weaponspr,weaponIndex,-28,-82,129*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,2,2.9)
	{weaponanim(weaponspr,weaponIndex,-23,-82,102*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,3,3.9)
	{weaponanim(weaponspr,weaponIndex,54,-51,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,4,4.9)
	{weaponanim(weaponspr,weaponIndex,53,-47,0*image_xscale,weaponcolor)}
	if AnimFrame=clamp(AnimFrame,5,5.9)
	{weaponanim(weaponspr,weaponIndex,25,-66,111*image_xscale,weaponcolor)}
	sprite_index=spr_bahati_whip
	image_speed=0
	if AnimFrame=clamp(AnimFrame,3,3.9) atk=1 else atk=0
	if AnimFrame>5.5 {hurt=0 atk=0 canmove=1 hit=0}
	}

///Flamethrower
	if weapontype=19945
	{
	if AnimFrame=0 {weaponLife-=1-1*global.Cheat[10]*global.NoCheat specialtimes[6]=0 specialtimes[5]=0}
	specialtimes[6]+=0.25 if specialtimes[6]=2 specialtimes[6]=0
	sprite_index=spr_bahati_gunstand if AnimFrame<1 atk=1 else atk=0
	frame_set(0,0,0.5) if AnimFrame=1 {
		PlaySoundNoStack(weaponProjSnd)
	}
	frame_set(1,1+specialtimes[6],0.025) if AnimFrame=clamp(AnimFrame,1,2) {atk=1
		if specialtimes[5]=0 {specialtimes[5]=1 
flame=instance_create_depth(x+38*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
with flame	{z=-57 image_speed=0.5 sprite_index=spr_hina_firebreath alarm[0]=0}
	} specialtimes[5]=1 if !instance_exists(flame) 	
	{
	flame=instance_create_depth(x+38*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
with flame	{z=-57 image_speed=0.5 sprite_index=spr_hina_firebreath alarm[0]=0}
	}}		
		 else atk=0
		 if AnimFrame=2
		 {
		flame=instance_create_depth(x+38*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
with flame	{z=-57 image_speed=0.5 sprite_index=spr_hina_firebreath2 alarm[0]=0}
		 }
	frame_set(2,0,0.1)
	frame_set(3,0,0.1) 
	
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	if AnimFrame>3.9 {hurt=0 atk=0 canmove=1 hit=0}
	}	

///Ice Gun
	if weapontype=19946
	{
	if AnimFrame=0 {weaponLife-=1-1*global.Cheat[10]*global.NoCheat specialtimes[6]=0 specialtimes[5]=0}
	specialtimes[6]+=0.25 if specialtimes[6]=2 specialtimes[6]=0
	sprite_index=spr_bahati_gunstand if AnimFrame<1 atk=1 else atk=0
	frame_set(0,0,0.5) if AnimFrame=1 {
		PlaySoundNoStack(weaponProjSnd)
	}
	frame_set(1,1+specialtimes[6],0.025) if AnimFrame=clamp(AnimFrame,1,2) {atk=1
		if specialtimes[5]=0 {specialtimes[5]=1 
flame=instance_create_depth(x+38*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
with flame	{z=-57 image_speed=0.5 sprite_index=spr_robot_ice alarm[0]=0}
	} specialtimes[5]=1 if !instance_exists(flame) 	
	{
	flame=instance_create_depth(x+38*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
with flame	{z=-57 image_speed=0.25 sprite_index=spr_robot_ice image_index=4 alarm[0]=0}
	}}		
		 else atk=0
		 if AnimFrame=2
		 {
		flame=instance_create_depth(x+38*image_xscale,y,depth,oFlashFX) flame.image_xscale=image_xscale
with flame	{z=-57 image_speed=0 sprite_index=spr_robot_ice image_index=2 alarm[0]=5}
		 }
	frame_set(2,0,0.1)
	frame_set(3,0,0.1) 
	
	if image_index<1 weaponanim(weaponspr,weaponIndex,6,-50,90*image_xscale,weaponcolor)
	else weaponanim(weaponspr,weaponIndex,6-1,-50,90*image_xscale,weaponcolor)
	if AnimFrame>3.9 {hurt=0 atk=0 canmove=1 hit=0}
	}		

	}


}
