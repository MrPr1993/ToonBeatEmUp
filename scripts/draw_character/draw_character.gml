function draw_character() {
	if specialFX=1 shader_set(shd_white_sprite)
	if specialFX=0
	pal_swap_set(my_pal_sprite,current_pal,false);

if object_index=oPlayer
{
var _flashR=colour_get_red(flashcolor)
var _flashB=colour_get_blue(flashcolor)
var _flashG=colour_get_green(flashcolor)	
_flashR+=lengthdir_x(0.5,current_time)
_flashB+=lengthdir_x(0.5,current_time)
_flashG+=lengthdir_x(0.5,current_time)
_flashR=clamp(_flashR,0,0.5)
_flashB=clamp(_flashB,0,0.5)
_flashG=clamp(_flashG,0,0.5)
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecRed"),cRed+cGlow+cShadow+cRedAdd+(_flashR*flashadd));
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecBlue"),cBlue+cGlow+cShadow+cBlueAdd+_flashB*flashadd);
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecGreen"),cGreen+cGlow+cShadow+cGreenAdd+_flashG*flashadd);
}

///Body
if anim=591200
{
var spicyshade=specialtimes[7];
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecRed"),0.75*spicyshade)
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecBlue"),-1.0*spicyshade)	
shader_set_uniform_f(shader_get_uniform(Pal_Shader, "vecGreen"),-1.0*spicyshade)	
}

	//draw_sprite_part_ext(sprite_index,image_index,0,0,sprite_width*image_xscale,sprite_height,round(x+((sprite_xoffset+floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),
//	round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_blend,image_alpha)
		
	//draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
if object_index=oPlayer
{	var minimodediv=1; if global.Cheat[5]=1 if global.NoCheat minimodediv=0.25;
if place_meeting(x,y,oWaterFX) and z>waterMax	
	draw_sprite_clip_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(image_xscale*wobbleX)*minimodediv,(image_yscale*wobbleY)*minimodediv,image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,y-sprite_height,x+(sprite_width*2)*image_xscale,sprite_height+waterMax)
else
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(image_xscale*wobbleX)*minimodediv,(image_yscale*wobbleY)*minimodediv,image_angle,image_blend,image_alpha)

}
else
{


if place_meeting(x,y,oWaterFX) and z>waterMax	
	draw_sprite_clip_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(image_xscale*wobbleX)/minimodediv,(image_yscale*wobbleY),image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,y-sprite_height,x+(sprite_width*2)*image_xscale,sprite_height+waterMax)
else
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(image_xscale*wobbleX),(image_yscale*wobbleY),image_angle,image_blend,image_alpha)

}



	pal_swap_reset();
	shader_reset()

}
