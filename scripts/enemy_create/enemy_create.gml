/// @description enemy_create(x,y,enemy,z,palette,palSprite,name,hpLayer,hp)
/// @param x
/// @param y
/// @param enemy
/// @param z
/// @param palette
/// @param palSprite
/// @param name
/// @param hpLayer
/// @param hp
function enemy_create(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) {

	en=instance_create_depth(argument0,argument1,0,argument2) en.z=argument3
	en.current_pal=argument4 

	changepalette=argument5

	if changepalette!=0
	en.my_pal_sprite=argument5 else en.x=oPlayer.x+argument5*0

	changename=argument6

	if changename!=0 en.name=argument6 else en.x=oPlayer.x+argument6*0

	changehplayer=argument7


	if changehplayer!=0 en.hplayer=argument7 else en.x=oPlayer.x+argument7*0

	changehp=argument8

	if changehp!=0 
	{
	en.hp=argument8 
	en.maxhp=argument8 
	}
	else en.x=oPlayer.x+argument8*0






}
