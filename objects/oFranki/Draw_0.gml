script_execute(chardraw);



if sprite_index=spr_franki_grabatk
{if image_index<2.5 with selfatk.hitID draw_player()
	
	if image_index<1
	draw_sprite_ext(spr_franki_grabatk,3,x,y+z,image_xscale,1,0,c_white,image_alpha)
	else
	if image_index<2
	draw_sprite_ext(spr_franki_grabatk,3,x,y+z+2,image_xscale,1,0,c_white,image_alpha)
	else
	draw_sprite_ext(spr_franki_grabatk,3,x,y+z-10,image_xscale,1,0,c_white,image_alpha)
}