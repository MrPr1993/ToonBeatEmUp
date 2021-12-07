draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)

draw_set_alpha(0.5)
draw_set_color(image_blend)
draw_rectangle(x-(sprite_get_width(sprite_index)/2)*image_xscale,y-height+z,x+(sprite_get_width(sprite_index)/2)*image_xscale,y+z,false)

draw_set_alpha(1)

