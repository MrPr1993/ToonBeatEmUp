enemy_endstep()
throw_step()

overwriteAttack=1
overwriteAttack1=1
overwriteAttack2=1
overwriteAttack3=1

weaponanim(weaponspr,weaponIndex,-2100,-67,90,weaponcolor)

if weaponspr!=-1 rangeAtk=150 else rangeAtk=60 
	///Attacks
	if anim=10 ///Attack Stand
	{
	if distance_to_point(targetEnemy.x,targetEnemy.y)>60
	{if weaponspr!=-1 anim=12 else anim=11} else anim=11
	
	}
	
	if anim=11
	{
	 hit=0  sprite_index=spr_cowboy_attack
MoveType=1 damage=0.1
	image_index=AnimFrame image_speed=0 if AnimFrame=1 PlaySoundNoStack(snd_enemy1)
	 if AnimFrame=clamp(AnimFrame,2,2.2) atk=1 else atk=0
	if AnimFrame=clamp(AnimFrame,0,1.5)
	AnimFrame+=0.2 else AnimFrame+=0.1 if AnimFrame>3.5 {hurt=0 atk=0 canmove=1 hit=0
	}

	}

	if anim=12
	{
	if AnimFrame=0 {specialtimes[3]=0; if current_pal=6 specialtimes[3]=2}
	 hit=0  sprite_index=spr_cowboy_shoot

frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1) if AnimFrame=3
{PlaySound(weaponProjSnd)
	flashFX(x+32*image_xscale,y,z-45,weaponProjFlashSpr,0,1,0,1,1,c_white,1)
	projectile_create(x+32*image_xscale,y,z-45,-8,weaponProjSpr,weaponProjSpd*image_xscale,weaponProjMask,weaponProjHitSpr,weaponDamage,weaponHitType,weapontargetHeight,0,0)
	projectile.HitSound=weaponProjHitSnd
}
frame_set(3,3,0.1) if AnimFrame>=4 {if specialtimes[3]!=0 {specialtimes[3]-=1 AnimFrame=1.9}}
frame_set(4,2,0.1)
frame_set(5,1,0.1)
frame_set(6,0,0.1)
if AnimFrame>=7 {canmove=1}

if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,-21,-67,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,14,-38,0,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,13,-38,0,weaponcolor)

	}