/// @description Insert description here
// You can write your code in this editor


if spawned!=3
{
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(frameSpr,image_index,round(x+shake),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
draw_sprite_ext(paintingSpr,image_index,round(x+shake),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset();
shader_reset()
}


if oControl.betatest=1
{draw_sprite(spr_animeditor_cross,0,x,y+z)}
