/// @description Insert description here
// You can write your code in this editor

if timer=0
{
if p1Over=1 with oControl.p1 if dead=0
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=string(name)+"WINS!" stagePose=1 immune=1 if hp=0 hp=0.01 dead=0 }
if p2Over=1 with oControl.p2 if dead=0
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=string(name)+"WINS!" stagePose=1 immune=1 if hp=0 hp=0.01 dead=0 }
if p3Over=1 with oControl.p3 if dead=0
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=string(name)+"WINS!" stagePose=1 immune=1 if hp=0 hp=0.01 dead=0 }
if p4Over=1 with oControl.p4 if dead=0
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=string(name)+"WINS!" stagePose=1 immune=1 if hp=0 hp=0.01 dead=0}
	

alarmgo()


}
else
{alarm[1]=60
timer-=1
}