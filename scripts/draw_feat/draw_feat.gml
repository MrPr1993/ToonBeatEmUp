// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_feat(_number,_sprite,_index,_color,_name,_desc){
if featsel=clamp(featsel,argument0-4,argument0+4)
{
d3d_transform_set_identity()
d3d_transform_add_translation(0,featY+(48*(argument0-1))+48-48,0)
draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(0,48-24,320,48+24,false)

var lockfeat=0; if global.Feats[_number]!=0 lockfeat=1;

if global.Feats[_number]=2 shader_set(shd_grayscale)
draw_sprite_ext(argument1,argument2*lockfeat,4+24,4+32+32-32,1,1,0,argument3,1)
shader_reset()
draw_set_alpha(1) ///248
var textfeat="???" if global.Feats[_number]!=0 textfeat=argument4;
var textfeat2="" if global.Feats[_number]!=0 textfeat2=argument5;
draw_set_color(argument3) draw_text(4+28+32,48-8,string(argument0)+"."+string(string_upper(textfeat)))
draw_text_ext(4+28+32,48,string_upper(textfeat2),8,248)
draw_set_color(c_yellow)
if global.Feats[_number]=1
draw_text(4+28+32,48-16,"COMPLETE!")
draw_set_color(c_black)
if oControl.featsel=argument0
draw_set_alpha(0)
else
draw_set_alpha(0.75)
draw_rectangle(0,48-24,320,48+24,false)
draw_set_alpha(0) draw_set_color(c_white)
d3d_transform_set_identity()
}
}