/// @description draw_buttontext(x,y,sep,lefttext,buttonspr,buttonind,midtext,righttext)
/// @param _x
/// @param _y
/// @param _sep
/// @param _lefttext
/// @param _buttonspr
/// @param _buttonind
/// @param _midtext
/// @param _righttext

function draw_buttontext(){	
var BtextX=round(argument0);
var BtextY=round(argument1);
var BtextSep=round(argument2);
draw_sprite(argument4,argument5,BtextX,BtextY+4)
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text(BtextX-BtextSep/2,BtextY,argument3)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text(BtextX,BtextY,argument6) draw_set_color(c_white)
draw_set_halign(fa_left)
draw_text(BtextX+BtextSep/2,BtextY,argument7)
}