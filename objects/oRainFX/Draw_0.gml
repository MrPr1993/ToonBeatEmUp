/// @description Insert description here
// You can write your code in this editor

if raintype=0
draw_sprite_tiled_ext(spr_rain,0,round(x),round(y),1,1,image_blend,image_alpha)

if raintype=1
{
draw_sprite_tiled_ext(spr_snow,0,round(x+1*cos(current_time)/8),round(y),1,1,image_blend,image_alpha)
draw_sprite_tiled_ext(spr_snow,0,round(x2+1*cos(current_time)/8),round(y2),1,1,image_blend,image_alpha)
}