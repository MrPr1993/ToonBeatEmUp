// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function octopus_draw(){
///Eye
if dead=0 and anim!=9 and anim!=66
{
draw_sprite_ext(spr_octopus_eye,0,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
draw_sprite(spr_octopus_eye,eyeReaction,round(eyeX),round(eyeY))
}

///Body
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
if anim=11 and AnimFrame=clamp(AnimFrame,2,8)
draw_sprite(spr_octopus_spinFX,delta_time,round(x),round(y+z))
}