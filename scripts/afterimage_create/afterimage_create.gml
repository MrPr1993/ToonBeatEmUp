// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function afterimage_create(){
afi=instance_create_depth(x,y,0,oFlashFX) afi.z=z afi.sprite_index=sprite_index afi.image_index=image_index
afi.image_speed=0  afi.image_xscale=image_xscale*wobbleX afi.image_yscale=wobbleY
afi.alarm[0]=argument0 afi.image_blend=argument1
afi.current_pal=argument2;//0
afi.my_pal_sprite=argument3;//spr_enemypal
afi.hspeed=argument4;//0
with afi
{
cRed=color_get_red(image_blend)/200 cBlue=color_get_blue(image_blend)/200 cGreen=color_get_green(image_blend)/200
}

}

