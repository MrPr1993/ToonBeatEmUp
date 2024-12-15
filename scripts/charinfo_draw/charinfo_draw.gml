// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function charinfo_draw(){

if instance_exists(oCharacterInfo) {fpsX=258 fpsY=232
if betatest=1 if keyboard_check(ord("7"))
with oCharacterInfo
{
enemydata_unlockall()
}

	with oCharacterInfo
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


//draw_sprite_ext(spr_enemyface,0,24,26,1,1,0,c_white*unlockedChar[1],1)
shader_set(shd_grayscale)
if dataRow=1
{///Diva set
draw_set_color(c_white)
unlockedChar[0]=1
draw_charinfoicon(0,spr_playerface,0,24+24,1)
draw_charinfoicon(0,spr_playerface,1,24+24*2,1)
draw_charinfoicon(0,spr_playerface,2,24+24*3,1)
draw_charinfoicon(0,spr_playerface,3,24+24*4,1)
//draw_charinfoicon(5,spr_playerface,1,24*5,c_white*unlockedChar[5])
//draw_charinfoicon(6,spr_playerface,1,24*6,c_white*unlockedChar[6])
}

if dataRow=2
{
if dataSet=0
{
draw_charinfoicon(1,spr_enemyface,1,24,c_white*global.UnlockEnemy[1]) //20
draw_charinfoicon(2,spr_enemyface,20,24*2,c_white*global.UnlockEnemy[5])
draw_charinfoicon(3,spr_enemyface,6,24*3,c_white*global.UnlockEnemy[10])
draw_charinfoicon(4,spr_enemyface,2,24*4,c_white*global.UnlockEnemy[15])
draw_charinfoicon(5,spr_enemyface,4,24*5,c_white*global.UnlockEnemy[17])
draw_charinfoicon(6,spr_enemyface,7,24*6,c_white*global.UnlockEnemy[20])
}
else
if dataSet=-144
{
draw_charinfoicon(7,spr_enemyface,3,24*7,c_white*global.UnlockEnemy[25])
draw_charinfoicon(8,spr_enemyface,8,24*8,c_white*global.UnlockEnemy[28])
draw_charinfoicon(9,spr_enemyface,19,24*9,c_white*global.UnlockEnemy[30])
draw_charinfoicon(10,spr_enemyface,37,24*10,c_white*global.UnlockEnemy[32])
draw_charinfoicon(11,spr_enemyface,44,24*11,c_white*global.UnlockEnemy[34])
draw_charinfoicon(12,spr_enemyface,61,24*12,c_white*global.UnlockEnemy[37])
}
else
if dataSet=-144*2
{
draw_charinfoicon(13,spr_enemyface,13,24*13,c_white*global.UnlockEnemy[39])
draw_charinfoicon(14,spr_enemyface,14,24*14,c_white*global.UnlockEnemy[42])
draw_charinfoicon(15,spr_enemyface,21,24*15,c_white*global.UnlockEnemy[45])
draw_charinfoicon(16,spr_miscface,0,24*16,c_white*global.UnlockEnemy[47])
draw_charinfoicon(17,spr_miscface,0,24*17,c_white*global.UnlockEnemy[48])
draw_charinfoicon(18,spr_enemyface,12,24*18,c_white*global.UnlockEnemy[51])
}
else
if dataSet=-144*3
{
draw_charinfoicon(19,spr_enemyface,24,24*19,c_white*global.UnlockEnemy[53])
draw_charinfoicon(20,spr_enemyface,15,24*20,c_white*global.UnlockEnemy[55])
draw_charinfoicon(21,spr_enemyface,16,24*21,c_white*global.UnlockEnemy[58])
draw_charinfoicon(22,spr_enemyface,38,24*22,c_white*global.UnlockEnemy[60])
draw_charinfoicon(23,spr_enemyface,49,24*23,c_white*global.UnlockEnemy[63])
draw_charinfoicon(24,spr_enemyface,53,24*24,c_white*global.UnlockEnemy[69])
}
else
if dataSet=-144*4
{
draw_charinfoicon(25,spr_enemyface,29,24*25,c_white*global.UnlockEnemy[72])

draw_charinfoicon(26,spr_enemyface,63,24*26,c_white*global.UnlockEnemy[117])

draw_charinfoicon(27,spr_enemyface,42,24*27,c_white*global.UnlockEnemy[75])
draw_charinfoicon(28,spr_enemyface,50,24*28,c_white*global.UnlockEnemy[77])
draw_charinfoicon(29,spr_enemyface,45,24*29,c_white*global.UnlockEnemy[80])
draw_charinfoicon(30,spr_enemyface,25,24*30,c_white*global.UnlockEnemy[82])

}
else
if dataSet=-144*5
{
draw_charinfoicon(31,spr_enemyface,26,24*31,c_white*global.UnlockEnemy[85])
draw_charinfoicon(32,spr_enemyface,23,24*32,c_white*global.UnlockEnemy[88])
draw_charinfoicon(33,spr_enemyface,28,24*33,c_white*global.UnlockEnemy[90])
draw_charinfoicon(34,spr_enemyface,43,24*34,c_white*global.UnlockEnemy[93])
draw_charinfoicon(35,spr_enemyface,27,24*35,c_white*global.UnlockEnemy[95])
draw_charinfoicon(36,spr_enemyface,52,24*36,c_white*global.UnlockEnemy[97])
}
else
if dataSet=-144*6
{
draw_charinfoicon(37,spr_enemyface,22,24*37,c_white*global.UnlockEnemy[101])
draw_charinfoicon(38,spr_enemyface,51,24*38,c_white*global.UnlockEnemy[107])
draw_charinfoicon(39,spr_enemyface,48,24*39,c_white*global.UnlockEnemy[110])
draw_charinfoicon(40,spr_enemyface,46,24*40,c_white*global.UnlockEnemy[114])
//draw_charinfoicon(41,spr_enemyface,41,24*41,c_white*global.UnlockEnemy[41])
//draw_charinfoicon(42,spr_enemyface,42,24*42,c_white*global.UnlockEnemy[42])
}
else
{
draw_charinfoicon(43,spr_enemyface,43,24*43,c_white*global.UnlockEnemy[43])
draw_charinfoicon(44,spr_enemyface,44,24*44,c_white*global.UnlockEnemy[44])
draw_charinfoicon(45,spr_enemyface,45,24*45,c_white*global.UnlockEnemy[45])
draw_charinfoicon(46,spr_enemyface,46,24*46,c_white*global.UnlockEnemy[46])
draw_charinfoicon(47,spr_enemyface,47,24*47,c_white*global.UnlockEnemy[47])
draw_charinfoicon(48,spr_enemyface,48,24*48,c_white*global.UnlockEnemy[48])
}
}
if dataRow=3 ///Bosses
{
if dataSet=0
{
draw_charinfoicon(1,spr_enemyface,1,9,c_white*global.UnlockEnemy[150]) //20
draw_charinfoicon(2,spr_enemyface,34,24*2,c_white*global.UnlockEnemy[152])
draw_charinfoicon(3,spr_enemyface,10,24*3,c_white*global.UnlockEnemy[153])
draw_charinfoicon(4,spr_enemyface,35,24*4,c_white*global.UnlockEnemy[154])
draw_charinfoicon(5,spr_enemyface,17,24*5,c_white*global.UnlockEnemy[155])
draw_charinfoicon(6,spr_enemyface,11,24*6,c_white*global.UnlockEnemy[156])
}
else
if dataSet=-144
{
draw_charinfoicon(7,spr_enemyface,31,24*7,c_white*global.UnlockEnemy[157])
draw_charinfoicon(8,spr_enemyface,32,24*8,c_white*global.UnlockEnemy[159])
draw_charinfoicon(9,spr_enemyface,39,24*9,c_white*global.UnlockEnemy[160])
draw_charinfoicon(10,spr_enemyface,40,24*10,c_white*global.UnlockEnemy[161])
draw_charinfoicon(11,spr_enemyface,41,24*11,c_white*global.UnlockEnemy[162])
draw_charinfoicon(12,spr_enemyface,54,24*12,c_white*global.UnlockEnemy[163])
}
else
if dataSet=-144*2
{
draw_charinfoicon(13,spr_enemyface,57,24*13,c_white*global.UnlockEnemy[164])
draw_charinfoicon(14,spr_enemyface,30,24*14,c_white*global.UnlockEnemy[165])
draw_charinfoicon(15,spr_enemyface,47,24*15,c_white*global.UnlockEnemy[167])
draw_charinfoicon(16,spr_enemyface,62,24*16,c_white*global.UnlockEnemy[168])
draw_charinfoicon(17,spr_enemyface,33,24*17,c_white*global.UnlockEnemy[173])
draw_charinfoicon(18,spr_enemyface,56,24*18,c_white*global.UnlockEnemy[174])
}
else
if dataSet=-144*3
{
draw_charinfoicon(19,spr_enemyface,19,24*19,c_white*global.UnlockEnemy[175])
draw_charinfoicon(20,spr_enemyface,20,24*20,c_white*global.UnlockEnemy[177])
if global.UnlockEnemy[200]!=0
draw_charinfoicon(21,spr_enemyface,59,24*21,c_white*global.UnlockEnemy[200])
//draw_charinfoicon(22,spr_enemyface,22,24*22,c_white*global.UnlockEnemy[71])
//draw_charinfoicon(23,spr_enemyface,23,24*23,c_white*global.UnlockEnemy[72])
//draw_charinfoicon(24,spr_enemyface,24,24*24,c_white*global.UnlockEnemy[73])
}
else
if dataSet=-144*4
{
draw_charinfoicon(25,spr_enemyface,25,24*25,c_white*global.UnlockEnemy[74])
draw_charinfoicon(26,spr_enemyface,26,24*26,c_white*global.UnlockEnemy[75])
draw_charinfoicon(27,spr_enemyface,27,24*27,c_white*global.UnlockEnemy[76])
draw_charinfoicon(28,spr_enemyface,28,24*28,c_white*global.UnlockEnemy[77])
draw_charinfoicon(29,spr_enemyface,29,24*29,c_white*global.UnlockEnemy[78])
draw_charinfoicon(30,spr_enemyface,30,24*30,c_white*global.UnlockEnemy[79])
}
else
if dataSet=-144*5
{
draw_charinfoicon(31,spr_enemyface,31,24*31,c_white*global.UnlockEnemy[80])
draw_charinfoicon(32,spr_enemyface,32,24*32,c_white*global.UnlockEnemy[81])
draw_charinfoicon(33,spr_enemyface,33,24*33,c_white*global.UnlockEnemy[82])
draw_charinfoicon(34,spr_enemyface,34,24*34,c_white*global.UnlockEnemy[83])
draw_charinfoicon(35,spr_enemyface,35,24*35,c_white*global.UnlockEnemy[84])
draw_charinfoicon(36,spr_enemyface,36,24*36,c_white*global.UnlockEnemy[85])
}
else
if dataSet=-144*6
{
draw_charinfoicon(37,spr_enemyface,37,24*37,c_white*global.UnlockEnemy[86])
draw_charinfoicon(38,spr_enemyface,38,24*38,c_white*global.UnlockEnemy[87])
draw_charinfoicon(39,spr_enemyface,39,24*39,c_white*global.UnlockEnemy[88])
draw_charinfoicon(40,spr_enemyface,40,24*40,c_white*global.UnlockEnemy[89])
draw_charinfoicon(41,spr_enemyface,41,24*41,c_white*global.UnlockEnemy[90])
draw_charinfoicon(42,spr_enemyface,42,24*42,c_white*global.UnlockEnemy[91])
}
else
{
draw_charinfoicon(43,spr_enemyface,43,24*43,c_white*global.UnlockEnemy[92])
draw_charinfoicon(44,spr_enemyface,44,24*44,c_white*global.UnlockEnemy[93])
draw_charinfoicon(45,spr_enemyface,45,24*45,c_white*global.UnlockEnemy[94])
draw_charinfoicon(46,spr_enemyface,46,24*46,c_white*global.UnlockEnemy[95])
draw_charinfoicon(47,spr_enemyface,47,24*47,c_white*global.UnlockEnemy[96])
draw_charinfoicon(48,spr_enemyface,48,24*48,c_white*global.UnlockEnemy[97])
}
}

if dataSet=0
{
if dataRow=1
draw_sprite_ext(spr_playerface,0,24,26,1,1,0,c_white,1)
if dataRow=2
if unlockedChar[1]=1
draw_sprite_ext(spr_enemyface,1,0,26,1,1,0,c_white,1)
if dataRow=3
if unlockedChar[1]=1
draw_sprite_ext(spr_enemyface,9,0,26,1,1,0,c_white,1)
draw_set_alpha(1)
}
shader_reset()
draw_set_color(c_black) draw_set_alpha(0.75)
draw_rectangle(-5,-5,144,320,0) draw_set_alpha(1) draw_set_color(c_white)
pal_swap_set(my_pal_sprite,current_pal,false);
draw_set_color(c_white)



if dataRow=1
draw_sprite_ext(enemyPortraitSpr,enemyPortraitIndex,24+-24+24*dataSelect+dataSet,26,1,1,0,c_white*unlockedChar[charNO],1)
else
if dataRow=2 or dataRow=3
draw_sprite_ext(enemyPortraitSpr,enemyPortraitIndex,-24+24*dataSelect+dataSet,26,1,1,0,c_white*unlockedChar[charNO],1)

if dataRow=4
{
draw_sprite_ext(spr_filmstage,enemyPortraitIndex,72,52,1,1,0,c_white*unlockedChar[charNO],1)



}

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
draw_command(3)

draw_set_halign(fa_center)
draw_text(72,8,"("+string(dataSelect)+"/"+string(dataRowMax)+")") //TITLE

if unlockedChar[enemyID]!=0
{
if dataRow=2 or dataRow=3
draw_text(224,200,string(languagetext[4])+":"+string(unlockedChar[enemyID]))
}

draw_text(72,16+2,"-"+string(categoryNames)+"-")

if oControl.betatest name+=string("\n")+string(enemyID)

if dataRow=4
draw_text(72,80,""+string(name)+"")
else
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

draw_sprite(spr_selface,0,round(144-arrowSel2-24),54-19) if arrowSel1>0 arrowSel1-=0.1 else arrowSel1=0
draw_sprite(spr_selface,1,round(0+arrowSel1),54-19) if arrowSel2>0 arrowSel2-=0.1 else arrowSel2=0

draw_sprite(spr_selface,2,round(144-24),round(-arrowSel3)) if arrowSel3>0 arrowSel3-=0.1 else arrowSel3=0
draw_sprite(spr_selface,3,round(0),round(arrowSel4)) if arrowSel4>0 arrowSel4-=0.1 else arrowSel4=0

//maxhp*45
maxhp=hp
if image_blend!=c_black
if  hp!=0
{
draw_set_color(c_white) draw_rectangle(224+8-1-round(maxhp*45/2),8-1+20,224+8+1+round(maxhp*45/2),8+8+1+20,false)
draw_set_color(c_yellow) draw_rectangle(224+8-round(maxhp*45/2),8+20,224+8+round(maxhp*45/2),8+8+20,false)
draw_set_halign(fa_right)
draw_set_color(c_white) draw_text_transformed(224+8-2-round(maxhp*45/2),8-1+20+2,"HP",0.5,1,0)
}
draw_set_halign(fa_left)
}
}}