/// @description Insert description here
// You can write your code in this editor

//alarm[7]

if global.StageSelect=1
{
optionSelect=1
}
else
{
if finalStage=1
{
if global.StageSelect=1 {
fadetoblack=1
alarm[8]=180
}
else
{
trainRan=1
gameOverFlash=1 deathGameOver=1 GoldShow=1
stageClear=0
continueScreen=1
finalStageHi=1}
}
else
{
fadetoblack=1
alarm[8]=180
}
}