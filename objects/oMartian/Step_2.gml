enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

if specialcheck0!=0 specialcheck0-=1 //////Brain reload

var _weaponang=0; var _weaponadd=0; if spawnID=oLaserGun {_weaponang=-90; _weaponadd=lengthdir_y(4,weaponangle)}

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
{anim=12 if specialcheck0!=0 if distance_to_point(targetEnemy.x,targetEnemy.y)>150 {anim=1 canmove=1} else anim=65} else 
if distance_to_point(targetEnemy.x,targetEnemy.y)>40
anim=65 else anim=11

if spawnID!=-1 {if anim=65 if distance_to_point(targetEnemy.x,targetEnemy.y)<100 anim=11

if spawnID=oLaserGun anim=1340
}

}

	if anim=11
	{
	sprite_index=AtkSpr	
		 hit=0  
MoveType=0 damage=0.1
	
	if spawnID!=-1
	{MoveType=3 HitSound=snd_shocked damage=0.15 atkcol_set(47,0,37,2.85,1,23) selfatk.HitSound=snd_shocked}
	
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
if spawnID!=-1 	 
	if animFrame=clamp(animFrame,0,0.9) or animFrame=clamp(animFrame,3,3.9)
weaponanim(weaponspr,weaponIndex,16+_weaponadd,-47+_weaponadd,81+_weaponang,weaponcolor)
if animFrame=clamp(animFrame,1,1.9)
weaponanim(weaponspr,weaponIndex,7+_weaponadd,-47+_weaponadd,72+_weaponang,weaponcolor)
if animFrame=clamp(animFrame,2,2.9)
{
weaponanim(weaponspr,weaponIndex,34+_weaponadd,-48+_weaponadd,0+_weaponang,weaponcolor)	
if spawnID!=-1
{sprite_index=spr_martian_attackb }
}
	

	image_index=animFrame image_speed=0

	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1
	if animFrame=2 if spawnID!=-1 sentflying=4*image_xscale
	
	if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}

if anim=12
{if animFrame=0 specialcheck0=300
sprite_index=spr_martian_attack2
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
frame_set(3,3,0.25)
frame_set(4,1,0.25)
frame_set(5,2,0.25)
frame_set(6,3,0.25)
frame_set(7,1,0.25)
frame_set(8,2,0.25)
frame_set(9,3,0.25)
frame_set(10,1,0.5)
frame_set(11,2,0.5)
frame_set(12,3,0.5)
frame_set(13,1,0.5)
frame_set(14,2,0.5)
frame_set(15,4,0.2) if animFrame=16
{PlaySoundNoStack(snd_alien2)
projectile_create(x+29*image_xscale,y,z-56,-32,spr_martian_stunproj,4*image_xscale,mask_small,spr_hitflash,0.05,0,2,0,0)
projectile.dizzyAtk=1
}
frame_set(16,5,0.5)
frame_set(17,6,0.05)
frame_set(18,0,0.5)
if animFrame>18.5 canmove=1
}

if anim=65 ///Air Kick
{if animFrame=0 sprite_index=spr_martian_airkick atkcol_set(28,0,10,1.45,1,29) MoveType=1
frame_set(0,0,0.05)
if animFrame=1 {image_index=1 sentflying=3*image_xscale PlaySoundNoStack(snd_swing) ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if animFrame>1.5 if ground {animFrame+=0.1 sprite_index=ThrownSpr image_index=10 sentflying=0 atk=0} else {sprite_index=spr_martian_airkick sentflying=3*image_xscale atk=1}

if animFrame>3 and ground {canmove=1}
}

if anim=1340 ///Gunfire
{var imgskp=0;
sprite_index=spr_martian_handgun
if animFrame<1
{
if animFrame<0.5 {weaponanim(weaponspr,weaponIndex,21,-69-1,63,weaponcolor) imgskp=1 }
else {weaponanim(weaponspr,weaponIndex,21,-45,0,weaponcolor)}}

frame_set(0,imgskp,0.05)
	if animFrame=1 {		PlaySound(snd_alien1)		
	flashFX(x+38*image_xscale,y,z-50,weaponProjFlashSpr,0,1,0,1,1,c_white,1)
	projectile_create(x+38*image_xscale,y,z-50,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.HitSound=weaponProjHitSnd
	}
	
	frame_set(1,1,0.25)
	frame_set(2,2,0.1)
	frame_set(3,2,0.25) if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0}
	
	if animFrame>1 {if animFrame<2 weaponanim(weaponspr,weaponIndex,21-1,-69,63,weaponcolor)
	else {weaponanim(weaponspr,weaponIndex,21,-69,63,weaponcolor)
	}}


}

if sprite_index=StandSpr
{
weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,15+_weaponadd,-48+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16+_weaponadd,-47+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,17+_weaponadd,-46+_weaponadd,90+_weaponang,weaponcolor)

}

if sprite_index=MoveSpr or sprite_index=RunSpr
{weaponBack=1
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,17+_weaponadd,-47+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,17+_weaponadd,-47-2+_weaponadd,90+_weaponang,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,17+_weaponadd,-47-1+_weaponadd,90+_weaponang,weaponcolor)
}

if sprite_index=spr_martian_attack2
{
if image_index=clamp(image_index,0,0.9) weaponanim(weaponspr,weaponIndex,21,-42,98+_weaponang,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,21,-400002,98+_weaponang,weaponcolor)
}

if sprite_index=spr_martian_airkick
{
if image_index=clamp(image_index,0,0.9) weaponanim(weaponspr,weaponIndex,21+_weaponadd,-42+_weaponadd,98+_weaponang,weaponcolor)
if image_index=clamp(image_index,1,1.9) weaponanim(weaponspr,weaponIndex,-10+_weaponadd,-58+_weaponadd,98+_weaponang,weaponcolor)
}

if sprite_index=ThrownSpr
{weaponBack=0
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,36+_weaponadd,-26+_weaponadd,69+_weaponang,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16+_weaponadd,-48+_weaponadd,80+_weaponang,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,14+_weaponadd,-48+_weaponadd,80+_weaponang,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,18+_weaponadd,-62+_weaponadd,26+_weaponang,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,3+_weaponadd,-50+_weaponadd,147+_weaponang,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,5+_weaponadd,-50+_weaponadd,214+_weaponang,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,28+_weaponadd,-18+_weaponadd,102+_weaponang,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,3+_weaponadd,-33+_weaponadd,160+_weaponang,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,3+_weaponadd,-3+_weaponadd,177+_weaponang,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,14+_weaponadd,-14+_weaponadd,148+_weaponang,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,18+_weaponadd,-45+_weaponadd,74+_weaponang,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,19+_weaponadd,-5+_weaponadd,141+_weaponang,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,19+_weaponadd,-5+_weaponadd,90+141+_weaponang,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,19+_weaponadd,-5+_weaponadd,180+141+_weaponang,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,19+_weaponadd,-5+_weaponadd,270+141+_weaponang,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-24+_weaponadd,-24+_weaponadd,128+_weaponang,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,4+_weaponadd,-39+_weaponadd,74+_weaponang,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,4+_weaponadd,-34+_weaponadd,42+_weaponang,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,4+_weaponadd,-8+_weaponadd,-1+_weaponang,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,6+_weaponadd,-2+_weaponadd,1+_weaponang,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,6+_weaponadd,-5+_weaponadd,1+_weaponang,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,8+_weaponadd,-1+_weaponadd,3+_weaponang,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,8+_weaponadd,-17+_weaponadd,3+_weaponang,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,18+_weaponadd,-48+_weaponadd,90+_weaponang,weaponcolor)

}

