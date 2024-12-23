if canFlash=1
if FX=1 shader_set(shd_white_sprite)

var _zadd=0;

if ground and angleImage=90 _zadd=-24

if 	altSpr=-1
{var altspr=sprite_index; var altind=image_index;}
else
{var altspr=altSpr; var altind=altInd;}

if place_meeting(x,y,oTrainFXSpot)
{trainzSet=instance_place(x,y,oTrainFXSpot)
if ground
trainz=trainzSet.Train1Y else trainz=0
}else trainz=0

if !(place_meeting(x,y,oWaterFX) and z>waterMax)
{
if isweapon=0
{
pal_swap_set(weapon_pal_sprite,weapon_pal,false);
draw_sprite_ext(altspr,altind,round(x+groundAdd*image_xscale),round(y+trainz+z+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+angleFX+(groundRot*ground))*image_xscale,image_blend,image_alpha)
pal_swap_reset()
}
else
{
pal_swap_set(weapon_pal_sprite,weapon_pal,false);
if itemCentered=0
draw_sprite_ext(altspr,altind,round(x-lengthdir_x(sprite_get_bbox_right(altspr)/2,angleImage)*image_xscale),round(_zadd+y-lengthdir_y(sprite_get_bbox_bottom(altspr)/2,angleImage)+z+trainz+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+angleFX+(groundRot*ground))*image_xscale,image_blend,image_alpha)
else
draw_sprite_ext(altspr,altind,round(x),round(_zadd+y+trainz+z+zAdd*zAddGround),image_xscale,image_yscale,(angleImage+angleFX+(groundRot*ground))*image_xscale,image_blend,image_alpha)

pal_swap_reset()
}
}
shader_reset()



