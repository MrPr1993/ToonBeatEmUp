/// @description Good Game End
if isPaused=0
{
global.P1Life=oPlayer.PlayerLife
global.P1Score=oPlayer.PlayerScore
room_goto(stageNext)

}