/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
controller_setup()

if shaketime!=0
{shaketime-=1
if shakefrom=-1
{if shake!=-1 shake-=1 else shake=1}
else
{if shake!=1 shake+=1 else shake=-1}
}
else shake=0

///
if anim=0 or anim=1
{
if anim=0
{
frame_set(0,0,0.1)
frame_set(1,1,0.1) if AnimFrame>2-0.1 AnimFrame=0

if foodhp=0 {AnimFrame=0 anim=2}
}

if key_attack if anim!=10
if anim=0 or (anim=1 and AnimFrame>1)
{AnimFrame=0 anim=1 eatframe^=1;
	//if meter=clamp(meter,2+16,78-16) win=1 else win=0

	//PlaySound(voice1)
	}
}

if anim=1
{
frame_set(0,2+2*eatframe,0.1) if AnimFrame=1 {foodhp-=1; foodno+=1
	PlaySoundNoStack(snd_eat)	
		if foodhp<1 {AnimFrame=0 anim=10}
	}
frame_set(1,3+2*eatframe,0.1)
frame_set(2,3+2*eatframe,0.1)
if AnimFrame>3-0.1 {AnimFrame=0 anim=0}
}


///SWING
if anim=10
{
if AnimFrame=0
{
var _t1="NO BONUS"
var _t2="BONUS"
var _t3="PERFECT"
var _t4="GOOD"
var _t5="TIME"

switch(global.Language)
{
case 2:
var _t1="SEM BÔNUS"
var _t2="BÔNUS"
var _t3="PERFEITO"
var _t4="BOM"
var _t5="TEMPO"
break;
}
	
oEatingContestGame.resulttext1=_t2

			altresult2Text=_t5 altresult2=abs(foodno)*20

//if win=0
with oEatingContestPlayer win=0

if controlNO=1
if foodhp<oEatingContestGame.p2.foodhp 
and foodhp<oEatingContestGame.p3.foodhp 
and foodhp<oEatingContestGame.p4.foodhp win=1

if controlNO=2
if foodhp<oEatingContestGame.p1.foodhp 
and foodhp<oEatingContestGame.p3.foodhp 
and foodhp<oEatingContestGame.p4.foodhp win=1

if controlNO=3
if foodhp<oEatingContestGame.p1.foodhp 
and foodhp<oEatingContestGame.p2.foodhp 
and foodhp<oEatingContestGame.p4.foodhp win=1

if controlNO=4
if foodhp<oEatingContestGame.p1.foodhp 
and foodhp<oEatingContestGame.p3.foodhp 
and foodhp<oEatingContestGame.p2.foodhp win=1



}

var haslose=0;

if win {with oControl minigameIDwin=1; altresult2Text=_t3 altresult2=10000}

if win=0 haslose=1;


frame_set(0,6,0.1)	
frame_set(1,7+2*haslose,0.1)	
frame_set(2,8+2*haslose,0.1) if AnimFrame>2-0.1 {AnimFrame=1

	if controlNO=1	oEatingContestGame.p1Over=1
		if controlNO=2	oEatingContestGame.p2Over=1
			if controlNO=3	oEatingContestGame.p3Over=1
				if controlNO=4	oEatingContestGame.p4Over=1}
}