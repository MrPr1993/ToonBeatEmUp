/// @description Insert description here
// You can write your code in this editor

if sprite_index=spr_ghost_greataxe and AnimFrame>=1
if AnimFrame<3
draw_sprite_ext(spr_ghost_greataxeobj,image_index,round(x+(10)*image_xscale),round(y-14+z),image_xscale,1,0,c_white,(0.8*AnimFrame)/2)
else
draw_sprite_ext(spr_ghost_greataxeobj,image_index,round(x+(10)*image_xscale),round(y-14+z),image_xscale,1,0,c_white,1-(AnimFrame/4))


if sprite_index=spr_ghost_axe and AnimFrame=clamp(AnimFrame,0,3)
draw_sprite_ext(spr_ghost_axeobj,0,round(x-(33)*image_xscale),round(y-83+z),1,1,270,c_white,(0.8*AnimFrame)/3)

script_execute(chardraw);

if sprite_index=spr_ghost_greataxe and AnimFrame<1
draw_sprite_ext(spr_ghost_greataxeobj,image_index,round(x+(10)*image_xscale),round(y+5+z),image_xscale,1,0,c_white,(0.8*AnimFrame)/2)
