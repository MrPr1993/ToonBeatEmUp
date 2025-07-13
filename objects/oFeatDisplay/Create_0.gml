/// @description Insert description here
// You can write your code in this editor

name="STASH!"
featNO=0;
featX=-128
disappear=2

alarm[1]=2


alarm[1]+=-120+(120*instance_number(oFeatDisplay))

if alarm[1]<=2 alarm[1]=2

drawscript=function()
{
draw_set_alpha(1) draw_set_font(global.scorefont)
draw_set_color(c_white) draw_rectangle(0+featX,240-24,128+featX,240,false)
draw_set_color(c_black) draw_rectangle(0+2+featX,240-24+2,128-2+featX,240-3,false)
draw_set_halign(fa_left)
draw_sprite(spr_featicon,featNO,6+featX,240-38+4)
draw_set_color(c_white) draw_text(6+33+featX,240-24+4,"FEAT\nCOMPLETE!")
}