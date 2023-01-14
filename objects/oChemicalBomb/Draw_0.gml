/// @description Insert description here
// You can write your code in this editor

pal_swap_set(weapon_pal_sprite,weapon_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+zAddGround),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset();