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
canmove=0 
key_left=0 key_right=0 key_up=0 key_down=0 anim=0
}

if stagePose!=0 {animFrame=0 oArenaSurvival.playerwinner=string(name)+" WINS!" anim=210}
}
alarm[6]=80
}