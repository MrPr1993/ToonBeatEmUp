/// @description Insert description here
// You can write your code in this editor
pal_swap_set(my_pal_sprite,current_pal,false);

draw_sprite(sprite_index,image_index,x+shake,y+18)

	
	pal_swap_reset();
	shader_reset()
	
var addh=0; if character=3 addh=20;
	
if bagged!=0
{bagged+=8;
draw_sprite(spr_singbag,0,x,addh-260+bagged)
}


draw_sprite(spr_singmic,0,x+8,20+addh)

if anim=0 or anim=1
{
draw_set_color(c_white)
draw_rectangle(18+x,106*2,18+x+40,(105+4)*2,false)
draw_set_color(playercolor)
draw_rectangle(18+x+1,-1+106*2,18+x+(40-1)*(singhp/100),-1+(105+4-1)*2,false)
draw_set_color(c_white)
}

