/// @description Insert description here
// You can write your code in this editor
if oControl.betatest=1
{
draw_sprite(mask_index,0,x,y)
}

if away=0
draw_sprite(sprite_index,image_index,x,y-48)

draw_sprite(spr_gunrangehands,shootbuffer,x,__view_get( e__VW.YView, 0 )+240+armY)