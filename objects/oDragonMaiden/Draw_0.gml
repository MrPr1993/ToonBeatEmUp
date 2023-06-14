/// @description Insert description here
// You can write your code in this editor

if lockPos
{
x=lockX;
y=lockY;
z=lockZ;
}

image_xscale=1
if x=8888
{
var watchtarget=0;
watchtarget=point_direction(x,y,targetEnemy.x,targetEnemy.y+targetEnemy.z/2)
eyeX=(x+lengthdir_x(15,watchtarget))
eyeY=(z+y+lengthdir_y(15,watchtarget))
eyeY=clamp(eyeY,z+y,z+y+10)

if eyeHit=0 eyeReaction=1 else eyeReaction=2

///Eye

if dead=0 and anim!=9 and anim!=66
{
draw_sprite_ext(spr_octopus_eye,0,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
draw_sprite(spr_octopus_eye,eyeReaction,round(eyeX),round(eyeY))
}
}
///Body
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)
if anim=11 and animFrame=clamp(animFrame,2,8)
draw_sprite(spr_octopus_spinFX,delta_time,round(x),round(y+z))