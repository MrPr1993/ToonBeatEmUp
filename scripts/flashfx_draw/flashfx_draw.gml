// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flashfx_draw(){
if haspal=1
{
pal_swap_set(my_pal_sprite,current_pal,false);
}else shader_reset()

draw_sprite_ext(sprite_index,image_index,round(x+shake),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if haspal=1
pal_swap_reset()


}