// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ghost_effect(){

if specialFX=1 shader_set(shd_white_sprite)
if specialFX=0
pal_swap_set(my_pal_sprite,current_pal,false);

ghostSet-=1 if ghostSet=0 {ghostSet=100 if ghostAlpha=1 ghostAlpha=-1 else ghostAlpha=1}
if ghostAlpha=1 image_alpha=lerp(image_alpha,0.5,0.01) else image_alpha=lerp(image_alpha,1,0.01)

if hasHead=1 and headFront=0
draw_sprite_ext(headSpr,headInd,round(x+(GheadX*wobbleX+(floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(+floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY+GheadY*wobbleY),image_xscale*wobbleX,image_yscale*wobbleY,headAngle*image_xscale,image_blend,image_alpha)


draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)

if hasHead=1 and headFront=1
draw_sprite_ext(headSpr,headInd,round(x+(GheadX*wobbleX+(floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(+floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY+GheadY*wobbleY),image_xscale*wobbleX,image_yscale*wobbleY,headAngle*image_xscale,image_blend,image_alpha)


pal_swap_reset();

shader_reset()

if superarmorFX!=0
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale,image_yscale,image_angle,c_yellow,superarmorFX)

charFX()


if oControl.betatest=1 and oControl.ColBeta=1
{
draw_set_color(c_gray) draw_set_alpha(0.5)
draw_rectangle(x-(sprite_get_width(mask_index)/2),y+z,x+(sprite_get_width(mask_index)/2),y+z-height,false)
draw_text(x,y-height-16,string_hash_to_newline(targetEnemy))
draw_set_color(c_white) draw_set_alpha(1)

}

character_hitanims()

zblock_col()
}