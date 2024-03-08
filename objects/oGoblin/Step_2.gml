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
weaponanim(weaponspr,weaponIndex,17,-24,89,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,19,-22,89,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,19,-19,89,weaponcolor)
}

if anim=1
{
////Walk
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,25,-20,91,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,17,-16,77,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,0,-16,45,weaponcolor)
	if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,-9,-16,24,weaponcolor)
	if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-3,-16,35,weaponcolor)
	if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,15,-16,66,weaponcolor)
}
if weaponspr!=-1 rangeAtk=150 else rangeAtk=60 
	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>60
	{if weaponspr!=-1 anim=12 else anim=11} else anim=11
	}
	
	if anim=11
	{
	 hit=0  sprite_index=spr_goblin_kick
MoveType=2 damage=0.1
	image_index=animFrame image_speed=0 if animFrame=2 PlaySound(snd_mzombie5)
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,22,-18,90,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,15,-18,90,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,23,-18,87,weaponcolor)
	if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,21,-18,87,weaponcolor)
	
	}
	

if anim=12
{//if animFrame=0 PlaySoundNoStack(snd_msswing2)
////Hammer Swing 
sprite_index=spr_goblin_swing

if animFrame=0 specialcheck1=1
weaponBack=1 dizzyAtk=stunWeapon
damage=weaponDamage targetHeight=weapontargetHeight selfatk.isCut=weaponCut
selfatk.recovery=10 
hit=0 MoveType=weaponHitType
atkcol_set(weaponColPosX-8,weaponColPosY,weaponColPosZ,weaponColScaleX,weaponColScaleY,weaponColScaleZ)
weaponAttack=1

selfatk.HitSound=HitSound
if weapontype!=-1 selfatk.HitSound=Whitsound
hitFXset(WspriteFX,WindexFX,WisDepth,WanimEnd,WspeedFX,WspriteTime,WxScaleFX,WyScaleFX,WblendFX,WalphaFX)


frame_set(0,0,0.1)
frame_set(1,0,0.1)
if animFrame=clamp(animFrame,2,2.2)
if specialcheck1=1
{PlaySound(snd_mzombie5)
ground=0 sentflying=4*image_xscale zSpeed=-4 specialcheck1=0
}
frame_set(2,1,0.1)
frame_set(3,1,0.05) damage=0.2 
if animFrame=4 {PlaySoundNoStack(WswingSound) selfatk.atk=1// oControl.quakeFXTime=10 
}if animFrame=clamp(animFrame,4,4.9) atk=1 else atk=0
frame_set(4,2,0.5)
frame_set(5,3,0.05)
frame_set(6,0,0.1)
if animFrame>6.5 canmove=1

if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,19,-25,87,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-12,-64,149,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,25,-17,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,25,-18,0,weaponcolor)
}

weaponBack=1

////Hit
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,14,-18,62,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,18,-20,81,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,10,-20,86,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,16,-41,117,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,10,-34,159,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,10,-38,201,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,32,-10,119,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,12,-15,157,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,14,-3,161,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,14,-9,82,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,22,-17,88,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,-4,-1,54,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,-4,-1,90+54,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,-4,-1,180+54,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-4,-1,270+54,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-15,-14,135,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,4,-20,92,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,1,-21,65,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-10,-28,-18,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-10,-3,28,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-10,-19,2,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-10,0,14,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,-10,-19,-4,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,23,-16,89,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,19,-19,89,weaponcolor)
}