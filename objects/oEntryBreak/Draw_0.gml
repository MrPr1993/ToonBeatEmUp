if spawned=1 or spawned=2 or spawned=0  or spawned=4
{
if hidden=0
{
if hideShadow=1
draw_sprite(shadowSpr,0,round(x),round(y))

pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset();
shader_reset()
}
}

if oControl.betatest=1
{draw_sprite(spr_animeditor_cross,0,x,y+z)}
