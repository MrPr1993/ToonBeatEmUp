// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gallery_draw(){
if room=rm_gallery
{


if -key_left pictureX-=1
if key_right pictureX+=1
if key_up pictureY-=1
if key_down pictureY+=1
if key_charge if pictureZoom<5 pictureZoom+=0.001
if key_jump_hold if pictureZoom>0.01 pictureZoom-=0.001

//if key_LB//

draw_sprite_ext(spr_galleryimg1,galleryNO,160+pictureX,120+pictureY,1*pictureZoom,1*pictureZoom,0,c_white,1)

}
}