// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//draw_charinfoicon(1,spr_playerface,2,1,1)



function draw_charinfoicon(){
if dataSelect=clamp(dataSelect,argument0-7,argument0+7)
{if unlockedChar[argument0]=0 {shader_reset()draw_set_color(c_black)}

draw_sprite_ext(argument1,argument2,argument3-24+dataSet,26,1,1,0,argument4,1) draw_set_alpha(1)
shader_set(shd_grayscale)
}
}