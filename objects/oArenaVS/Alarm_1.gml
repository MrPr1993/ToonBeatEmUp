/// @description Insert description here
// You can write your code in this editor



gameready=3



with oControl
{
with oPlayer
{stagePose=0

var _t1="DRAW GAME"
var _t2="BONUS"
var _t3=" WINS!"

switch(global.Language)
{
case 2:
var _t1="EMPATE"
var _t2="BÔNUS"
var _t3=" VENCEU!"
break;
}
	
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
canmove=0  AnimFrame=0 stagePose=1
key_left=0 key_right=0 key_up=0 key_down=0 anim=0
}if stagePose=1 {oArenaSurvival.playerwinner=string(name)+string(_t3) anim=210}
}
}

with oControl 
{
resulttext1=""
altresult1=0
resulttext2=_t2
AltScore2=1
resulttext3=""
altresult3=0
stageCspr=spr_bonusresults
altresult2a=p1.hp+100*p1.PlayerLife
altresult2b=p2.hp+100*p2.PlayerLife
altresult2c=p3.hp+100*p3.PlayerLife
altresult2d=p4.hp+100*p4.PlayerLife
time=0
AltScore3=-2
}

alarm[6]=80
}