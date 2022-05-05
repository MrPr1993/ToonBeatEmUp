/// @description Insert description here
// You can write your code in this editor
if monochrome=1
{
shader_set(shd_grayscale)
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
shader_reset()
}
else
{
shader_reset()
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
