enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

if anim=0
{
	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,21,-36,90,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,22,-37,90,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,23,-36,90,weaponcolor)
}

if anim=1
{
////Walk
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,23,-35,90,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,23,-36,90,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,23,-37,90,weaponcolor)
	if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,23,-35,90,weaponcolor)
	if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,23,-36,90,weaponcolor)
	if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,23,-37,90,weaponcolor)
}

if weaponspr!=-1 rangeAtk=150 else rangeAtk=60 
	///Attacks
	if anim=10 ///Attack Stand
	{
	if weaponspr!=-1 anim=12 else anim=11
	}
	
	if anim=11
	{if AnimFrame=0 image_index=1 atkAddX+=16;
	 hit=0  sprite_index=spr_knight_attack1
MoveType=1 damage=0.1
	image_speed=0 if AnimFrame=1 PlaySound(snd_merman3)
	 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
if AnimFrame=1 image_index=0 if AnimFrame=2 image_index=3 if AnimFrame=1 image_index=0
	
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,18,-51,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-20,-59,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,31,-73,134,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,59,-49,0,weaponcolor)
	
	}
	

if anim=12
{//if AnimFrame=0 PlaySoundNoStack(snd_msswing2)
////Hammer Swing 
sprite_index=spr_knight_attack1

if AnimFrame=0 specialcheck1=1
weaponBack=1 dizzyAtk=stunWeapon
damage=weaponDamage targetHeight=weapontargetHeight selfatk.isCut=weaponCut
selfatk.recovery=10 
hit=0 MoveType=weaponHitType
atkcol_set(weaponColPosX+32,weaponColPosY,weaponColPosZ,weaponColScaleX,weaponColScaleY,weaponColScaleZ)
weaponAttack=1

selfatk.HitSound=HitSound
if weapontype!=-1 selfatk.HitSound=Whitsound
hitFXset(WspriteFX,WindexFX,WisDepth,WanimEnd,WspeedFX,WspriteTime,WxScaleFX,WyScaleFX,WblendFX,WalphaFX)

sentflying=0;

frame_set(0,0,0.1)
frame_set(1,1,0.5)
if AnimFrame=clamp(AnimFrame,2,2.2)
if specialcheck1=1
{PlaySound(snd_merman3)
//ground=0 sentflying=4*image_xscale zSpeed=-4 
specialcheck1=0 if distance_to_point(targetEnemy.x,targetEnemy.y)<=60 specialcheck1=2
}
frame_set(2,1,0.5)
frame_set(3,1,0.2) damage=0.2 
if AnimFrame=4 {PlaySoundNoStack(WswingSound) {selfatk.atk=1 if specialcheck1=0 sentflying=8*image_xscale}// oControl.quakeFXTime=10 
}if AnimFrame=clamp(AnimFrame,4,4.9) atk=1 else atk=0
frame_set(4,2,0.5)
frame_set(5,3,0.05)
frame_set(6,0,0.1)
if AnimFrame>6.5 canmove=1

if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,18,-51,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-20,-59,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,31,-73,134,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,59,-49,0,weaponcolor)
}

weaponBack=1

////Hit
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,29,-34,54,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,18,-41,76,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,18,-37,84,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,21,-73,-35,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,11,-52,83,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,7,-49,154,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,20,-4,53,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,12,-26,140,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,11,-7,161,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,-5,-16,64,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,23,-35,84,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,0,-3,84,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,14,-10,80+90,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,-11,-33,80+180,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-11,-7,80+270,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-32,-32,131,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,5,-32,54,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-16,-31,42,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-11,-13,-1,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-11,-2,27,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-11,-8,18,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-11,-4,18,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,-4,-17,11,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,23,-35,79,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,23,-36,90,weaponcolor)
}