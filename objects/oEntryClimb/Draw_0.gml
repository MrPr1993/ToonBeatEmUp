/// @description Insert description here
// You can write your code in this editor


if spawned=1 or spawned=2
{
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,0,image_blend,image_alpha)
pal_swap_reset();
shader_reset()
}

if oControl.betatest=1
{draw_sprite(spr_animeditor_cross,0,x,y+z)}
