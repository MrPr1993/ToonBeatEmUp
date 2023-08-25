/// @description barrel_create_alt(objtype,x,y,z,roll,image_xscale,BounceOnce,palette,zSpeed,Bounce)
/// @param objtype
/// @param x
/// @param y
/// @param z
/// @param roll
/// @param image_xscale
/// @param BounceOnce
/// @param palette
/// @param ZSpeed
/// @param Bounce
function barrel_create_alt(){
/// @description Spawn Barrel 2
var barreltype=argument0
bar=instance_create(argument1,argument2,barreltype)
with bar {z=argument3 roll=argument4 image_xscale=argument5 BounceOnce=argument6 weapon_pal=argument7;
	zSpeed=argument8 Bounce=argument9}
}