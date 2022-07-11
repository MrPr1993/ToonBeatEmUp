/// @description Insert description here
// You can write your code in this editor


if spawned=1 or spawned=2
{
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset();
shader_reset()
}

if spawned=0
{
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(behindspr,behindind,round(x),round(y+z+trainz+boardyAdd),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset();
shader_reset()
}

if boardspr!=-1 and spawned=0
{
draw_sprite(boardspr,boardind,round(x),round(y+z+trainz))
}

if oControl.betatest=1
{draw_sprite(spr_animeditor_cross,0,x,y+z)}
