// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function paletteeditor_draw(){

draw_sprite(spr_custompal,0,0,0)	

draw_sprite_ext(spr_custompal,0,0,64,2,2,0,c_white,1-0.5*SelectChar)

matrix_set(matrix_world,matrix_build(48,16,0,0,0,0,6,6,1))
draw_sprite_part_ext(spr_custompal,0,1,0,16,24,1,0,1,1,c_white,1-0.5*SelectChar)	

draw_sprite_part_ext(spr_custompal,0,0,0,1,24,-1,0,1,1,c_white,1-0.5*SelectChar)	

draw_set_color(c_black)
draw_rectangle(current_pal,paletterow,1*current_pal,1*paletterow,true)
matrix_set(matrix_world, matrix_build_identity());

draw_set_color(c_white)

pal_swap_set(spr_custompal,current_pal,false);
draw_sprite(sprite_index,0,320-88,160)

shader_reset()



TotalColor=surface_getpixel(application_surface,current_pal*2,64+paletterow*2);
var pixelget=surface_getpixel(application_surface,current_pal*2,64+paletterow*2);

if pickedcolor=0
{
colorR=colour_get_red(TotalColor);
colorG=colour_get_green(TotalColor);
colorB=colour_get_blue(TotalColor);
}

copyR=colour_get_red(copyColor);
copyG=colour_get_green(copyColor);
copyB=colour_get_blue(copyColor);

draw_set_font(global.scorefont)
if pickedcolor=1
{
if SelectAll=0
{
if colorOrder=1 draw_set_color(c_red) draw_text(48,17*10,"R: "+string(colorR)) draw_set_color(c_white)
if colorOrder=2 draw_set_color(c_green) draw_text(48,17*10+10,"G: "+string(colorG)) draw_set_color(c_white)
if colorOrder=3 draw_set_color(c_blue) draw_text(48,17*10+20,"B: "+string(colorB)) draw_set_color(c_white)
}
else
{draw_set_color(TotalColor) 
draw_text(48,17*10,"R: "+string(colorR))
draw_text(48,17*10+10,"G: "+string(colorG))
draw_text(48,17*10+20,"B: "+string(colorB)) draw_set_color(c_white)
}
}
else
{
if colorOrder=1 draw_set_color(c_white) draw_text(48,17*10,"R: "+string(colorR)) draw_set_color(c_white)
if colorOrder=2 draw_set_color(c_white) draw_text(48,17*10+10,"G: "+string(colorG)) draw_set_color(c_white)
if colorOrder=3 draw_set_color(c_white) draw_text(48,17*10+20,"B: "+string(colorB)) draw_set_color(c_white)
}

draw_set_color(TotalColor) draw_text(48,17*10+30,"TOTAL: "+string(TotalColor)) draw_set_color(c_white)

draw_set_color(make_color_rgb(copyR,copyG,copyB))
draw_rectangle(320-45,184-16,320-45+32,184+16,false)

draw_set_color(make_color_rgb(colorR,colorG,colorB))
draw_rectangle(45-32,184-16,45,184+16,false)

draw_rectangle(current_pal,paletterow,1*current_pal,1*paletterow,false)

draw_set_halign(fa_center)
draw_set_color(c_white) draw_text(320-88,160-120,name)

draw_set_halign(fa_right) draw_text(320-45-4,184,"COLOR\nCOPY")
draw_set_halign(fa_left)

draw_command(9)

if key_super{	////RESET COLOR
//draw_sprite_part_ext(spr_custompal,0,0,0+paletterow-1,1,paletterow,1*current_pal,paletterow,1,1,c_white,1)

draw_sprite_part_ext(spr_custompal,0,0,0,1,24,1*current_pal,0,1,1,c_white,1)
//draw_sprite_part_ext(spr_custompal,0,0,0-1+1*paletterow,1,1*paletterow,1*current_pal,(1*paletterow),1,1,c_white,1)
surface_save_part(application_surface,"Special/custompalette.png",0,0,16,24)
sprite_replace(spr_custompal,"Special/custompalette.png",0,0,0,0,0)
}

}