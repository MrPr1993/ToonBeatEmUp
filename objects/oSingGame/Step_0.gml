/// @description Insert description here
// You can write your code in this editor
depth=10

oControl.minigameroom=1
 with oControl minigameID=4;
 
 
if stageClear=0
if stoptimer=0
if songdone=0
{
songbeattime-=1 if songbeattime<0 {songbeattime=120-songbeaten songbeating=2 songdir=choose(0,1) PlaySoundNoStack(snd_beat) songbeaten+=2
	if songbeaten<1 {songbeaten=0 songdone=1
	with oSingPlayer {AnimFrame=0 anim=10 win=0}
	}
	} 


}

if (p1Over=1 and p2Over=1 and p3Over=1 and p4Over=1)
if stageClear=0
{

stageClear=1

with oControl 
{alarm[6]=20
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


oControl.stagePause=1