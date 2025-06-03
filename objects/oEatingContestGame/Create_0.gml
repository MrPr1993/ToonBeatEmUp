// You can write your code in this editor

p1Over=1
p2Over=1
p3Over=1
p4Over=1

eatspr=choose(spr_eatc_burger,spr_eatc_pie,spr_eatc_hotdog,spr_eatc_pancakes,spr_eatc_pizza)

p1=instance_create_depth(0,0,0,oPlayerNoControl) with p1 {controlNO=1 playerNO=1}
p2=instance_create_depth(0,0,0,oPlayerNoControl) with p2 {controlNO=2 playerNO=2}
p3=instance_create_depth(0,0,0,oPlayerNoControl) with p3 {controlNO=3 playerNO=3}
p4=instance_create_depth(0,0,0,oPlayerNoControl) with p4 {controlNO=4 playerNO=4}

brickgamenum=0

time=20

if global.P1available=1
{brickgamenum+=1
p1=instance_create_depth(0,53,-1,oEatingContestPlayer) with p1
{
oEatingContestGame.p1Over=0	
canControl=1
controlNO=1 playerNO=1 character=global.P1Char
my_pal_sprite=global.p1Pals
current_pal=global.p1Pal
voice1=snd_viva5
voice2=snd_viva11
PlayerLife=global.P1Life
PlayerScore=global.P1Score
event_user(0)
}}
if global.P2available=1
{brickgamenum+=1
p2=instance_create_depth(80*instance_number(oEatingContestPlayer),53,-1,oEatingContestPlayer) with p2
{
oEatingContestGame.p2Over=0	sprite_index=spr_hina_brick 
canControl=1
controlNO=2 playerNO=2  character=global.P2Char
my_pal_sprite=global.p2Pals
current_pal=global.p2Pal name="HINA"
voice1=snd_hina3
voice2=snd_hina10
PlayerLife=global.P2Life
PlayerScore=global.P2Score
event_user(0)
}
}
if global.P3available=1
{brickgamenum+=1
p3=instance_create_depth(80*instance_number(oEatingContestPlayer),53,-1,oEatingContestPlayer) with p3
{
oEatingContestGame.p3Over=0	sprite_index=spr_bahati_brick
canControl=1 
controlNO=3 playerNO=3  character=global.P3Char
my_pal_sprite=global.p3Pals
current_pal=global.p3Pal name="BAHATI"
voice1=snd_bahati3
voice2=snd_bahati8
PlayerLife=global.P3Life
PlayerScore=global.P3Score
event_user(0)
}
}
if global.P4available=1
{brickgamenum+=1
p4=instance_create_depth(80*instance_number(oEatingContestPlayer),53,-1,oEatingContestPlayer) with p4
{
oEatingContestGame.p4Over=0	sprite_index=spr_sofia_brick
canControl=1
controlNO=4 playerNO=4
my_pal_sprite=global.p4Pals  character=global.P4Char
current_pal=global.p4Pal name="SOFIA"
voice1=snd_sofia3
voice2=snd_sofia9
PlayerLife=global.P4Life
PlayerScore=global.P4Score
event_user(0)
}
}

if brickgamenum=1 with oEatingContestPlayer x+=160-40
if brickgamenum=2 with oEatingContestPlayer x+=160-80
if brickgamenum=3 with oEatingContestPlayer x+=160-120
if brickgamenum=4 with oEatingContestPlayer x+=0


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

oControl.p1=p1
oControl.p2=p2
oControl.p3=p3
oControl.p4=p4

with oControl
{
altresult2a=0
altresult2b=0
altresult2c=0
altresult2d=0
}

ready=0
stageIntro=1
oControl.stagePause=0


oControl.stageNext=global.VanBadSceneNext

with oEatingContestPlayer canControl=0 alarm[0]=120