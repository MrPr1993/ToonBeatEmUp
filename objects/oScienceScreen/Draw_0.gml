if anim!=9999
{
draw_sprite(spr_science_top,1,round(x),round(y+z))
draw_sprite(spr_science_top,0,round(x),round(y-50))
}
else draw_sprite(spr_science_top,2,round(x),round(y-25))

draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*1+shake*1),round(y-80+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),1*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
