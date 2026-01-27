/// @description Insert description here
// You can write your code in this editor

if sprite_index!=BurnSpr
{
draw_sprite_ext(weaponspr,weaponIndex,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]+weaponX)*SpritePos)*image_xscale+(shake+weaponX)*image_xscale),round(y+(floorPosY[image_index]+waistPosY[image_index]+headPosY[image_index]+weaponY)*SpritePos+weaponY+z+extraY),image_xscale,image_yscale,(weaponangle*image_xscale)+weaponExtraAngle*image_xscale,c_white,image_alpha)
}
else
draw_sprite_ext(weaponspr,weaponIndex,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]+weaponX)*SpritePos)*image_xscale+(shake+weaponX)*image_xscale),round(y+(floorPosY[image_index]+waistPosY[image_index]+headPosY[image_index]+weaponY)*SpritePos+weaponY+z+extraY),image_xscale,image_yscale,(weaponangle*image_xscale)+weaponExtraAngle*image_xscale,c_black,image_alpha)

charFX()

character_hitanims()

zblock_col()

