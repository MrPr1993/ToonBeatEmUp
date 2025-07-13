/// @description Insert description here
// You can write your code in this editor


enemy_step()


if (hurt=1)
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
var spawnsc=0;

if current_pal=2 if dead=0 or hp>0 spawnsc=1;


if spawnsc
{
Scimitar=instance_create_depth(x,y+2,-1,oAnimatedObject) with Scimitar
{
	pointshit=0
	points=0
name="SCIMITAR"
weaponspr=spr_scimitar
enemyID=-1;
anim=5
}
Scimitar.sentflying=0

weaponspr=-1
}
else
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
}
}
}
}

if Scimitar!=-1 {if !instance_exists(Scimitar) Scimitar=-1; else {if hp=0 or dead=1 {Scimitar.hp=0; Scimitar.HitType=1; Scimitar=-1;}}}