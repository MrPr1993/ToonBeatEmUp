/// @description Insert description here
// You can write your code in this editor
with oControl
{
stagePose=0
AltScore1=1
AltScore2=1
AltScore3=1
	
stageClear=0
stageClearIndex=0
stageClearY=-120
stageBoss="PERFECT"
stageScore=0
scoreClearSet=0
bossScore=0
bossID=-1
bossMaxHP=2
stageclearMusic=0
stageclearfade=0

resulttext1="NO BONUS"
altresult1=0
resulttext2="DAMAGE"
resulttext3="TIME"
altresult3=round(oControl.time*200)*2
stageClearDelay=120
 event_user(9)
 oControl.stageCspr=spr_bonusresults
}
oControl.altresult2=round(hpHit1)*1000
