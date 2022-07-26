/// @description Insert description here
// You can write your code in this editor

p1Over=1
p2Over=1
p3Over=1
p4Over=1

p1=instance_create_depth(0,53,-1,oBrickBreakPlayer) with p1
{
oBrickBreakGame.p1Over=0	
canControl=1
controlNO=1
my_pal_sprite=spr_playerpal
current_pal=global.p1Pal
}

results=0
rsultsimg=0

GoldShow=0
GoldY=32

GoldGet=0

stageClearIndex=0

isPaused=0

stageClear=0
stageClearIndex=0
stageClearY=-120
stageBoss="BOSS NAME"
stageScore=0
stageCspr=spr_bonusresults
scoreClearSet=0
bossScore=10000
bossID=-1
bossMaxHP=2
stageclearMusic=1
stageclearfade=0
resulttext1="BONUS"
altresult1=20000
resulttext2=""
altresult2=0
resulttext3=""
altresult3=0
AltScore1=0
AltScore2=0
AltScore3=0
stageClearDelay=0
stagePose=1

AltScore1=1
AltScore2=1
AltScore3=1