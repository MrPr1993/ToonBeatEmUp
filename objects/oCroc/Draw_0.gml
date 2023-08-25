
pal_swap_set(weapon_pal_sprite,weapon_pal,false);

//if place_meeting(x,y,oWaterFX) and z>waterMax	
//{var sprw=sprite_get_width(sprite_index); var sprh=sprite_get_height(sprite_index);
//draw_sprite_clip_ext(sprite_index,image_index,round(x+shake*image_xscale),round(y+z),image_xscale,image_yscale,image_blend,image_alpha, 
//x-(sprw*2)*image_xscale,y-sprh,x+(sprw*2)*image_xscale,sprh+waterMax)
//}
//else
	if place_meeting(x,y,oWaterFX) and z>-8	
	{
	draw_sprite_clip_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,y-sprite_height,x+(sprite_width*2)*image_xscale,sprite_height-8)
	}
	else
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

pal_swap_reset();
shader_reset()