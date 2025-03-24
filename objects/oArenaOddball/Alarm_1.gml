/// @description Insert description here
// You can write your code in this editor

if timer=0
{
with oPlayer stagePose=0
playerwinner="DRAW GAME."	
harmed2=noone;
harmed=noone;
var _radius=2
var _highest=270;
var _list = ds_list_create();
var _num = collision_rectangle_list(-99, -99, 800,800, oPlayer, false,true, _list, true);
if (_num > 0)
{for (var i = 0; i < _num; ++i;)
{harmed=_list[| i];
var harmeddepth=harmed.PlayerScore

if _highest>=harmeddepth
{
_highest=harmeddepth
harmed2=harmed;
}}}
if harmed2!=noone
{
with harmed2 {with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=string(name)+" WINS!" stagePose=1 immune=1 if hp<=0 hp=0.01 dead=0}
}
ds_list_destroy(_list);	

alarmgo()

with oControl 
{
resulttext1=""
altresult1=0
resulttext2="BONUS"
AltScore2=1
resulttext3=""
altresult3=0
stageCspr=spr_bonusresults
altresult2a=p1.PlayerScore
altresult2b=p2.PlayerScore
altresult2c=p3.PlayerScore
altresult2d=p4.PlayerScore
time=0
AltScore3=-2
}

}
else
{alarm[1]=60
timer-=1
}