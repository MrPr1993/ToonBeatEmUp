// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_wolf(){
if specialFX=1 shader_set(shd_white_sprite)
if specialFX=0
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
pal_swap_reset()
shader_reset()

charFX()

if oControl.betatest=1 and oControl.ColBeta=1
{
draw_set_color(c_gray) draw_set_alpha(0.5)
draw_rectangle(x-(sprite_get_width(mask_index)/2),y+z,x+(sprite_get_width(mask_index)/2),y+z-height,false)
draw_set_color(c_white) draw_set_alpha(1)
}

character_hitanims()

zblock_col()


}