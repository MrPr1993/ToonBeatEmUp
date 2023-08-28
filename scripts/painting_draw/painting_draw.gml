// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function painting_draw(){

var noflattened=1;



if anim=9 {noflattened=0.10 frameInd=0 frameTotal=0 paintingScale=1}

if anim=40 
draw_sprite_ext(frameSpr,frameTotal,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,c_black,image_alpha)
else 
if anim=8
{frameInd=0 paintingInd=0
draw_sprite_ext(spr_painting_elec,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)
}
else
draw_sprite_ext(frameSpr,frameTotal,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)

if frameInd!=clamp(frameInd,4,12)
{
if anim=40 paintingInd=3
if anim=8 paintingInd=4+image_index

draw_sprite_ext(paintingSpr,paintingInd,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(wobbleX)*paintingScale,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)
}
character_hitanims()

zblock_col()

}