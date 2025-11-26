/// @description Insert description here
// You can write your code in this editor

oControl.minigameroom=1
 with oControl minigameID=3;

if (p1Over=1 and p2Over=1 and p3Over=1 and p4Over=1)
if stageClear=0
{

stageClear=1

with oControl 
{alarm[6]=60
resulttext1=""
altresult1=0

var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECT"
var _t4="GOOD"
var _t5="AVERAGE"

switch(global.Language)
{
case 1:
var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECTO"
var _t4="BIEN"
var _t5="MEDIOCRE"
break;
case 2:
var _t1="SEM BÔNUS"
var _t2="BÔNUS"
var _t3="PERFEITO"
var _t4="BOM"
var _t5="MEDIOCRE"
break;
}

resulttext2=_t2

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


oControl.stagePause=1