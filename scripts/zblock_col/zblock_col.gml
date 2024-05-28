/// @description Z Block Collision
function zblock_col() {

	walkSpeedY=walkSpeed

	moveDirection=point_direction(x,y,xprevious*2,yprevious*2)

	//if place_meeting(x,y,oHeight32) ///Bottom

	if place_meeting(x,y,oHeight32) ///Bottom
	{
	hz=instance_place(x,y,oHeight32)
	if z>hz.z-hz.height+16
	{

	var inst; 
	inst = collision_rectangle(x-(walkSpeed+dashing+sentflying+sprite_get_width(mask_index)/2)*image_xscale, y-1, x+(walkSpeed+dashing+sentflying+sprite_get_width(mask_index)/2)*image_xscale, y+1, hz,1, true); 
 
	if inst != noone
	{
	x=xprevious
	wallCheck=1
	checkwall() exit;
	}


	{
	y=yprevious wallCheck=0
	if y=yprevious 
	if y>hz.y
	y=yprevious+1 else y=yprevious-1
	}

	}
	else ////On Top
	if hz.hasRoof=1
	{if zSpeed>=0 
	{if z>=hz.z-hz.height+16-zSpeed {z=(hz.z-hz.height+16) ground=1 zSpeed=0
		
		if anim=2 or anim=3 {AnimFrame=0 canmove=0 anim=22}
		
		}
	else ground=0
	}else ground=0
	}
	} else if z!=0 ground=0
	


}
