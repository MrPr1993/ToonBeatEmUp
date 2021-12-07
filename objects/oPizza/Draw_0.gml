
if canFlash=1
if FX=1 shader_set(shd_white_sprite)

if isweapon=0
{
pal_swap_set(weapon_pal_sprite,weapon_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x+groundAdd*image_xscale),round(y+z+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+angleFX)*image_xscale,image_blend,image_alpha)
pal_swap_reset()
}
else
{
pal_swap_set(weapon_pal_sprite,weapon_pal,false);
if itemCentered=0
draw_sprite_ext(sprite_index,image_index,round(x-lengthdir_x(sprite_get_bbox_right(sprite_index)/2,angleImage)*image_xscale),round(y-lengthdir_y(sprite_get_bbox_bottom(sprite_index)/2,angleImage)+z+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+angleFX)*image_xscale,image_blend,image_alpha)
else
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+angleFX)*image_xscale,image_blend,image_alpha)

pal_swap_reset()
}

shader_reset()



