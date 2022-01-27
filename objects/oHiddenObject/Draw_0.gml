/// @description Insert description here
// You can write your code in this editor
if oControl.betatest=1 and oControl.ColBeta=1
{
draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,0.5)
draw_set_color(c_gray) draw_set_alpha(0.5)
draw_rectangle(x-(sprite_get_width(mask_index)/2),y+z,x+(sprite_get_width(mask_index)/2),y+z-height,false)
}