/// @description Insert description here
// You can write your code in this editor
if stageClear=1
{
stageClearIndex+=0.5

if stageClearY<60 //120
stageClearY+=16
draw_sprite_ext(stageCspr,stageClearIndex,160,stageClearY,1,1,0,c_white,1)///Game Over Text
draw_set_alpha(1) draw_set_color(c_white)
if stageScore=1
{alarm[0]=0 
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_set_halign(fa_right)
draw_text(160-8,160,string_hash_to_newline(string(resulttext1)))
draw_text(160-8,160+16,string_hash_to_newline(string(resulttext2)))
draw_text(160-8,160+32,string_hash_to_newline(string(resulttext3)))


draw_set_halign(fa_left)
if AltScore1=0
draw_text(160+8,160,string_hash_to_newline(bossScore))
else draw_text(160+8,160,string_hash_to_newline(altresult1))
//if AltScore2=0
//draw_text(160+8,160+16,string_hash_to_newline(round(oBrickBreakPlayer.hp*20000)))
//else
//draw_text(160+8,160+16,string_hash_to_newline(altresult2))
//if AltScore3=0
//draw_text(160+8,160+32,string_hash_to_newline(round(time*200)))
//else
//draw_text(160+8,160+32,string_hash_to_newline(altresult3))

if scoreClearSet=0
{scoreClearSet=1 alarm[7]=120+stageClearDelay
alarm[8]=240+stageClearDelay///Stage change time

if AltScore1=0 altresult1=bossScore
if AltScore2=0 altresult2=oBrickBreakPlayer.hp*20000
if AltScore3=0 altresult3=round(time*200)

oBrickBreakPlayer.PlayerScore+=altresult1+altresult2+altresult3


GoldShow=1 GoldGet+=round(oBrickBreakPlayer.PlayerScore/100) global.Gold+=GoldGet
gold_save()
global.P1Score=p1.PlayerScore
global.P1Life=p1.PlayerLife

}

draw_set_halign(fa_left)
}

}

///Gold getting
if GoldShow=1 and global.GoldShow=1
{GoldY=lerp(GoldY,0,0.1)
draw_set_halign(fa_right)
draw_set_color(c_white)
draw_set_font(global.scorefont)
if GoldGet!=0
draw_text(320-10,round(240-16+GoldY),string("+")+string(GoldGet)+string("$"))
draw_set_halign(fa_left)
}