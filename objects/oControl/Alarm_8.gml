/// @description Good Game End
if isPaused=0
{
global.P1Life=oPlayer.PlayerLife
global.P1Score=oPlayer.PlayerScore
if global.StageSelect=1
room_goto(rm_map)
else
room_goto(stageNext)
}