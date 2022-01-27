// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_playerhp(){
d3d_transform_set_identity()
if playerNO=1
d3d_transform_set_translation(0,0,0)
if playerNO=2
d3d_transform_set_translation(72,0,0)
if playerNO=3
d3d_transform_set_translation(320-72-72,0,0)
if playerNO=4
d3d_transform_set_translation(320-72,0,0)

if hp>0
draw_sprite_part_ext(spr_hpbar,character,0,0,32*hp,10,24,21,1,1,c_white,1)
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite(spr_playerface,character,2,8)
pal_swap_reset();
shader_reset()

draw_set_font(global.scorefont)
if string_length(name)<=4
draw_text(25,12,string_hash_to_newline(name))
else
draw_text_transformed(25,12,string_hash_to_newline(name),0.75,1,0)
draw_set_font(-1)
draw_set_color(c_black)///Super Bar
if super>0
draw_sprite_part_ext(spr_superbar,0,0,0,(12*super)/17.5,10,57,21,1,1,c_white,1)
draw_set_color(c_white)
if oControl.superFlashFrame1<1 and super>=17.5
{shader_set(shd_white_sprite)
draw_sprite_part_ext(spr_superbar,0,0,0,(12*super)/17.5,10,57,21,1,1,c_white,1)
shader_reset()
}

draw_set_font(global.scorefont)
draw_set_halign(fa_right)
draw_text(70,12,string_hash_to_newline(PlayerLife)) //draw_text(39,0,7400)
draw_text(70,2,string_hash_to_newline(PlayerScore)) //draw_text(39,0,7400)
draw_set_halign(fa_left)
d3d_transform_set_identity()
}