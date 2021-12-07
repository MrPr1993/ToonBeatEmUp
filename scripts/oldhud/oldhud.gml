function oldhud() {
	//draw_sprite(spr_hud,0,80,0)
	with oPlayer if oControl.continueScreen=0
	{draw_sprite(spr_hud,0,0,0)
	if hp>0
	draw_sprite_ext(spr_hpbar,0,29,18,(1*hp)*2,1,0,c_white,1)
	var xoffset = 4;//To keep em' together
	for (var i=0; i<pow; i++)//Use for loop - HP BACK
	draw_sprite_ext(spr_powbar,0,115,24-(xoffset*i),1,1,0,c_white,1);
	draw_sprite(spr_hud,1,160+16,0)
	draw_sprite(spr_playerface,oPlayer.character,4,3)
	draw_set_font(global.scorefont)
	draw_text(28,8,string_hash_to_newline(oPlayer.name))
	draw_set_font(-1)
	draw_set_color(c_black)///Super Bar
	draw_rectangle(133,9,139,9+18-round(super),false)
	draw_set_color(c_white)
	if oControl.superFlashFrame1<1 and super>=17.5
	draw_rectangle(133,10,139,9+18,false)
	draw_set_font(global.scorefont)
	draw_text(86,8,string_hash_to_newline(PlayerLife)) //draw_text(39,0,7400)
	draw_set_halign(fa_right)
	draw_text(94,0,string_hash_to_newline(PlayerScore)) //draw_text(39,0,7400)
	draw_set_halign(fa_left)
	}
	draw_set_font(-1)
	if superFlashFrame1!=0 superFlashFrame1-=0.25 else superFlashFrame1=2
	if superFlashFrame2!=0 superFlashFrame2-=0.25 else superFlashFrame2=2
	//draw_sprite(spr_hud,0,240,0)



}
