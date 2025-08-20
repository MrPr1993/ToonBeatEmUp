event_inherited()

enemiesdefeated=0

playerwinner="PLAYER"

totalscore=-1

playerFight=1

gameready=0
playerFight=1

p1Over=1
p2Over=1
p3Over=1
p4Over=1

drawscript=function()
{
draw_set_font(global.scorefont)
	draw_set_halign(fa_center)
if gameready=0
{
draw_text(160,34+10+64,"GET READY")
}
else
{
if gameready=3
draw_text(160,34+10,string(playerwinner))
}
	draw_set_halign(fa_left)
}

extrastep=function()
{if gameready=1
{oPlayer.stagePose=0
		
if oControl.p1.ContinueMode p1Over=0
if oControl.p2.ContinueMode p2Over=0
if oControl.p3.ContinueMode p3Over=0
if oControl.p4.ContinueMode p4Over=0

var checkall=p1Over+p2Over+p3Over+p4Over


if checkall<1.5
{
if p1Over=1 with oControl.p1
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=name stagePose=1 immune=1 if hp=0 hp=0.01 dead=0 }
if p2Over=1 with oControl.p2
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=name stagePose=1 immune=1 if hp=0 hp=0.01 dead=0 }
if p3Over=1 with oControl.p3
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=name stagePose=1 immune=1 if hp=0 hp=0.01 dead=0 }
if p4Over=1 with oControl.p4
{with oArenaSurvival alarmgo(); oArenaSurvival.playerwinner=name stagePose=1 immune=1 if hp=0 hp=0.01 dead=0}



}
}
}

alarmgo=function()
{gameready=2
with oPlayer {canControl=0 if anim=1 {canmove=0 anim=0}} alarm[1]=30
}