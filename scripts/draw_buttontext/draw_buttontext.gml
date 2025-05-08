function draw_buttontext(_x,_y,_sep,_lefttext,_buttonspr,_buttonind,_midtext,_righttext){	
var BtextX=round(_x);
var BtextY=round(_y);
var BtextSep=round(_sep);
draw_sprite(_buttonspr,_buttonind,BtextX,BtextY+4)
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text(BtextX-BtextSep/2,BtextY,_lefttext)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(BtextX,BtextY,_midtext) draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text(BtextX+BtextSep/2,BtextY,_righttext)
}


function draw_buttontext_ext(_x,_y,_sep,_lefttext,_buttonspr,_buttonind,_midtext,_righttext,_lscaleX,_lscaleY,_mscaleX,_mscaleY,_rscaleX,_rscaleY){	
var BtextX=round(_x);
var BtextY=round(_y);
var BtextSep=round(_sep);
draw_sprite(_buttonspr,_buttonind,BtextX,BtextY+4)
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text_transformed(BtextX-BtextSep/2,BtextY,_lefttext,_lscaleX,_lscaleY,0)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text_transformed(BtextX,BtextY,_midtext,_mscaleX,_mscaleY,0) draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text_transformed(BtextX+BtextSep/2,BtextY,_righttext,_rscaleX,_rscaleY,0)
}