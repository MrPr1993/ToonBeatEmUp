if FX=1 
shader_set(shd_white_sprite)

pal_swap_set(weapon_pal_sprite,weapon_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x-lengthdir_x(sprite_get_bbox_right(sprite_index)/2,angleImage)*image_xscale),round(y-lengthdir_y(sprite_get_bbox_bottom(sprite_index)/2,angleImage)+z+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+weaponExtraAngle)*image_xscale,image_blend,image_alpha)
pal_swap_reset()

shader_reset()

image_index=0
image_speed=0




