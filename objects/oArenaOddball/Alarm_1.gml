/// @description Insert description here
// You can write your code in this editor

if timer=0
{with oPlayer {playerGet=0 stagePose=0}
if p1Over=1 with oControl.p1
{playerGet=1  with oArenaSurvival alarmgo(); immune=1 if hp=0 hp=0.01 dead=0 }
if p2Over=1 with oControl.p2
{playerGet=1 with oArenaSurvival alarmgo(); immune=1 if hp=0 hp=0.01 dead=0 }
if p3Over=1 with oControl.p3
{playerGet=1 with oArenaSurvival alarmgo(); immune=1 if hp=0 hp=0.01 dead=0 }
if p4Over=1 with oControl.p4
{playerGet=1 with oArenaSurvival alarmgo(); immune=1 if hp=0 hp=0.01 dead=0}
	
with oPlayer if playerGet {stagePose=1 oArenaSurvival.playerwinner=string(name)+"WINS!"}

alarmgo()


}
else
{alarm[1]=60
timer-=1
}