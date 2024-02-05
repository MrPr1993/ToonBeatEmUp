/// @description Insert description here
// You can write your code in this editor


draw_sprite(spr_hammergame,0,x+40,y)
for (var i=0;i<round(toweramount); i++)
{
draw_sprite(spr_hammergame,2,x+40,y-32-32*i)
}
//draw_sprite(spr_hammergame,4,x+40,y-32-32*i)
if win=0
draw_sprite(spr_hammergame,4,x+40,y-32-32*i)

var _xadd=0; //-16

draw_sprite(spr_hammergame,1,x+40,y-32-slotYdraw)

draw_sprite_ext(weaponspr,weaponIndex,round(_xadd+x+( (floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale+weaponX*(image_xscale*wobbleX)),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY+weaponY*wobbleY),image_xscale,image_yscale,weaponangle+weaponExtraAngle*image_xscale,weaponcolor,image_alpha)

pal_swap_set(my_pal_sprite,current_pal,false);

draw_sprite(sprite_index,image_index,x+shake+_xadd,y)

	pal_swap_reset();
	shader_reset()

if anim=0
if oHammerGame.ready=1
{
draw_set_color(c_red) draw_rectangle(x+40+4+16,y-128-16,x+40+8+16,y-16,false)
draw_set_color(c_yellow) draw_rectangle(x+40+4+16,y-((meter/(128)*128)*(128))-16,x+40+8+16,y-16,false)
}


draw_set_color(c_white)
