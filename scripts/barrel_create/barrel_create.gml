/// @description barrel_create(x,y,z,roll,image_xscale,BounceOnce,palette,zSpeed,Bounce)
/// @param x
/// @param y
/// @param z
/// @param roll
/// @param image_xscale
/// @param BounceOnce
/// @param palette
/// @param ZSpeed
/// @param Bounce
function barrel_create(){
/// @description Spawn Barrel 2
bar=instance_create(argument0,argument1,oBarrelRoll)
with bar {z=argument2 roll=argument3 image_xscale=argument4 BounceOnce=argument5 weapon_pal=argument6;
	zSpeed=argument7 Bounce=argument8}
}