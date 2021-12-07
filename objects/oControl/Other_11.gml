/// @description Continue Player
continueCountdown=9
with oPlayer
{
if global.ContinueStart!=-1
global.ContinueStart-=1
PlayerLife=global.LifeStart global.P1Char=character 
event_user(9)
}

