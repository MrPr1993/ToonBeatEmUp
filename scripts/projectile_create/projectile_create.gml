/// @description projectile_create(x,y,z,height,sprite,hspeed,mask,sprFX,damage,MoveType,HitType,HitForce,HitForceZ)
/// @param x
/// @param y
/// @param z
/// @param height
/// @param sprite
/// @param hspeed
/// @param mask
/// @param sprFX
/// @param damage
/// @param MoveType
/// @param HitType
/// @param HitForce
/// @param HitForceZ
function projectile_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12) {

	projectile=instance_create_depth(argument0,argument1,depth,oProjectile) projectile.z=argument2
	projectile.image_xscale=image_xscale projectile.selfsource=self projectile.hitSource=self
	projectile.isPlayer=isPlayer
	projectile.SourceX=x

	with projectile
	{

	height=argument3
	sprite_index=argument4
	hspeed=argument5

	mask_index=argument6

	spriteFX=argument7

	damage=argument8

	MoveType=argument9
	HitType=argument10
	targetHeight=argument10
	HitForce=argument11
	HitForceZ=argument12
	}



}
