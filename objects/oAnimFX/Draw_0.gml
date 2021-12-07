if Flashing=1
{
if image_alpha>0
image_alpha-=0.1 else image_alpha=1
shader_set(shd_white_sprite)
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,image_angle,c_white,1)
shader_reset()
}

draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)


