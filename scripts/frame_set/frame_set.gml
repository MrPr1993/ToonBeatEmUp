/// @description frame_set(frame,image_index,speed)
/// @param frame
/// @param image_index
/// @param speed
function frame_set(argument0, argument1, argument2) {

	if AnimFrame=clamp(AnimFrame,argument0,argument0+0.99)
	{image_index=argument1 AnimFrame+=argument2}
	else {image_index+=0*argument1 AnimFrame+=0*argument2}



}
