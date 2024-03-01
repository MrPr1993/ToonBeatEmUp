enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

	///Attacks
	if anim=10 ///Attack Stand
	{
	var distcheck=60;
	if weaponspr2=spr_twirlstick distcheck=90
	if weaponspr2=spr_jugglepin distcheck=150
	
	if distance_to_point(targetEnemy.x,targetEnemy.y)>distcheck
	anim=12 else anim=11
	
	if anim=11 {if weaponspr2=-1 {weaponspr2=weaponspr weaponspr=-1} if weaponspr!=-1 anim=1100
	if weaponspr2!=-1 { anim=1100	}
	}
	}
	
	if anim=11
	{
	 hit=0  sprite_index=spr_clown_attack
MoveType=0 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.2) atk=1 else atk=0
	if animFrame=clamp(animFrame,0,1.5)
	animFrame+=0.2 else animFrame+=0.1 if animFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	

	if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,29,-73,450,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-17,-86,439,weaponcolor)}
	if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,18,-56,443,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-29,-78,453,weaponcolor)}
	if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,44,-47,356,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-16,-84,464,weaponcolor)}
	if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,44,-72,439,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-28,-68,456,weaponcolor)}
	}
	
	if anim=12
	{
	frame_set(0,0,0.05)	if animFrame<1 {z-=2}
	frame_set(1,1,0.1) if animFrame=clamp(animFrame,1,2) sentflying=6*image_xscale
	else sentflying=0
	if sentflying=6*image_xscale {animFrame=1
		if (image_xscale=1 and x=clamp(x,targetEnemy.x-32,targetEnemy.x))	
		or (image_xscale=-1 and x=clamp(x,targetEnemy.x,targetEnemy.x+32))	
		{sentflying=0 animFrame=2}
		}
    frame_set(2,2,0.5)
	frame_set(3,3,0.1)
	frame_set(4,4,0.1)
	
	 hit=0  sprite_index=spr_clown_attack2
MoveType=1 damage=0.1
	image_index=animFrame image_speed=0
	 if animFrame=clamp(animFrame,2,2.5) atk=1 else atk=0
 if animFrame>4.5 {hurt=0 atk=0 canmove=1 hit=0
	}
	
		if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,31,-87,456,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-28,-73,459,weaponcolor)}
		if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,32,-75,463,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-15,-91,449,weaponcolor)}
		if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,13,-79,509,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-33,-62,491,weaponcolor)}
		if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,13,-77,509,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-32,-61,491,weaponcolor)}
		if image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,22,-87,485,weaponcolor)
weaponanim(weaponspr,weaponIndex,-32,-64,477,weaponcolor)}
		
	}
	
		///Diving Down
	if anim=13
	{z+=2 sprite_index=spr_clown_drop image_index+=0.2 zSpeed=0
		
	if ground {animFrame=5 recovery=0 recoveryThrow=0 anim=10}
	
	weaponanim(weaponspr,weaponIndex,8,-41,-47*image_xscale,weaponcolor)
	weaponanim_2(weaponspr2,weaponIndex2,-3,-38,-54*image_xscale,weaponcolor)
	}
	
///Weapons
if anim=1100
{var weaponhide1=0; var weaponhide2=0;
	MoveType=1 damage=0.25
 hit=0  sprite_index=spr_clown_weapon atkcol_set(60,0,5,1.95,1,65)
frame_set(0,0,0.25)
frame_set(1,1,0.25)
frame_set(2,2,0.25) 
frame_set(3,3,0.5) 
if animFrame=4 { specialtimes[0]=0
PlaySoundNoStack(snd_swing2)

if weaponspr2=spr_jugglepin
{animFrame=4.5 

projectile_create(x+54*image_xscale,y,z-41,16,spr_jugglepin,4*image_xscale,mask_small,spr_hitflash2,0.2,1,1,4,-4)
weaponspr2=-1
}
}
if animFrame=clamp(animFrame,4,5)
{atk=0
	
	
if weaponspr2=spr_twirlstick {atk=1 specialtimes[0]-=45}
else {atk=0 
	weaponhide2=1;
	}
}
frame_set(4,4,0.01) if animFrame=5 {
if weaponspr2=-1 {weaponspr2=weaponspr weaponspr=-1}
}
frame_set(5,0,0.25)
if animFrame>5.7 canmove=1
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,36,-83,84,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-21,-75,92,weaponcolor)}
if image_index=clamp(image_index,1,1.9){
weaponanim(weaponspr,weaponIndex,32,-74,79,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-19,-90,92,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,-2,-34,97,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-15,-79,114,weaponcolor)}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,9,-34,98,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,57,-39,specialtimes[0],weaponcolor)}
if image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,6,-34+9999*weaponhide1,90,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,54+9999*weaponhide2,-41,specialtimes[0],weaponcolor)}
}

	
///Stand
if anim=0
{
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,34,-87,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-26,-67,86,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,35,-86,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-25,-67,86,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,33,-86,86,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-27,-68,86,weaponcolor)}

}
///Move
if anim=1
{
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,31,-83,90,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-31,-64,93,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,31,-88,93,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-30,-74,90,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,33,-76,102,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-23,-88,81,weaponcolor)}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,33,-71,109,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-15,-90,74,weaponcolor)}
if image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,33,-79,103,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-20,-90,79,weaponcolor)}
if image_index=clamp(image_index,5,5.9)
{weaponanim(weaponspr,weaponIndex,34,-82,97,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-26,-78,84,weaponcolor)}

}
///Hit
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,42,-25,43,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,34,-21,426,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,33,-89,70,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-27,-69,459,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,17,-89,104,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-39,-69,467,weaponcolor)}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,35,-73,84,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,11,-61,426,weaponcolor)}
if image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,19,-61,131,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,19,-61,131,weaponcolor)}
if image_index=clamp(image_index,5,5.9)
{weaponanim(weaponspr,weaponIndex,3,-75,172,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,3,-75,172,weaponcolor)}
if image_index=clamp(image_index,6,6.9)
{weaponanim(weaponspr,weaponIndex,45,-8,73,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-42,-8,430,weaponcolor)}
if image_index=clamp(image_index,7,7.9)
{weaponanim(weaponspr,weaponIndex,17,-23,139,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,19,-21,496,weaponcolor)}
if image_index=clamp(image_index,8,8.9)
{weaponanim(weaponspr,weaponIndex,17,-5,161,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,19,-1,541,weaponcolor)}
if image_index=clamp(image_index,9,9.9)
{weaponanim(weaponspr,weaponIndex,17,-41,146,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,17,-41,146,weaponcolor)}
if image_index=clamp(image_index,10,10.9)
{weaponanim(weaponspr,weaponIndex,36,-84,90,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-23,-66,451,weaponcolor)}
if image_index=clamp(image_index,11,11.9)
{weaponanim(weaponspr,weaponIndex,24,-11,155,weaponcolor)//roll
weaponanim_2(weaponspr2,weaponIndex2,24,-11,155,weaponcolor)}//roll
if image_index=clamp(image_index,12,12.9)
{weaponanim(weaponspr,weaponIndex,27,-48,230,weaponcolor)//roll
weaponanim_2(weaponspr2,weaponIndex2,27,-48,230,weaponcolor)}//roll
if image_index=clamp(image_index,13,13.9)
{weaponanim(weaponspr,weaponIndex,-8,-48,311,weaponcolor)//roll
weaponanim_2(weaponspr2,weaponIndex2,-8,-48,311,weaponcolor)}//roll
if image_index=clamp(image_index,14,14.9)
{
weaponanim(weaponspr,weaponIndex,-6,-11,410,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-6,-11,410,weaponcolor)
}
if image_index=clamp(image_index,15,15.9)
{
weaponanim(weaponspr,weaponIndex,-29,-25,476,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-21,-21,515,weaponcolor)
}
if image_index=clamp(image_index,16,16.9)
{weaponanim(weaponspr,weaponIndex,16,-40,440,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,16,-40,440,weaponcolor)}
if image_index=clamp(image_index,17,17.9)
{weaponanim(weaponspr,weaponIndex,9,-31,424,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,9,-31,424,weaponcolor)}
if image_index=clamp(image_index,18,18.9)
{weaponanim(weaponspr,weaponIndex,-11,-11,373,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-11,-11,373,weaponcolor)}
if image_index=clamp(image_index,19,19.9)
{weaponanim(weaponspr,weaponIndex,-14,0,388,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-12,0,369,weaponcolor)}
if image_index=clamp(image_index,20,20.9)
{weaponanim(weaponspr,weaponIndex,-14,-21,359,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-12,-24,344,weaponcolor)}
if image_index=clamp(image_index,21,21.9)
{weaponanim(weaponspr,weaponIndex,-12,-1,379,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-12,0,369,weaponcolor)}
if image_index=clamp(image_index,22,22.9)
{weaponanim(weaponspr,weaponIndex,24,-14,364,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,14,-36,328,weaponcolor)}
if image_index=clamp(image_index,23,23.9)
{weaponanim(weaponspr,weaponIndex,35,-81,450,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-23,-64,451,weaponcolor)}
if image_index=clamp(image_index,24,24.9)
{weaponanim(weaponspr,weaponIndex,33,-87,450,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-25,-68,451,weaponcolor)}
}weaponBack=1 weaponBack2=0
if sprite_index=spr_bear_front
{weaponBack=0
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,19,-62,image_xscale,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-19,-62,image_xscale,weaponcolor)}
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,19,-63,image_xscale,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-19,-63,image_xscale,weaponcolor)}
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
{weaponanim(weaponspr,weaponIndex,19,-64,image_xscale,weaponcolor)
weaponanim_2(weaponspr2,weaponIndex2,-19,-64,image_xscale,weaponcolor)}
}