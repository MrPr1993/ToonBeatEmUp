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
frame_set(1,1,0.1) if animFrame>2-0.1 animFrame=0

if foodhp=0 {animFrame=0 anim=2}
}

if key_attack if anim!=10
if anim=0 or (anim=1 and animFrame>1)
{animFrame=0 anim=1 eatframe^=1;
	//if meter=clamp(meter,2+16,78-16) win=1 else win=0

	//PlaySound(voice1)
	}
}

if anim=1
{
frame_set(0,2+2*eatframe,0.1) if animFrame=1 {foodhp-=1; foodno+=1
	PlaySoundNoStack(snd_eat)	
		if foodhp<1 {animFrame=0 anim=10}
	}
frame_set(1,3+2*eatframe,0.1)
frame_set(2,3+2*eatframe,0.1)
if animFrame>3-0.1 {animFrame=0 anim=0}
}


///SWING
if anim=10
{
if animFrame=0
{
oEatingContestGame.resulttext1="BONUS"

			altresult2Text="FOOD" altresult2=abs(foodno)*20

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

if win=0 haslose=1;

frame_set(0,6,0.1)	
frame_set(1,7+2*haslose,0.1)	
frame_set(2,8+2*haslose,0.1) if animFrame>2-0.1 {animFrame=1

	if controlNO=1	oEatingContestGame.p1Over=1
		if controlNO=2	oEatingContestGame.p2Over=1
			if controlNO=3	oEatingContestGame.p3Over=1
				if controlNO=4	oEatingContestGame.p4Over=1}
}