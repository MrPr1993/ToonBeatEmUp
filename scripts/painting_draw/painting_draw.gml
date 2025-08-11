// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function painting_draw(){

var noflattened=1;



if anim=9 {noflattened=0.10 frameInd=0 frameTotal=0 paintingScale=1}



if anim=40
draw_sprite_ext(frameSpr,frameTotal,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,c_black,image_alpha)
else 
if sprite_index=ShockSpr
{if image_index>=2 image_index=0
frameInd=0 paintingInd=0
draw_sprite_ext(frameSprElec,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)
}
else
if anim=41
draw_sprite_ext(frameSprFrozen,image_index,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)
else
draw_sprite_ext(frameSpr,frameTotal,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),wobbleX,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)


if hasback 
{
var _dirpic=1;
if frameTotal=clamp(frameTotal,5,12.9) _dirpic=-1
draw_sprite_ext(paintingSpr,paintingInd,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),((wobbleX)*paintingScale)*_dirpic,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)
}
else
if frameInd!=clamp(frameInd,4,16)
{
if anim=40 paintingInd=3
if sprite_index=ShockSpr {paintingInd=4+image_index }

draw_sprite_ext(paintingSpr,paintingInd,round(x+((floorPosX[image_index]*floorPos+waistPosX[image_index]*waistPos+headPosX[image_index]*headPos)*SpritePos)*image_xscale+shake*image_xscale),round(y+trainz+(floorPosY[image_index]*floorPos+waistPosY[image_index]*waistPos+headPosY[image_index]*headPos)*SpritePos+z+extraY),(wobbleX)*paintingScale,(image_yscale*wobbleY)*noflattened,image_angle,image_blend,image_alpha)
}
character_hitanims()

zblock_col()

}