/// @description flashFX(x,y,z,sprite,index,speed,alarm,xscale,yscale,blend,alpha)
/// @param x
/// @param y
/// @param z
/// @param sprite
/// @param index
/// @param speed
/// @param alarm
/// @param xscale
/// @param yscale
/// @param blend
/// @param alpha
function flashFX(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {

	fx=instance_create_depth(argument0,argument1,depth,oFlashFX)
	fx.z=argument2
	fx.sprite_index=argument3
	fx.image_index=argument4
	fx.image_speed=argument5
	fx.alarm[0]=argument6
	fx.image_xscale=argument7
	fx.image_yscale=argument8
	fx.image_blend=argument9
	fx.image_alpha=argument10





}
