/// @description Insert description here
// You can write your code in this editor
if sprite_index=spr_ghost_axe and animFrame=clamp(animFrame,0,3)
draw_sprite_ext(spr_ghost_axeobj,0,round(x-(43)*image_xscale),round(y-83+z),1,1,270,c_white,(0.8*animFrame)/3)
script_execute(chardraw);
