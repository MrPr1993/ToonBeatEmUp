

if haspal=1
{
pal_swap_set(my_pal_sprite,current_pal,false);
}else shader_reset()

draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,0,c_white,1)

if haspal=1
pal_swap_reset()