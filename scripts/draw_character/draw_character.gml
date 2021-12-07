function draw_character() {
	if specialFX=1 shader_set(shd_white_sprite)
	if specialFX=0
	pal_swap_set(my_pal_sprite,current_pal,false);
	draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	pal_swap_reset();
	shader_reset()



}
