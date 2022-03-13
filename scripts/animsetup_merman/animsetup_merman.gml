// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_merman(){
	overwriteStand=1
	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1
	animsetup_enemy()
if anim=0 
{sprite_index=StandSpr armspr=spr_merman_arms
	
if animFrame>1 animFrame+=0.25 else animFrame+=0.01 if animFrame>3 animFrame=0
image_index=animFrame
	
if image_index<1
{armsX=0
weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsY=0}
else if image_index<2
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}
else
{weaponanim(weaponspr,weaponIndex,-3,-36,42,weaponcolor) armsY=1}
}
if anim=1
{armsX=3 armspr=spr_merman_arms
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,1,-35,42,weaponcolor) armsY=1}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,1,-36,42,weaponcolor) armsY=0}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,1,-37,42,weaponcolor) armsY=-1}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,1,-35,42,weaponcolor) armsY=1}
if image_index=clamp(image_index,4,4.9)
{weaponanim(weaponspr,weaponIndex,1,-36,42,weaponcolor) armsY=0}
if image_index=clamp(image_index,5,5.9)
{weaponanim(weaponspr,weaponIndex,1,-37,42,weaponcolor) armsY=-1}
}

if anim!=1 and anim!=0
{armsX=999999999999999999999 armsY=9999999999999999999999999
}

if anim=10
{
anim=11
}

if anim=11
{armsX=0 armsY=0 armspr=spr_merman_attackhands atkcol_set(46,0,28,2.95,1,19)
damage=weaponDamage
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,-15,-38,0*image_xscale,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,-17,-38,0*image_xscale,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,14,-38,0*image_xscale,weaponcolor)}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,11,-38,0*image_xscale,weaponcolor)}	

sprite_index=spr_merman_attack
frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame=clamp(animFrame,2,3) atk=1 else atk=0
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)
if animFrame>4.5 {canmove=1}
}
}