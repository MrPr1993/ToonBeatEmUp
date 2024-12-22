enemy_step()

if hurt=1
or hp=0
{
///Special State to drop weapon
if anim=5
or anim=6
or anim=7
or anim=8
or dead=1
or hp=0
{
if weaponspr!=-1
{
weapon=instance_create_depth(x,y,depth,spawnID)
weapon.z=z-96 weapon.spdZ=-4 weapon.ground=0 weapon.airSpin=1
weapon.image_blend=weaponcolor
weapon.weaponLife=weaponLife
weapon.weapon_pal_sprite=weapon_pal_sprite
weapon.weapon_pal=weapon_pal
weapon.image_index=0
weaponspr=-1
weaponIndex=0
weaponX=0
weaponY=0
weaponangle=0
weaponcolor=c_white
weaponspawn=-1
spawnID=-1
}}
}