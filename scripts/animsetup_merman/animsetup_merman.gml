// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_merman(){
	overwriteStand=1
	overwriteAttack=1
	overwriteAttack1=1
	overwriteAttack2=1
	script_execute(animsetup_zombie)

if anim=0 
{armspr=spr_merman_arms armsX=0
if image_index<1
{
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


if anim=10
{
if targetEnemy.x=clamp(targetEnemy.x,x-60,x+60)
anim=12
else
{
anim=11
if targetEnemy.x=clamp(targetEnemy.x,x-80,x+80)
specialcheck0=0 else specialcheck0=1
}
if weaponspr=-1 anim=12
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
frame_set(1,1,0.1) if animFrame=clamp(animFrame,2,3) {sentflying=((4*image_xscale)*specialcheck0) atk=1} else {atk=0 sentflying=0}
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)
if animFrame>4.5 {canmove=1}
}

if anim=12
{
	atkcol_set(31,0,39,1.75,1,33)
armspr=spr_merman_arms2 sprite_index=spr_merman_punch damage=0.1 
frame_set(0,0,0.25) MoveType=1 
frame_set(1,1,0.1) if animFrame=clamp(animFrame,2,3) {atk=1} else {atk=0}
frame_set(2,2,0.1)
frame_set(3,3,0.05)
frame_set(4,0,0.1)

if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,-3,-37+1,42+1,weaponcolor) armsX=1 armsY=1}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,-3,-37-1,42,weaponcolor) armsX=-1 armsY=0}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,-3,-37+1,42,weaponcolor) armsX=1 armsY=0}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsX=0 armsY=0}


if animFrame>4.5 {canmove=1}
}

///Hits
if sprite_index=ThrownSpr
{armsX=99999999999999999999
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,40,-27,48*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16,-55,143*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,19,-52,92*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,24,-73,92*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-3,-50,164*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-22,-49,244*image_xscale,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,27,-18,77*image_xscale,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,-1,-18,77*image_xscale,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,17,0,172*image_xscale,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,17,-7,172*image_xscale,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,17,-49,88*image_xscale,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,2,-10,88*image_xscale,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,2,-10,113*image_xscale,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,2,-10,88*image_xscale,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,2,-10,113*image_xscale,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,4,-40,113*image_xscale,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,1,-40,96*image_xscale,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,13,-29,72*image_xscale,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,6,-11,11*image_xscale,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,6,-5,11*image_xscale,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,6,-16,19*image_xscale,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,3,-3,19*image_xscale,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,3,-5,19*image_xscale,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,3,-28,52*image_xscale,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,0,-33,45*image_xscale,weaponcolor)
}

if sprite_index=spr_swing_frozen
{armsX=99999999999999999999
weaponanim(weaponspr,weaponIndex,40,-27,48*image_xscale,weaponcolor)
}

}