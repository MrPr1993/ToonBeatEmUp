function draw_character() {
	if specialFX=1 shader_set(shd_white_sprite)
	if specialFX=0
	pal_swap_set(my_pal_sprite,current_pal,false);

	
	//draw_sprite_part_ext(sprite_index,image_index,0,0,sprite_width*image_xscale,sprite_height,round(x+((sprite_xoffset+floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),
//	round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_blend,image_alpha)
		
	//draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	if place_meeting(x,y,oWaterFX) and z>waterMax	
	draw_sprite_clip_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,y-sprite_height,x+(sprite_width*2)*image_xscale,sprite_height+waterMax)
else
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	
	

	pal_swap_reset();
	shader_reset()

}
