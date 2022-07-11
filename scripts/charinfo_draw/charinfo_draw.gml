// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_draw(){
if instance_exists(oCharacterInfo) {fpsX=128+8 fpsY=8 with oCharacterInfo
{
/// @description Insert description here
// You can write your code in this editor
shader_reset()
draw_set_color(c_white) draw_set_alpha(1)
//shader_set(shd_grayscale) - 24
//Row 1 - Max 48

if dataSelect<7 dataSet=0 else
if dataSelect<14-1 dataSet=-144 else
if dataSelect<21-2 dataSet=-144*2 else
if dataSelect<28-3 dataSet=-144*3 else 
if dataSelect<35-4 dataSet=-144*4 else 
if dataSelect<42-5 dataSet=-144*5 else 
if dataSelect<49-6 dataSet=-144*6 else
if dataSelect<56-7 dataSet=-144*7


//draw_sprite_ext(spr_enemyface,0,24,26,1,1,0,unlockedChar[1],1)
shader_set(shd_grayscale)
if dataRow=1
{///Diva set
draw_charinfoicon(1,spr_playerface,0,24+24,1)
draw_charinfoicon(2,spr_playerface,1,24+24*2,1)
draw_charinfoicon(3,spr_playerface,2,24+24*3,1)
draw_charinfoicon(4,spr_playerface,3,24+24*4,1)
//draw_charinfoicon(5,spr_playerface,1,24*5,unlockedChar[5])
//draw_charinfoicon(6,spr_playerface,1,24*6,unlockedChar[6])
}
else
if dataRow=2
{
if dataSet=0
{
draw_charinfoicon(1,spr_enemyface,1,24,unlockedChar[1]) //20
draw_charinfoicon(2,spr_enemyface,20,24*2,unlockedChar[2])
draw_charinfoicon(3,spr_enemyface,6,24*3,unlockedChar[3])
draw_charinfoicon(4,spr_enemyface,2,24*4,unlockedChar[4])
draw_charinfoicon(5,spr_enemyface,4,24*5,unlockedChar[5])
draw_charinfoicon(6,spr_enemyface,7,24*6,unlockedChar[6])
}
else
if dataSet=-144
{
draw_charinfoicon(7,spr_enemyface,3,24*7,unlockedChar[7])
draw_charinfoicon(8,spr_enemyface,8,24*8,unlockedChar[8])
draw_charinfoicon(9,spr_enemyface,19,24*9,unlockedChar[9])
draw_charinfoicon(10,spr_enemyface,37,24*10,unlockedChar[10])
draw_charinfoicon(11,spr_enemyface,44,24*11,unlockedChar[11])
draw_charinfoicon(12,spr_enemyface,13,24*12,unlockedChar[12])
}
else
if dataSet=-144*2
{
draw_charinfoicon(13,spr_enemyface,14,24*13,unlockedChar[13])
draw_charinfoicon(14,spr_enemyface,21,24*14,unlockedChar[14])
draw_charinfoicon(15,spr_miscface,0,24*15,unlockedChar[15])
draw_charinfoicon(16,spr_enemyface,12,24*16,unlockedChar[16])
draw_charinfoicon(17,spr_enemyface,24,24*17,unlockedChar[17])
draw_charinfoicon(18,spr_enemyface,15,24*18,unlockedChar[18])
}
else
if dataSet=-144*3
{
draw_charinfoicon(19,spr_enemyface,16,24*19,unlockedChar[19])
draw_charinfoicon(20,spr_enemyface,29,24*20,unlockedChar[20])
draw_charinfoicon(21,spr_enemyface,42,24*21,unlockedChar[21])
draw_charinfoicon(22,spr_enemyface,45,24*22,unlockedChar[22])
draw_charinfoicon(23,spr_enemyface,25,24*23,unlockedChar[23])
draw_charinfoicon(24,spr_enemyface,26,24*24,unlockedChar[24])
}
else
if dataSet=-144*4
{
draw_charinfoicon(25,spr_enemyface,23,24*25,unlockedChar[25])
draw_charinfoicon(26,spr_enemyface,28,24*26,unlockedChar[26])
draw_charinfoicon(27,spr_enemyface,43,24*27,unlockedChar[27])
draw_charinfoicon(28,spr_enemyface,27,24*28,unlockedChar[28])
draw_charinfoicon(29,spr_enemyface,22,24*29,unlockedChar[29])
draw_charinfoicon(30,spr_enemyface,46,24*30,unlockedChar[30])
}
else
if dataSet=-144*5
{
draw_charinfoicon(31,spr_enemyface,31,24*31,unlockedChar[31])
draw_charinfoicon(32,spr_enemyface,32,24*32,unlockedChar[32])
draw_charinfoicon(33,spr_enemyface,33,24*33,unlockedChar[33])
draw_charinfoicon(34,spr_enemyface,34,24*34,unlockedChar[34])
draw_charinfoicon(35,spr_enemyface,35,24*35,unlockedChar[35])
draw_charinfoicon(36,spr_enemyface,36,24*36,unlockedChar[36])
}
else
if dataSet=-144*6
{
draw_charinfoicon(37,spr_enemyface,37,24*37,unlockedChar[37])
draw_charinfoicon(38,spr_enemyface,38,24*38,unlockedChar[38])
draw_charinfoicon(39,spr_enemyface,39,24*39,unlockedChar[39])
draw_charinfoicon(40,spr_enemyface,40,24*40,unlockedChar[40])
draw_charinfoicon(41,spr_enemyface,41,24*41,unlockedChar[41])
draw_charinfoicon(42,spr_enemyface,42,24*42,unlockedChar[42])
}
else
{
draw_charinfoicon(43,spr_enemyface,43,24*43,unlockedChar[43])
draw_charinfoicon(44,spr_enemyface,44,24*44,unlockedChar[44])
draw_charinfoicon(45,spr_enemyface,45,24*45,unlockedChar[45])
draw_charinfoicon(46,spr_enemyface,46,24*46,unlockedChar[46])
draw_charinfoicon(47,spr_enemyface,47,24*47,unlockedChar[47])
draw_charinfoicon(48,spr_enemyface,48,24*48,unlockedChar[48])
}
}
if dataRow=3 ///Bosses
{
if dataSet=0
{
draw_charinfoicon(1,spr_enemyface,1,9,unlockedChar[1]) //20
draw_charinfoicon(2,spr_enemyface,35,24*2,unlockedChar[2])
draw_charinfoicon(3,spr_enemyface,10,24*3,unlockedChar[3])
draw_charinfoicon(4,spr_enemyface,34,24*4,unlockedChar[4])
draw_charinfoicon(5,spr_enemyface,17,24*5,unlockedChar[5])
draw_charinfoicon(6,spr_enemyface,11,24*6,unlockedChar[6])
}
else
if dataSet=-144
{
draw_charinfoicon(7,spr_enemyface,31,24*7,unlockedChar[7])
draw_charinfoicon(8,spr_enemyface,32,24*8,unlockedChar[8])
draw_charinfoicon(9,spr_enemyface,38,24*9,unlockedChar[9])
draw_charinfoicon(10,spr_enemyface,39,24*10,unlockedChar[10])
draw_charinfoicon(11,spr_enemyface,40,24*11,unlockedChar[11])
draw_charinfoicon(12,spr_enemyface,41,24*12,unlockedChar[12])
}
else
if dataSet=-144*2
{
draw_charinfoicon(13,spr_enemyface,13,24*13,unlockedChar[13])
draw_charinfoicon(14,spr_enemyface,14,24*14,unlockedChar[14])
draw_charinfoicon(15,spr_enemyface,15,24*15,unlockedChar[15])
draw_charinfoicon(16,spr_enemyface,16,24*16,unlockedChar[16])
draw_charinfoicon(17,spr_enemyface,17,24*17,unlockedChar[17])
draw_charinfoicon(18,spr_enemyface,18,24*18,unlockedChar[18])
}
else
if dataSet=-144*3
{
draw_charinfoicon(19,spr_enemyface,19,24*19,unlockedChar[19])
draw_charinfoicon(20,spr_enemyface,20,24*20,unlockedChar[20])
draw_charinfoicon(21,spr_enemyface,21,24*21,unlockedChar[21])
draw_charinfoicon(22,spr_enemyface,22,24*22,unlockedChar[22])
draw_charinfoicon(23,spr_enemyface,23,24*23,unlockedChar[23])
draw_charinfoicon(24,spr_enemyface,24,24*24,unlockedChar[24])
}
else
if dataSet=-144*4
{
draw_charinfoicon(25,spr_enemyface,25,24*25,unlockedChar[25])
draw_charinfoicon(26,spr_enemyface,26,24*26,unlockedChar[26])
draw_charinfoicon(27,spr_enemyface,27,24*27,unlockedChar[27])
draw_charinfoicon(28,spr_enemyface,28,24*28,unlockedChar[28])
draw_charinfoicon(29,spr_enemyface,29,24*29,unlockedChar[29])
draw_charinfoicon(30,spr_enemyface,30,24*30,unlockedChar[30])
}
else
if dataSet=-144*5
{
draw_charinfoicon(31,spr_enemyface,31,24*31,unlockedChar[31])
draw_charinfoicon(32,spr_enemyface,32,24*32,unlockedChar[32])
draw_charinfoicon(33,spr_enemyface,33,24*33,unlockedChar[33])
draw_charinfoicon(34,spr_enemyface,34,24*34,unlockedChar[34])
draw_charinfoicon(35,spr_enemyface,35,24*35,unlockedChar[35])
draw_charinfoicon(36,spr_enemyface,36,24*36,unlockedChar[36])
}
else
if dataSet=-144*6
{
draw_charinfoicon(37,spr_enemyface,37,24*37,unlockedChar[37])
draw_charinfoicon(38,spr_enemyface,38,24*38,unlockedChar[38])
draw_charinfoicon(39,spr_enemyface,39,24*39,unlockedChar[39])
draw_charinfoicon(40,spr_enemyface,40,24*40,unlockedChar[40])
draw_charinfoicon(41,spr_enemyface,41,24*41,unlockedChar[41])
draw_charinfoicon(42,spr_enemyface,42,24*42,unlockedChar[42])
}
else
{
draw_charinfoicon(43,spr_enemyface,43,24*43,unlockedChar[43])
draw_charinfoicon(44,spr_enemyface,44,24*44,unlockedChar[44])
draw_charinfoicon(45,spr_enemyface,45,24*45,unlockedChar[45])
draw_charinfoicon(46,spr_enemyface,46,24*46,unlockedChar[46])
draw_charinfoicon(47,spr_enemyface,47,24*47,unlockedChar[47])
draw_charinfoicon(48,spr_enemyface,48,24*48,unlockedChar[48])
}
}

if dataSet=0
{
if dataRow=1
draw_sprite_ext(spr_playerface,0,24,26,1,1,0,c_white,1)
if dataRow=2
draw_sprite_ext(spr_enemyface,1,0,26,1,1,0,c_white,1)
if dataRow=3
draw_sprite_ext(spr_enemyface,9,0,26,1,1,0,c_white,1)
draw_set_alpha(1)
}
shader_reset()
draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(-5,-5,144,320,0) draw_set_alpha(1) draw_set_color(c_white)
pal_swap_set(my_pal_sprite,current_pal,false);
draw_set_color(c_white)

if dataRow=1
draw_sprite_ext(enemyPortraitSpr,enemyPortraitIndex,24+-24+24*dataSelect+dataSet,26,1,1,0,unlockedChar[charNO]*showBlend,1)
else
if dataRow=2 or dataRow=3
draw_sprite_ext(enemyPortraitSpr,enemyPortraitIndex,-24+24*dataSelect+dataSet,26,1,1,0,unlockedChar[charNO]*showBlend,1)


pal_swap_reset();

shader_reset()

draw_set_halign(fa_center)

if dataRow=1
draw_sprite(spr_playerface,4,24+-24+24*dataSelect+dataSet,26)
else
if dataRow=2 or dataRow=3
draw_sprite(spr_playerface,4,-24+24*dataSelect+dataSet,26)

//draw_set_color(c_black) draw_rectangle(145,-1,333,40,false) draw_set_color(c_white)
draw_set_font(global.scorefont)
 //Name
 if hasVariants=1
 {
draw_text(224+8,0,"\nPRESS J TO SWITCH\nVARIATION ("+string(dataPal)+string("/")+string(dataPalMax)+")") //Name
 }
draw_text(72,8,"("+string(dataSelect)+"/"+string(dataRowMax)+")") //TITLE

draw_text(72,16+2,"-"+string(categoryNames)+"-")

draw_text(72,16+24+10+4,"-"+string(name)+"-")

draw_set_halign(fa_right)
//draw_text_transformed(320-2-144,32+26,descright,0.75,1,0) //Name
draw_set_halign(fa_left)
draw_text_transformed(146-144,32+26+4,string_upper(descleft),0.75,1,0) //Name
draw_text_transformed(146-144,32+26+32+8+4,string_upper(descright),0.75,1,0) //Name
font_size = font_get_size(global.scorefont);
var padding = (font_size )
var tex_start_x = ( (ceil(0))+ padding-8);
var tex_start_y = ( (ceil(0))+ padding-8);
//draw_text(146+2-144,32+52+32+8,desc) //Description 188
//desc="aaafseroenre4235"
draw_text_ext(tex_start_x+146+2-144-4,tex_start_y+32+52+32+8,string_upper(desc),8,136) //Description 188
draw_text_ext_transformed(4,240-24,string_upper(dataabilities),8,102,0.75,1,0)
draw_text_transformed(4,240-32,"ABILITIES:",0.75,1,0)

draw_sprite(spr_selface,0,round(144-arrowSel2-24),0) if arrowSel1>0 arrowSel1-=0.1 else arrowSel1=0
draw_sprite(spr_selface,1,round(0+arrowSel1),0) if arrowSel2>0 arrowSel2-=0.1 else arrowSel2=0
//maxhp*45
draw_set_color(c_white) draw_rectangle(224+8-1-round(maxhp*45/2),8-1+20,224+8+1+round(maxhp*45/2),8+8+1+20,false)
draw_set_color(c_yellow) draw_rectangle(224+8-round(maxhp*45/2),8+20,224+8+round(maxhp*45/2),8+8+20,false)

}
}}