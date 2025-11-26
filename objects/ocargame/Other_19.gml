/// @description Insert description here
// You can write your code in this editor
with oControl
{
stagePose=0
AltScore1=1
AltScore2=1
AltScore3=1

var _t1="PERFECT"
var _t2="NO BONUS"
var _t3="DAMAGE"
var _t4="TIME"
switch(global.Language)
{
case 1:
_t1="PERFECTO"
_t2="NO BONUS"
_t3="DAÑO"
_t4="TIEMPO"
break;
case 2:
_t1="PERFEITO"
_t2="SEM BÔNUS"
_t3="DANO"
_t4="TEMPO"
break;
}
	
stageClear=0
stageClearIndex=0
stageClearY=-120
stageBoss=_t1
stageScore=0
scoreClearSet=0
bossScore=0
bossID=-1
bossMaxHP=2
stageclearMusic=0
stageclearfade=0

resulttext1=_t2
altresult1=0

resulttext2=_t3
resulttext3=_t4
altresult3=round(oControl.time*200)*2
//stageClearDelay=120
 event_user(9)
 oControl.stageCspr=spr_bonusresults
}
oControl.altresult2=round(hpHit1)*1000



