// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gameover_set(){
alarm[2]=0
///Game Over - also check if there's score
global.P1Score=oPlayer.PlayerScore
global.P1Life=oPlayer.PlayerLife

if global.P1Score>=global.HiScore10 and keyToGameOver=0
{
hiScoreInput=0
hiScoreInputNum=1
continueScreen=3
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
}
else
{////Set Game Over
audio_stop_all()
GoldShow=1 GoldGet+=round(oPlayer.PlayerScore/100) global.Gold+=GoldGet
musicplayonce(msc_gameover)
isGameOver=1 continueScreen=1
alarm[3]=260
}
}