/// @description Insert description here
// You can write your code in this editor

if raintype=0
draw_sprite_tiled(spr_rain,0,round(x),round(y))

if raintype=1
{
draw_sprite_tiled(spr_snow,0,round(x+1*cos(current_time)/8),round(y))
draw_sprite_tiled(spr_snow,0,round(x2+1*cos(current_time)/8),round(y2))
}