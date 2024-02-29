enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1



///Weapons
if anim=0
{
	////Stand
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,25,-39,-1,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,26,-38,-1,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,27,-36,-1,weaponcolor)
}

if anim=1
{
////Walk
	if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,26,-34,0,weaponcolor)
	if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,26,-37,0,weaponcolor)
	if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,26,-39,0,weaponcolor)
}


	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>50
	{anim=12
		if weaponspr!=-1 anim=810
		} else anim=11
	}
	
	if anim=11
	{weaponanim(weaponspr,weaponIndex,2004,-34,0,weaponcolor)
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

{if animFrame=0 sprite_index=spr_diver_airkick MoveType=1
frame_set(0,0,0.05)
if animFrame=0.5 sprite_index=spr_diver_airkick
if animFrame=1 {image_index=1 sentflying=2*image_xscale ground=0 zSpeed=-6}
frame_set(1,1,0.1)
if animFrame>1.5 if ground {animFrame+=0.1 sprite_index=spr_diver_airkick image_index=0 sentflying=0 atk=0} else {image_index=2 sprite_index=spr_diver_airkick sentflying=2*image_xscale atk=1}

if animFrame>3 and ground {canmove=1}
}
	if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,24,-34,0,weaponcolor)
	if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,24,-32,0,weaponcolor)
	if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,26,-51,0,weaponcolor)
	}
	
	///Diving Down
	if anim=13
	{z+=2 sprite_index=spr_diver_move image_index=2 zSpeed=0
		weaponanim(weaponspr,weaponIndex,26,-39,0,weaponcolor)
	if ground {canmove=1 recovery=0 immune=0 recoveryThrow=0 anim=0}
	}
	
	
weaponBack=1

if anim=810 ///Gun Fire
{

if animFrame=2.0
or animFrame=2.8
or animFrame=3.8
or animFrame=5.8
{
PlaySoundNoStack(snd_gun)
flashFX(x+42*image_xscale,y,z-44,spr_gunflash,0,1,0,1,1,c_white,1)
projectile_create(x+42*image_xscale,y,z-44,-10,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
projectile.HitSound=weaponProjHitSnd
}
	
sprite_index=spr_diver_fire
frame_set(0,0,0.1)
frame_set(1,1,0.025)
 //1

//	if animFrame=0
	//or animFrame=0.8 or animFrame=1.6 or animFrame=2.4  or animFrame=3.2
frame_set(2,1,0.2)
frame_set(3,2,0.05)
frame_set(4,1,0.2) //2 
frame_set(5,2,0.05)
frame_set(6,1,0.2) //3
frame_set(7,2,0.05) 
frame_set(8,1,0.2)
frame_set(9,1,0.025)
frame_set(10,0,0.25)


if animFrame>10.75 {atk=0 canmove=1}


if image_index=clamp(image_index,0,0.9)
{
	weaponanim(weaponspr,weaponIndex,25-7,-40,-1,weaponcolor)
	}
if image_index=clamp(image_index,1,1.9)
{
weaponanim(weaponspr,weaponIndex,25-3,-40,0*image_xscale,weaponcolor)
	}
if image_index=clamp(image_index,2,2.9)
{
	weaponanim(weaponspr,weaponIndex,25-5,-40,0*image_xscale,weaponcolor)
	}

}

////Hit
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,36,-29,0,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,24,-40,17,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,20,-38,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,11,-57,-34,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,11,-46,86,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-1,-48,129,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,27,-15,25,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,12,-40,80,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,26,-11,80,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,16,-22,-2,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,16,-42,-2,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,8,-23,78,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,0,-28,147,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,0,-15,200,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,1,-22,311,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-29,-26,392,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,5,-22,370,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,0,-22,356,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-13,-6,316,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,-13,-6,0,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,-13,-11,0,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-9,-7,0,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,-3,-16,360,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,17,-42,360,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,24,-40,360,weaponcolor)
}