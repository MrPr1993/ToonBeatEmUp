// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_object(){

if carry=1
{
	item.ground=0 item.canGrav=1 item.spdZ=-4 item.carry=0 item.gravLandHalt=1
	item.attack=0
	

	if hurt=0 {item.hspeed=0*image_xscale 
	if item.throwGravity=1
	{item.canGrav=1 item.ground=0 item.spdZ=-8}
	}
	item.carryID=0 item.carry=0 
	item.z=z-64  item.mask_index=spr_selfatk item.hitSource=id item.thrown=1

	if !place_free(x,y-2) with item mask_index=spr_altselfatk carry=0
}
}