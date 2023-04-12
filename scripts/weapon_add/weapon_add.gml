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

if wpadd="TASER"
{
weapon_setup(oTaser,spr_taser,0,100,0.15,2,1,3,snd_shocked,spr_hitflash,48,0,0,2,1,64)
}

if wpadd="SCIMITAR"
{
weapon_setup(oScimitar,spr_scimitar,0,100,0.2,2,2,1,snd_swing5,snd_cut,48,0,0,2,1,64)
WspriteFX=spr_blood
}

if wpadd="FISHING"
weapon_setup(oFishingRod,spr_fishingrod,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)


if wpadd="PIPE"
weapon_setup(oPipe,spr_pipe,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)

if wpadd="SHOVEL"
weapon_setup(oShovel,spr_shovel,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)

if wpadd="PICKAXE"
weapon_setup(oPickaxe,spr_pickaxe,0,100,0.2,2,2,1,snd_swing3,snd_hit,48,0,0,2,1,64)


if wpadd="KNIFE"
weapon_setup(oKnife,spr_knife,0,50,0.05,2,2,0,snd_swing,snd_cut,37,0,45,1.45,1,15)



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
weaponLife=99999999
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

if wpadd="TOMMYGUN"
{
spawnID=oTommyGun
weaponspr=spr_tommygun
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.1
weapontargetHeight=2
weapontype=0
weaponHitType=0
}

if wpadd="HARPOONGUN"
{
spawnID=oHarpoonGun
weaponspr=spr_harpoongun
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.1
weapontargetHeight=2
weapontype=0
weaponHitType=0
}

if wpadd="DYNAMITE"
{
spawnID=oDynamite
weaponspr=spr_dynamite
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.1
weapontype=3
weaponHitType=0
spawnZAdd=-4
wThrowGrav=1
weaponIsGun=1
weaponLife=0
}

if wpadd="KNIFE"
{
spawnID=oKnife
weaponspr=spr_knife
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.1
weapontype=1
WswingSound=snd_cut
weaponHitType=0
spawnZAdd=0
wThrowGrav=0
weaponIsGun=0
weaponLife=4
WhitDisappear=1
WspriteFX=spr_blood
weaponSpin=0 throwHspd=6
}

if wpadd="PIE"
{
spawnID=oPie
weaponspr=spr_pie
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.1
weapontype=3
WswingSound=snd_hit
weaponHitType=0
spawnZAdd=0
wThrowGrav=0
weaponIsGun=1
WhitDisappear=1
weaponLife=0
WhitDisappear=1
WspriteFX=spr_blood
weaponSpin=0 throwHspd=6
}

if wpadd="WHIP"
{
spawnID=oWhip
weaponspr=spr_whip
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.2
weapontargetHeight=2
weapontype=5
weaponHitType=1
WswingSound=snd_swing3
}


}