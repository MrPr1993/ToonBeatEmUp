/// @description Insert description here
// You can write your code in this editor

//global.P1Life=oPlayer.PlayerLife
//global.P1Score=oPlayer.PlayerScore
if global.StageSelect=1
{
if optionSelect=0
{
if global.IsMinigame=1 room_goto(rm_minigames)
room_goto(rm_map)
}
else room_goto(stageNext)
}
else
room_goto(stageNext)
