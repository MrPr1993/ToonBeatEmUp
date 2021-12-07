/// @description frame_set(frame,image_index,speed)
/// @param frame
/// @param image_index
/// @param speed
function frame_set(argument0, argument1, argument2) {

	if animFrame=clamp(animFrame,argument0,argument0+0.99)
	{image_index=argument1 animFrame+=argument2}
	else {image_index+=0*argument1 animFrame+=0*argument2}



}
