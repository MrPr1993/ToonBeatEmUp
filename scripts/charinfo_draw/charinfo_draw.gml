// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_draw(){
if instance_exists(oCharacterInfo) with oCharacterInfo
{
/// @description Insert description here
// You can write your code in this editor
shader_reset()
draw_set_color(c_white) draw_set_alpha(1)
shader_set(shd_grayscale)
//Row 1
draw_sprite_ext(spr_playerface,0,0,26,1,1,0,unlockedChar[1],1)
draw_sprite_ext(spr_playerface,1,24,26,1,1,0,unlockedChar[2],1)
draw_sprite_ext(spr_playerface,2,48,26,1,1,0,unlockedChar[3],1)
draw_sprite_ext(spr_playerface,3,72,26,1,1,0,unlockedChar[4],1)
draw_sprite_ext(spr_enemyface,1,96,26,1,1,0,unlockedChar[5],1)
draw_sprite_ext(spr_enemyface,20,120,26,1,1,0,unlockedChar[6],1)
//Row 2
draw_sprite_ext(spr_enemyface,6,0,26*2,1,1,0,unlockedChar[7],1)
draw_sprite_ext(spr_enemyface,2,24,26*2,1,1,0,unlockedChar[8],1)
draw_sprite_ext(spr_enemyface,4,48,26*2,1,1,0,unlockedChar[9],1)
draw_sprite_ext(spr_enemyface,7,72,26*2,1,1,0,unlockedChar[10],1)
draw_sprite_ext(spr_enemyface,3,96,26*2,1,1,0,unlockedChar[11],1)
draw_sprite_ext(spr_enemyface,8,120,26*2,1,1,0,unlockedChar[12],1)
//Row 3
draw_sprite_ext(spr_enemyface,0,0,26*3,1,1,0,unlockedChar[13],1)
draw_sprite_ext(spr_enemyface,0,24,26*3,1,1,0,unlockedChar[14],1)
draw_sprite_ext(spr_enemyface,0,48,26*3,1,1,0,unlockedChar[15],1)
draw_sprite_ext(spr_enemyface,0,72,26*3,1,1,0,unlockedChar[16],1)
draw_sprite_ext(spr_enemyface,0,96,26*3,1,1,0,unlockedChar[17],1)
draw_sprite_ext(spr_enemyface,0,120,26*3,1,1,0,unlockedChar[18],1)
//Row 4
draw_sprite_ext(spr_enemyface,0,0,26*4,1,1,0,unlockedChar[19],1)
draw_sprite_ext(spr_enemyface,0,24,26*4,1,1,0,unlockedChar[20],1)
draw_sprite_ext(spr_enemyface,0,48,26*4,1,1,0,unlockedChar[21],1)
draw_sprite_ext(spr_enemyface,0,72,26*4,1,1,0,unlockedChar[22],1)
draw_sprite_ext(spr_enemyface,0,96,26*4,1,1,0,unlockedChar[23],1)
draw_sprite_ext(spr_enemyface,0,120,26*4,1,1,0,unlockedChar[24],1)
//Row 5
draw_sprite_ext(spr_enemyface,0,0,26*5,1,1,0,unlockedChar[25],1)
draw_sprite_ext(spr_enemyface,0,24,26*5,1,1,0,unlockedChar[26],1)
draw_sprite_ext(spr_enemyface,0,48,26*5,1,1,0,unlockedChar[27],1)
draw_sprite_ext(spr_enemyface,0,72,26*5,1,1,0,unlockedChar[28],1)
draw_sprite_ext(spr_enemyface,0,96,26*5,1,1,0,unlockedChar[29],1)
draw_sprite_ext(spr_enemyface,0,120,26*5,1,1,0,unlockedChar[30],1)
//Row 6
draw_sprite_ext(spr_enemyface,0,0,26*6,1,1,0,unlockedChar[31],1)
draw_sprite_ext(spr_enemyface,0,24,26*6,1,1,0,unlockedChar[32],1)
draw_sprite_ext(spr_enemyface,0,48,26*6,1,1,0,unlockedChar[33],1)
draw_sprite_ext(spr_enemyface,0,72,26*6,1,1,0,unlockedChar[34],1)
draw_sprite_ext(spr_enemyface,0,96,26*6,1,1,0,unlockedChar[35],1)
draw_sprite_ext(spr_enemyface,0,120,26*6,1,1,0,unlockedChar[36],1)
//Row 7
draw_sprite_ext(spr_enemyface,0,0,26*7,1,1,0,unlockedChar[37],1)
draw_sprite_ext(spr_enemyface,0,24,26*7,1,1,0,unlockedChar[38],1)
draw_sprite_ext(spr_enemyface,0,48,26*7,1,1,0,unlockedChar[39],1)
draw_sprite_ext(spr_enemyface,0,72,26*7,1,1,0,unlockedChar[40],1)
draw_sprite_ext(spr_enemyface,0,96,26*7,1,1,0,unlockedChar[41],1)
draw_sprite_ext(spr_enemyface,0,120,26*7,1,1,0,unlockedChar[42],1)
//Row 8
draw_sprite_ext(spr_enemyface,0,0,26*8,1,1,0,unlockedChar[43],1)
draw_sprite_ext(spr_enemyface,0,24,26*8,1,1,0,unlockedChar[44],1)
draw_sprite_ext(spr_enemyface,0,48,26*8,1,1,0,unlockedChar[45],1)
draw_sprite_ext(spr_enemyface,0,72,26*8,1,1,0,unlockedChar[46],1)
draw_sprite_ext(spr_enemyface,0,96,26*8,1,1,0,unlockedChar[47],1)
draw_sprite_ext(spr_enemyface,0,120,26*8,1,1,0,unlockedChar[48],1)
shader_reset()
draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(-5,-5,144,320,0) draw_set_alpha(1) draw_set_color(c_white)
pal_swap_set(my_pal_sprite,current_pal,false);
draw_set_color(c_white)
draw_sprite_ext(enemyPortraitSpr,enemyPortraitIndex,-24+24*dataSelect,26*dataRow,1,1,0,unlockedChar[charNO]*showBlend,1)


pal_swap_reset();

shader_reset()

draw_set_halign(fa_center)

draw_sprite(spr_playerface,4,-24+24*dataSelect,26*dataRow)

draw_set_font(global.scorefont)
draw_text(224+8,24,"-"+string(name)+"-") //Name

draw_text(224+8,0,"\nPRESS J TO SWITCH\nVARIATION ("+string(dataPal)+string("/")+string(dataPalMax)+")") //Name
draw_text(72,16,"PICK A CHARACTER") //TITLE
draw_set_halign(fa_right)
draw_text_transformed(320-2,32,descright,0.75,1,0) //Name
draw_set_halign(fa_left)
draw_text_transformed(146,32,descleft,0.75,1,0) //Name
draw_text(146+2,188,desc) //Description


}
}