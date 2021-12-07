/// @description Throw Weapon
function player_throwweapon() {
	{
	if weaponspawn!=-1 or carry=1
	if ground
	{
	if carry=1
	{
	player_throwitem()
	}
	else
	{
	if spawnID!=-1
	{
	{PlaySound(snd_swing) animFrame=1 anim=24 canmove=0}

	weapon=instance_create_depth(x,y,depth,spawnID)
	weapon.z=z-32 weapon.spdZ=0 weapon.ground=0 weapon.airSpin=1
	weapon.image_blend=weaponcolor weapon.attack=1 weapon.canGrav=0

	weapon.weaponLife=weaponLife

	weapon.spdX=6*image_xscale

	weapon.weapon_pal_sprite=weapon_pal_sprite
	weapon.weapon_pal=weapon_pal

	if weaponLife<=0 and weaponIsGun=0
	weapon.HitType=1

	weapon.thrown=1
	weaponspr=-1 weapon.image_xscale=image_xscale
	weaponIndex=0
	weaponX=0
	weaponY=0
	weaponangle=0
	weaponcolor=c_white
	weaponspawn=-1


	spawnID=-1
	}
	}
	}
	else
	player_attack()
	}




}
