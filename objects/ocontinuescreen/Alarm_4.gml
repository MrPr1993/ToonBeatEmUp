/// @description Insert description here
// You can write your code in this editor
if finalStageHi=1
{
fadetoblack=1
alarm[8]=180
}
else
{
if stageClear=0
{
if setGameOver=0
{
if playNO=1
{
global.P1Score=p1.PlayerScore
global.P1Life=p1.PlayerLife
HiScoreCheck=global.P1Score
}
if playNO=2
{
global.P2Score=p2.PlayerScore
global.P2Life=p2.PlayerLife
HiScoreCheck=global.P2Score
}
if playNO=3
{
global.P3Score=p3.PlayerScore
global.P3Life=p3.PlayerLife
HiScoreCheck=global.P3Score
}
if playNO=4
{
global.P4Score=p4.PlayerScore
global.P4Life=p4.PlayerLife
HiScoreCheck=global.P4Score
}
if (HiScoreCheck>=global.HiScore10 and keyToGameOver=0 and global.StageSelect=0 and global.AllStageMode=0)
{
gameover_set() continueScreen=1
}
else
{
gameOverFlash=1 
audio_stop_all()
setGameOver=2
GoldShow=global.GoldShow
//gold_save()

if global.ArenaType=2 or global.ArenaType=3
{
GoldGet+=round(p1.PlayerScore/100)
GoldGet+=round(p2.PlayerScore/100)
GoldGet+=round(p3.PlayerScore/100)
GoldGet+=round(p4.PlayerScore/100)
GoldGet+=round(continueStageScore/100)
global.Gold+=GoldGet gold_save()

GoldShow=global.GoldShow
}

musicplayonce(msc_gameover)
isGameOver=1 continueScreen=1
alarm[3]=320
}
}
else
{
{////Set Game Over
gameOverFlash=1 
audio_stop_all()
setGameOver=2
GoldShow=global.GoldShow
//gold_save()
musicplayonce(msc_gameover)
isGameOver=1 continueScreen=1
alarm[3]=320
}
}

}
}