/// @description Insert description here
// You can write your code in this editor
if danger=2
{
pal_swap_set(spr_horsepal,bullpal,false);
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,0,image_blend,image_alpha)
pal_swap_reset();
shader_reset()

if riderSpr!=-1
{
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(riderSpr,image_index,round(x-image_index),round(y-44+z-image_index),image_xscale,image_yscale,0,image_blend,image_alpha)
pal_swap_reset();
shader_reset()
}

}
else
draw_self()
