/// @description Insert description here
// You can write your code in this editor

if lockPos
{
x=lockX;
y=lockY;
z=lockZ;
}


///Body
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
if anim=11 and animFrame=clamp(animFrame,2,8)
draw_sprite(spr_octopus_spinFX,delta_time,round(x),round(y+z))