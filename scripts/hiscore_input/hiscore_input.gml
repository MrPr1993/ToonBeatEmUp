// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hiscore_input(){
controller_setup()
if continueFlash<0 continueFlash=2 else continueFlash-=0.5

if key_attack
{
//hiscore_check()
if hiScoreInputNum=3
{HiScoreAlarm1=240
keyGet3=string(keyNoCheck)
}
if hiScoreInputNum=2
{HiScoreAlarm1=240
keyGet2=string(keyNoCheck)
keyGet3=string(keyNoCheck)
}
if hiScoreInputNum=1
{HiScoreAlarm1=240
keyGet1=string(keyNoCheck)
keyGet2=string(keyNoCheck)
keyGet3=string(keyNoCheck)
}
if hiScoreInputNum!=5
hiScoreInputNum+=1
}

draw_set_font(global.scorefont)

draw_set_color(c_white) draw_set_alpha(1)

if -key_left_pressed {if keyNo=0 keyNo=48 else keyNo-=1 keyno_check()}
if key_right_pressed {if keyNo=48 keyNo=0 else keyNo+=1 keyno_check()}

var hltscale=2;

if hiScoreInputNum=1
if continueFlash<1
draw_text_transformed(0,0,string_hash_to_newline(keyNoCheck),hltscale, hltscale,0)
if hiScoreInputNum=2
{
draw_text_transformed(0,0,string_hash_to_newline(string(keyGet1)), hltscale, hltscale,0)
if continueFlash<1
draw_text_transformed(8*hltscale,0,string_hash_to_newline(keyNoCheck), hltscale, hltscale,0)
}
if hiScoreInputNum=3
{
draw_text_transformed(0,0,string_hash_to_newline(string(keyGet1)),hltscale, hltscale,0)
draw_text_transformed(8*hltscale,0,string_hash_to_newline(string(keyGet2)),hltscale, hltscale,0)
if continueFlash<1
draw_text_transformed(16*hltscale,0,string_hash_to_newline((keyNoCheck)),hltscale, hltscale,0)
}
if hiScoreInputNum=4
{
draw_text_transformed(0,0,string_hash_to_newline(string(keyGet1)),hltscale, hltscale,0)
draw_text_transformed(8*hltscale,0,string_hash_to_newline(string(keyGet2)),hltscale, hltscale,0)
draw_text_transformed(16*hltscale,0,string_hash_to_newline(string(keyGet3)),hltscale, hltscale,0)
if continueFlash<1
draw_text_transformed(24*hltscale,0,string_hash_to_newline("X"),hltscale, hltscale,0)
}
if hiScoreInputNum=5
{
HiScoreAlarm1-=1

if HiScoreAlarm1=0
{
global.P1Char=characterSelect
if playerNO=1 global.P1Score=0
if playerNO=2 global.P2Score=0
if playerNO=3 global.P3Score=0
if playerNO=4 global.P4Score=0
continueScreen=1
ContinueCountdown=-1
}
if continueFlash<1
{
draw_text_transformed(0,0,string_hash_to_newline(string(keyGet1)),hltscale, hltscale,0)
draw_text_transformed(8*hltscale,0,string_hash_to_newline(string(keyGet2)),hltscale, hltscale,0)
draw_text_transformed(16*hltscale,0,string_hash_to_newline(string(keyGet3)),hltscale, hltscale,0)
if keyToGameOver=0 ///Set Hi-Score
{
playerDED=1	
HiInput1=keyGet1+keyGet2+keyGet3

var sourcy;
if instance_exists(oControl) sourcy=oControl;
if instance_exists(oContinueScreen) sourcy=oContinueScreen;

if sourcy.finalStageEnd=0
{
isGameOver=0 
keyToGameOver=1
if instance_exists(oContinueScreen)
{
with oContinueScreen
{
GoldShow=1
GoldGet+=round(p1.PlayerScore/100)
GoldGet+=round(p2.PlayerScore/100)
GoldGet+=round(p3.PlayerScore/100)
GoldGet+=round(p4.PlayerScore/100)
setGameOver=1
global.Gold+=GoldGet gold_save()
}

hiscore_check()



if oContinueScreen.finalStage=1
{oContinueScreen.finalStage=2 oContinueScreen.alarm[7]=240}
else
oContinueScreen.alarm[4]=240

}
}
else
{
if finalStageScoreMark!=100 finalStageScoreMark+=1
else
{hiscore_check()

with sourcy
{
alarm[8]=100 finalStageScoreMark=241 
stageEndFX=1
stageEnd=0}
}
}
}
}
}

}
