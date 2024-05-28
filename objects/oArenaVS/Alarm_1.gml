/// @description Insert description here
// You can write your code in this editor



gameready=3



with oControl
{
with oPlayer
if dead=0
{
if ContinueMode=0
{
if playerNO=1	
global.P1Char=character
if playerNO=2
global.P2Char=character
if playerNO=3
global.P3Char=character
if playerNO=4
global.P4Char=character
canmove=0  AnimFrame=0
key_left=0 key_right=0 key_up=0 key_down=0 anim=0
}if stagePose=1 {oArenaSurvival.playerwinner=name anim=210}
}
alarm[6]=80
}