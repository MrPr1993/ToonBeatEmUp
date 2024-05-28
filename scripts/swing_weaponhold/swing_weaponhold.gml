// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_swing(){
	overwriteStand=1
	animsetup_enemy()
	
if anim=0 
{sprite_index=StandSpr
	
if AnimFrame>1 AnimFrame+=0.25 else AnimFrame+=0.01 if AnimFrame>3 AnimFrame=0
image_index=AnimFrame
	
if image_index<1
weaponanim(weaponspr,weaponIndex,14,-65,180*image_xscale,weaponcolor)
else if image_index<2
weaponanim(weaponspr,weaponIndex,14+1,-65+2,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14+1,-65+1,180*image_xscale,weaponcolor)
}
if anim=1 or sprite_index=spr_swing_move
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,14+3,-67,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,14+2,-68,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,14,-69,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,14-3,-67,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,14-2,-68,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,14,-69,180*image_xscale,weaponcolor)
}

if sprite_index=spr_swing_idle3
{
if image_index<1
weaponanim(weaponspr,weaponIndex,14-6,-65,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14-6,-65+1,180*image_xscale,weaponcolor)
if image_index>2 image_index=0
}

}


