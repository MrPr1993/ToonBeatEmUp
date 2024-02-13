/// @description Insert description here
// You can write your code in this editor
image_xscale=1
draw_sprite_ext(sprite_index,image_index,round(x),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)


if enemyset=2 draw_sprite(spr_mirrorlady_front,0,x,y)
if enemyset=3 draw_sprite(spr_mirrorlady_front,1,x,y)
if anim=12 draw_sprite(spr_mirrorlady_front,2,x,y)

