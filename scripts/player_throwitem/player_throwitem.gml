/// @description Throw Item/Object
function player_throwitem() {
	if key_jump
	{
		//animFrame=0 canmove=0
	//player_prepjump()
	}
	else
	{animFrame=0 canmove=0
	carry=0 if hurt=0 {animFrame=1 PlaySound(snd_swing)
	anim=24 item.canGrav=0 item.attack=dropitem item.spdZ=0} else {
	item.ground=0 item.canGrav=1 item.spdZ=-4 item.carry=0 item.gravLandHalt=1
	item.attack=0
	}

	if hurt=0 {item.hspeed=4*image_xscale 
	if item.throwGravity=1
	{item.canGrav=1 item.ground=0 item.spdZ=-8}
	}
	item.carryID=0 item.carry=0 
	item.z=z-64  item.mask_index=spr_selfatk item.hitSource=id item.thrown=1

	if !place_free(x,y-2) with item mask_index=spr_altselfatk
	if !place_free(x,y+2) with item mask_index=spr_altselfatk2
}




}
