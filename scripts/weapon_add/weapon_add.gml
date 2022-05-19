// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function weapon_add(){
	
var wpadd=argument0
	
if wpadd="HAMMER"
{
spawnID=oHammer
weaponspr=spr_hammer
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.2
weapontargetHeight=2
weapontype=0
weaponHitType=1
WswingSound=snd_swing3
}

if wpadd="PIPE"
weapon_setup(oPipe,spr_pipe,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)

if wpadd="SHOVEL"
weapon_setup(oShovel,spr_shovel,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)

if wpadd="ONI CLUB"
{
spawnID=oOniClub
weaponspr=spr_oni_club
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.2
weapontargetHeight=2
weapontype=0
weaponHitType=1
WswingSound=snd_swing3
}

if wpadd="SPEAR"
{
spawnID=oSpear
weaponspr=spr_merman_spear
weaponIndex=0
weaponX=-3
weaponY=-37
weaponangle=42
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.2
weapontargetHeight=2
weapontype=0
weaponHitType=1
WswingSound=snd_cut //weaponanim(weaponspr,weaponIndex,-3,-37,42*image_xscale,weaponcolor)
}

if wpadd="TRIDENT"
{
spawnID=oTrident
weaponspr=spr_merman_trident
weaponIndex=0
weaponX=-3
weaponY=-37
weaponangle=42
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.2
weapontargetHeight=2
weapontype=0
weaponHitType=1
WswingSound=snd_cut //weaponanim(weaponspr,weaponIndex,-3,-37,42*image_xscale,weaponcolor)
}


}