// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_robot(){
if specialFX=1 shader_set(shd_white_sprite)
if specialFX=0
pal_swap_set(my_pal_sprite,current_pal,false);
///R Arm
if robotArmR=1
{
if image_alpha<1
draw_sprite_ext(robotArmRsprite,robotArmRIndex,round(x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale+(robotArmRX*(image_xscale*wobbleX))+(shake*image_xscale)),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+robotArmLY*wobbleY+z+extraY),image_xscale*robotArmRXscale,image_yscale*robotArmRYscale,robotArmRAngle*image_xscale,c_black,1)


draw_sprite_ext(robotArmRsprite,robotArmRIndex,round(x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale+(robotArmRX*(image_xscale*wobbleX))+(shake*image_xscale)),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+robotArmLY*wobbleY+z+extraY),image_xscale*robotArmRXscale,image_yscale*robotArmRYscale,robotArmRAngle*image_xscale,image_blend,image_alpha)
}
///Body
if image_alpha<1
draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,c_black,1)

draw_sprite_ext(sprite_index,image_index,round(x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),image_xscale*wobbleX,image_yscale*wobbleY,image_angle,image_blend,image_alpha)


///Robot Zapper
if object_index=oRobot
if anim=12 and AnimFrame=clamp(AnimFrame,3,11)
{
draw_set_color(choose(c_white,c_red,c_yellow))
draw_rectangle(x+16*image_xscale,y-52+z,x+(16+12)*image_xscale,y-52+6+z,false)
//draw_triangle(x+(16)*image_xscale,y-95+2,x+24*image_xscale,y-64-32-4,x+24*image_xscale,y-4,false)
//draw_rectangle(x+(28)*image_xscale,y-64-32-4+z,x+(320+28)*image_xscale,y-4+z,false)
draw_rectangle(x+(16+11)*image_xscale,y-52-2+z,x+(16+16)*image_xscale,y-52+6+2+z,false)
draw_rectangle(x+(16+12+1)*image_xscale,y-53-4+z,x+(320)*image_xscale,y-52+6+1+4+z,false)
draw_set_color(c_white)
}

///Robot Flames
if object_index=oRobotBurn
if anim=12 and AnimFrame=clamp(AnimFrame,3,11)
{if specialcheck5=4 specialcheck5=0 else specialcheck5+=0.25
if AnimFrame!=clamp(AnimFrame,4,11)
draw_sprite_ext(spr_hina_firebreath2,0,x+34*image_xscale,y-42,image_xscale,1,0,c_white,1)
else
draw_sprite_ext(spr_hina_firebreath,specialcheck5,x+34*image_xscale,y-42,image_xscale,1,0,c_white,1)
}

///Robot Ice
if object_index=oRobotIce
if anim=12 and AnimFrame=clamp(AnimFrame,3,11)
{if specialcheck5=4.5 specialcheck5=4.5 else specialcheck5+=0.25 if specialcheck3=0 specialcheck3=1 else specialcheck3-=0.5
if specialcheck3=0
draw_sprite_ext(spr_robot_ice,specialcheck5,x+34*image_xscale,y-42,image_xscale,1,0,c_white,1)
}

///L Arm
if robotArmL=1
{
if image_alpha<1
draw_sprite_ext(robotArmLsprite,robotArmLIndex,round(x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale+(robotArmLX*(image_xscale*wobbleX))+(shake*image_xscale)),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+robotArmLY*wobbleY+z+extraY),image_xscale*robotArmLXscale,image_yscale*robotArmLYscale,robotArmLAngle*image_xscale,c_black,1)


draw_sprite_ext(robotArmLsprite,robotArmLIndex,round(x+((floorPosX[image_index]+waistPosX[image_index]+headPosX[image_index])*SpritePos)*image_xscale+(robotArmLX*(image_xscale*wobbleX))+(shake*image_xscale)),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+robotArmLY*wobbleY+z+extraY),image_xscale*robotArmLXscale,image_yscale*robotArmLYscale,robotArmLAngle*image_xscale,image_blend,image_alpha)
}

pal_swap_reset();
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