/// @description Disappear


if act=1
{
if specialBossState=0
{
if disappearTime=0 instance_destroy()
else
{
	
if anim!=41 ///Check if it's frozen animation
{
alarm[2]=2
if visible=0 visible=1 else visible=0

flashFX(x,y+1,z-8,spr_ghost_poof,0,0.5,0,1,1,c_white,1)
fx.zSpeed=-1

weapon=instance_create_depth(x,y,depth,spawnID)
weapon.z=z-2 weapon.spdZ=-4 weapon.ground=0 weapon.airSpin=1
weapon.image_blend=weaponcolor
weapon.weaponLife=weaponLife
weapon.weapon_pal_sprite=weapon_pal_sprite
weapon.weapon_pal=weapon_pal

weaponspr=-1
weaponIndex=0
weaponX=0
weaponY=0
weaponangle=0
weaponcolor=c_white
weaponspawn=-1
spawnID=-1

instance_destroy()


}
else
{///Frozen Death
				///Spawn Ice Effect
frozen_fx()
visible=0 disappearTime=0 alarm[2]=90
}

}
}
else
event_user(15)///Special Boss State
}

