/// @description Drop Weapon
if spawnID!=-1
{
weapon=instance_create_depth(x,y,depth,spawnID)
weapon.z=z-96 weapon.spdZ=-4 weapon.ground=0 weapon.airSpin=1
weapon.image_blend=weaponcolor weapon.image_xscale=image_xscale
weapon.weaponLife=weaponLife
weapon.weapon_pal_sprite=weapon_pal_sprite
weapon.weapon_pal=weapon_pal


weaponspr=-1 if !place_free(x,y-2) with weapon mask_index=spr_altselfatk
weaponIndex=0
weaponX=0
weaponY=0
weaponangle=0
weaponcolor=c_white
weaponspawn=-1


spawnID=-1
}


