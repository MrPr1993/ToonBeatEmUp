/// @description Insert description here
// You can write your code in this editor
	pal_swap_set(my_pal_sprite,current_pal,false);

draw_sprite(sprite_index,image_index,x+shake,y)

draw_sprite(brickspr,brickbreak,x,240)

	
	pal_swap_reset();
	shader_reset()

d3d_transform_set_identity()
{
if playerNO=1
d3d_transform_set_translation(0,0,0)
if playerNO=2
d3d_transform_set_translation(72,0,0)
if playerNO=3
d3d_transform_set_translation(320-72-72,0,0)
if playerNO=4
d3d_transform_set_translation(320-72,0,0)
}

draw_sprite(spr_hud,0,0,0)
if anim=0 or anim=1
{
draw_set_color(c_white)
draw_rectangle(2+1,60-4+1-16,72-2-1,60+4-1-16,false)
draw_set_color(c_red)
draw_rectangle(2,60-4-16,72-2,60+4-16,false)
draw_set_color(c_yellow)
draw_rectangle(2+26,60-4-16,72-2-26,60+4-16,false)
draw_set_color(c_white)
draw_rectangle(2+34-34+meter,60-4-16,72-2-34-34+meter,60+4-16,false)
}
d3d_transform_set_identity()

draw_playerhp()