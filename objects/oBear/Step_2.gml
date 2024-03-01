enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>50
	anim=12 else anim=11
	
	if anim=11 if weaponspr!=-1 anim=1100
	}
	
	if anim=11
	{
	 hit=0  sprite_index=AtkSpr
MoveType=0 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	}
	
	if anim=12
	{

{if animFrame=0 sprite_index=spr_bear_attack2 atkcol_set(8,0,10,1.45,1,29) MoveType=1
frame_set(0,0,0.05)
if animFrame=0.5 sprite_index=spr_bear_weapon
if animFrame=1 {image_index=1 sentflying=3*image_xscale ground=0 zSpeed=-6 PlaySoundNoStack(snd_bear3)}
frame_set(1,1,0.1)
if animFrame>1.5 if ground {animFrame+=0.1 sprite_index=spr_bear_weapon image_index=0 sentflying=0 atk=0} else {sprite_index=spr_bear_attack2 sentflying=3*image_xscale atk=1}

if animFrame>3 and ground {canmove=1}
}

if sprite_index=spr_bear_attack2
{
	if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,16,-27,67,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-18,-23,90,weaponcolor)
}
else
	weaponanim(weaponspr,weaponIndex,16,-22,67,weaponcolor)
	}
	
		///Diving Down
	if anim=13
	{sprite_index=spr_bear_front image_index=0
		
	if ground {animFrame=5 recovery=0 recoveryThrow=0 anim=10}
	}
	
	///Weapon Swing
	if anim=1100
	{sprite_index=spr_bear_weapon damage=weaponDamage
		atkcol_set(weaponColPosX,weaponColPosY,weaponColPosZ,weaponColScaleX,weaponColScaleY,weaponColScaleZ)
	atkcol_set(30,0,10,1.25,1,50)
	frame_set(0,0,0.1)
	frame_set(1,1,0.1) if animFrame=2 {PlaySoundNoStack(snd_swing) PlaySoundNoStack(snd_bear3)}
	frame_set(2,2,0.25) if animFrame=clamp(animFrame,3,3.9) atk=1 else atk=0
	frame_set(3,3,0.5)
	frame_set(4,3,0.1)
	frame_set(5,0,0.1)
	if animFrame>5.5 canmove=1
	
	if image_index=clamp(image_index,0,0.9)
	weaponanim(weaponspr,weaponIndex,16,-22,67,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-10,-36,189,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,11,-35,89,weaponcolor)
	if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,18,-30,0,weaponcolor)
	}
	
	
///Stand
if anim=0
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,16,-20,55,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,14,-20,45,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,14,-23,41,weaponcolor)
}
///Move
if anim=1
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,13,-22,26,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,11,-20,8,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,1,-20,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,-7,-22,-5,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,1,-20,0,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,10,-23,5,weaponcolor)
}
///Hit
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,7,-22,49,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,13,-23,60,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,12,-23,70,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,14,-27,59,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,12,-39,97,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,1,-57,165,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,4,-10,62,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,11,-15,23,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,13,-2,21,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,20,-17,88,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,16,-18,69,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,9,-5,126,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,9,-5,90+126,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,9,-5,180+126,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,9,-5,270+126,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-4,-18,132,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-4,-18,106,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-4,-15,86,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-13,-7,6,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-11,-7,6,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-13,-7,6,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-11,-7,6,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,-5,-19,4,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,15,-17,73,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,13,-22,81,weaponcolor)
}weaponBack=1
if sprite_index=spr_bear_front
{weaponBack=0
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,16,-20,90,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,16,-21,90,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,16,-22,90,weaponcolor)
}
	



