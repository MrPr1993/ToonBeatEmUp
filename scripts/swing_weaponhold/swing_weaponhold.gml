// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animsetup_swing(){
	overwriteStand=1
	animsetup_burglar()
	
if anim=0 
{sprite_index=StandSpr
	
if animFrame>1 animFrame+=0.25 else animFrame+=0.01 if animFrame>3 animFrame=0
image_index=animFrame
	
if image_index<1
weaponanim(weaponspr,weaponIndex,14,-65,180*image_xscale,weaponcolor)
else if image_index<2
weaponanim(weaponspr,weaponIndex,14+1,-65+2,180*image_xscale,weaponcolor)
else
weaponanim(weaponspr,weaponIndex,14+1,-65+1,180*image_xscale,weaponcolor)
}
if anim=1
{
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,14,-67,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,14,-68,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,14,-69,180*image_xscale,weaponcolor)
}
}