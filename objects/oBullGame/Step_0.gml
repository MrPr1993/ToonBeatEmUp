/// @description Insert description here
// You can write your code in this editor

if (p1Over=1 and p2Over=1 and p3Over=1 and p4Over=1)
if stageClear=0
{

stageClear=1
gameplaying=0 
with oControl 
{alarm[6]=80
resulttext1=""
altresult1=0
resulttext2="BONUS"
AltScore2=1
resulttext3=""
altresult3=0
stageCspr=spr_bonusresults
altresult2a=p1.altresult2
altresult2b=p2.altresult2
altresult2c=p3.altresult2
altresult2d=p4.altresult2
time=0
AltScore3=-2
}

}

if stageClear=1
bullx+=8

if gameplaying=1 
{
layer_x("BGfloor",-rundist)
rundist+=8
if rundist=2000 with oPlayer
{win=1 animFrame=0 anim=10}

}

oControl.stagePause=1