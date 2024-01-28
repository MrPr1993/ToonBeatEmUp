/// @description Insert description here
// You can write your code in this editor
	pal_swap_set(my_pal_sprite,current_pal,false);

draw_sprite(sprite_index,image_index,x+shake,y+3)



//draw_set_font(global.scorefont)
//draw_text_transformed(x+40,y-32,foodno,2,2,0)
	
	pal_swap_reset();
	shader_reset()

if foodhp=0
draw_sprite(brickspr,0,x,y+120)
else
draw_sprite(brickspr,1+7.9*(foodhp/50),x,y+120)
