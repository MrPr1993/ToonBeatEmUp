// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function item_thrown(){
	if spawnID!=-1
	{
	weapon=instance_create_depth(x,y,depth,spawnID)
	weapon.z=z-48 weapon.spdZ=0 weapon.ground=0 weapon.airSpin=weaponSpin weapon.WhitDisappear=WhitDisappear
	weapon.image_blend=weaponcolor weapon.attack=1 weapon.canGrav=wThrowGrav
	weapon.spdZ+=spawnZAdd

	weapon.weaponLife=weaponLife

	weapon.spdX=throwHspd*image_xscale
	weapon.isEnemy=isEnemy

	weapon.weapon_pal_sprite=weapon_pal_sprite
	weapon.weapon_pal=weapon_pal

	if weaponLife<=0 and weaponIsGun=0
	weapon.HitType=1

weapon.ScreenDestroy=1

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