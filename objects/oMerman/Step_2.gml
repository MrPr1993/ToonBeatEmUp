/// @description Insert description here
// You can write your code in this editor
if weaponspr!=-1
{
rangeAtk=120
walkSpeed=0.5
walkSpeedY=0.5
}
else
{
rangeAtk=60
walkSpeed=0.5
walkSpeedY=0.5
}

enemy_endstep()
throw_step()


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

if anim=11
{
armsX=0 armsY=0 armspr=spr_merman_attackhands
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,-15,-38,0,weaponcolor)}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,-17,-38,0,weaponcolor)}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,14,-38,0,weaponcolor)}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,11,-38,0,weaponcolor)}	
}

if anim=12
{
armspr=spr_merman_arms2
if image_index=clamp(image_index,0,0.9)
{weaponanim(weaponspr,weaponIndex,-3,-37+1,42+1,weaponcolor) armsX=1 armsY=1}
if image_index=clamp(image_index,1,1.9)
{weaponanim(weaponspr,weaponIndex,-3,-37-1,42,weaponcolor) armsX=-1 armsY=0}
if image_index=clamp(image_index,2,2.9)
{weaponanim(weaponspr,weaponIndex,-3,-37+1,42,weaponcolor) armsX=1 armsY=0}
if image_index=clamp(image_index,3,3.9)
{weaponanim(weaponspr,weaponIndex,-3,-37,42,weaponcolor) armsX=0 armsY=0}
}

///Hits
if sprite_index=ThrownSpr
{armsX=99999999999999999999
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,40,-27,48,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,16,-55,143,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,19,-52,92,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,24,-73,92,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,-3,-50,164,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-22,-49,244,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,27,-18,77,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,-1,-18,77,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,17,0,172,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,17,-7,172,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,17,-49,88,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,2,-10,88,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,2,-10,113,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,2,-10,88,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,2,-10,113,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,4,-40,113,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,1,-40,96,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,13,-29,72,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,6,-11,11,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,6,-5,11,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,6,-16,19,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,3,-3,19,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,3,-5,19,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,3,-28,52,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,0,-33,45,weaponcolor)
}

if anim=31 or anim=30 armsX=99999999999999999999

if sprite_index=spr_swing_frozen
{armsX=99999999999999999999
weaponanim(weaponspr,weaponIndex,40,-27,48,weaponcolor)
}
