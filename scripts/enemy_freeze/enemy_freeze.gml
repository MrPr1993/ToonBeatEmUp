///enemy_freeze(Sprite,index,shaketime,speed)
   ///Enemy frozen
function enemy_freeze() {
   

	   if canact=1 and act=1 and immune=0
	   and Throw=0 and dead=0
	  // and (x>view_xview[0]-sprite_get_width(mask_index)/2 and x<view_xview[0]+320+sprite_get_width(mask_index)/2)
	{superThrown=1 
	if watchSourceX>x image_xscale=1 else image_xscale=-1 recovery=200
	{
	sprite_index=argument0
	image_index=argument1
	shaketime=argument2
	image_speed=argument3
	anim=31
	animFrame=0
	canmove=0
	superarmorhp=0
	superarmortime=0
	}
	}






}
