/// @description Insert description here
// You can write your code in this editor
if stageClear=0
{
/// @description Countdown to Hi-Score
if isPaused=0
{
if isGameOver=1
{
//global.MenuSkip=1

global.HiscoreSkip=0
if global.StageSelect=0
room_goto(rm_hiscore)
else
room_goto(rm_map)
}

}

}