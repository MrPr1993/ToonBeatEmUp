enemy_endstep()
throw_step()


overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1

if specialcheck0!=0 specialcheck0-=1 //////Brain reload

if anim=10
{
if distance_to_point(targetEnemy.x,targetEnemy.y)>100
{anim=12 if specialcheck0!=0 if distance_to_point(targetEnemy.x,targetEnemy.y)>150 {anim=1 canmove=1} else anim=65} else 
if distance_to_point(targetEnemy.x,targetEnemy.y)>40
anim=65 else anim=11

if spawnID!=-1 if anim=65 if distance_to_point(targetEnemy.x,targetEnemy.y)<100 anim=11
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
weaponanim(weaponspr,weaponIndex,16,-47,81,weaponcolor)
if animFrame=clamp(animFrame,1,1.9)
weaponanim(weaponspr,weaponIndex,7,-47,72,weaponcolor)
if animFrame=clamp(animFrame,2,2.9)
{
weaponanim(weaponspr,weaponIndex,34,-48,0,weaponcolor)	
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
{
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

if sprite_index=StandSpr
{
weaponBack=1
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,15,-48,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16,-47,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,17,-46,90,weaponcolor)

}

if sprite_index=MoveSpr or sprite_index=RunSpr
{weaponBack=1
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,17,-47,90,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,17,-47-2,90,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,17,-47-1,90,weaponcolor)
}

if sprite_index=spr_martian_attack2
{
if image_index=clamp(image_index,0,0.9) weaponanim(weaponspr,weaponIndex,21,-42,98,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,21,-400002,98,weaponcolor)
}

if sprite_index=spr_martian_airkick
{
if image_index=clamp(image_index,0,0.9) weaponanim(weaponspr,weaponIndex,21,-42,98,weaponcolor)
if image_index=clamp(image_index,1,1.9) weaponanim(weaponspr,weaponIndex,-10,-58,98,weaponcolor)
}

if sprite_index=ThrownSpr
{weaponBack=0
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,36,-26,69,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16,-48,80,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,14,-48,80,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,18,-62,26,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,3,-50,147,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,5,-50,214,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,28,-18,102,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,3,-33,160,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,3,-3,177,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,14,-14,148,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,18,-45,74,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,19,-5,141,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,19,-5,90+141,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,19,-5,180+141,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,19,-5,270+141,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-24,-24,128,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,4,-39,74,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,4,-34,42,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,4,-8,-1,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,6,-2,1,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,6,-5,1,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,8,-1,3,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,8,-17,3,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,18,-48,90,weaponcolor)

}