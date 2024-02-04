enemy_endstep()
throw_step()

///Get her to rush back if off-screen to fix an AI problem
if canmove and hurt=0 and dead=0
{
if x<__view_get( e__VW.XView, 0 )-64 {x=__view_get( e__VW.XView, 0)-64 image_xscale=1 canAttack=3}
if x>__view_get( e__VW.XView, 0 )+640+64{x=__view_get( e__VW.XView, 0)+640+64 image_xscale=-1 canAttack=3}
}



///Hits
if sprite_index=ThrownSpr
{
if image_index=clamp(image_index,0,0.9)
weaponanim(weaponspr,weaponIndex,11,-52,190,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,weaponIndex,10,-68,190,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,weaponIndex,7,-71,176,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,9,-73,186,weaponcolor)
if image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,4,-46,90,weaponcolor)
if image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,-16,-45,196,weaponcolor)
if image_index=clamp(image_index,6,6.9)
weaponanim(weaponspr,weaponIndex,26,-6,196,weaponcolor)
if image_index=clamp(image_index,7,7.9)
weaponanim(weaponspr,weaponIndex,2,-11,196,weaponcolor)
if image_index=clamp(image_index,8,8.9)
weaponanim(weaponspr,weaponIndex,2,-4,16,weaponcolor)
if image_index=clamp(image_index,9,9.9)
weaponanim(weaponspr,weaponIndex,2,-4,16,weaponcolor)
if image_index=clamp(image_index,10,10.9)
weaponanim(weaponspr,weaponIndex,0,-42,16,weaponcolor)
if image_index=clamp(image_index,11,11.9)
weaponanim(weaponspr,weaponIndex,-10,-18,45,weaponcolor)
if image_index=clamp(image_index,12,12.9)
weaponanim(weaponspr,weaponIndex,-10,-18,135,weaponcolor)
if image_index=clamp(image_index,13,13.9)
weaponanim(weaponspr,weaponIndex,-10,-18,225,weaponcolor)
if image_index=clamp(image_index,14,14.9)
weaponanim(weaponspr,weaponIndex,-10,-18,315,weaponcolor)
if image_index=clamp(image_index,15,15.9)
weaponanim(weaponspr,weaponIndex,-15,-48,16,weaponcolor)
if image_index=clamp(image_index,16,16.9)
weaponanim(weaponspr,weaponIndex,-13,-61,16,weaponcolor)
if image_index=clamp(image_index,17,17.9)
weaponanim(weaponspr,weaponIndex,-13,-33,16,weaponcolor)
if image_index=clamp(image_index,18,18.9)
weaponanim(weaponspr,weaponIndex,-11,-10,16,weaponcolor)
if image_index=clamp(image_index,19,19.9)
weaponanim(weaponspr,weaponIndex,2,-4,16,weaponcolor)
if image_index=clamp(image_index,20,20.9)
weaponanim(weaponspr,weaponIndex,0,-6,16,weaponcolor)
if image_index=clamp(image_index,21,21.9)
weaponanim(weaponspr,weaponIndex,-4,-16,16,weaponcolor)
if image_index=clamp(image_index,22,22.9)
weaponanim(weaponspr,weaponIndex,2,-20,16,weaponcolor)
if image_index=clamp(image_index,23,23.9)
weaponanim(weaponspr,weaponIndex,-7,-37,16,weaponcolor)
if image_index=clamp(image_index,24,24.9)
weaponanim(weaponspr,weaponIndex,-10,-45,16,weaponcolor)
}

if sprite_index=spr_swing_front
{
if image_index=clamp(image_index,0,0.9) or image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,weaponIndex,14,-65,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,1,1.9) or image_index=clamp(image_index,4,4.9)
weaponanim(weaponspr,weaponIndex,14+1,-65+2,180*image_xscale,weaponcolor)
if image_index=clamp(image_index,2,2.9) or image_index=clamp(image_index,5,5.9)
weaponanim(weaponspr,weaponIndex,14+1,-65+1,180*image_xscale,weaponcolor)
}

if sprite_index=spr_swing_frozen
weaponanim(weaponspr,weaponIndex,10,-63,131,weaponcolor)

if sprite_index=spr_swing_throwitem
{weaponanim(weaponspr,weaponIndex,22,-62,90,weaponcolor)
}

if sprite_index=spr_swing_throwitem
{
if image_index=clamp(image_index,0,.9)
weaponanim(weaponspr,0,7,-60,90,weaponcolor)
if image_index=clamp(image_index,1,1.9)
weaponanim(weaponspr,1,-30,-54,90,weaponcolor)
if image_index=clamp(image_index,2,2.9)
weaponanim(weaponspr,1,-14,-91,190,weaponcolor)
if image_index=clamp(image_index,3,3.9)
weaponanim(weaponspr,2,30,-47,90,weaponcolor)
}
else
if anim=134 //WHIP
{sprite_index=spr_swing_whip
if animFrame=clamp(animFrame,0,0.9)
weaponanim(weaponspr,image_index+1,9,-68,0,weaponcolor)
if animFrame=clamp(animFrame,1,1.9)
weaponanim(weaponspr,image_index+1,14,-52,0,weaponcolor)
if animFrame=clamp(animFrame,2,2.9)
weaponanim(weaponspr,image_index+1,11,-52,0,weaponcolor)
if animFrame=clamp(animFrame,3,3.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if animFrame=clamp(animFrame,4,4.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if animFrame=clamp(animFrame,5,5.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
if animFrame=clamp(animFrame,6,6.9)
weaponanim(weaponspr,image_index+1,13,-52,0,weaponcolor)
	
frame_set(0,0,0.25)
frame_set(1,1,0.1) 
frame_set(2,2,0.25)
frame_set(3,3,0.25) if animFrame=4 PlaySound(WswingSound)
frame_set(4,4,0.25)
frame_set(5,5,0.25)
frame_set(6,6,0.25)
atkcol_set(93,0,27,5.25,1,38)
if animFrame=clamp(animFrame,4,4.5) atk=1 else atk=0
if animFrame>6.7 {canmove=1 anim=0}
} else weaponIndex=0
