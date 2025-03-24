event_inherited()

enemiesdefeated=0

playerwinner="DRAW"

playerFight=1

gameready=0
playerFight=1

detecthit1=0
detecthit2=0
detecthit3=0
detecthit4=0

///Create object here

timer=global.MultiTime

drawscript=function()
{
draw_set_font(global.timefont)///Timer

if timer>=10
draw_text(160-16,0,string_hash_to_newline(timer))
else
{
draw_text(160,0,string_hash_to_newline(timer))
draw_text(160-16,0,string_hash_to_newline(0))
}

draw_set_font(global.scorefont)
draw_set_halign(fa_center)
	

{
p1Over=0
p2Over=0
p3Over=0
p4Over=0	

with oPlayer {PlayerLife=9 if weaponspawn!=-1 {
if playerNO=1 oArenaOddball.p1Over=1
if playerNO=2 oArenaOddball.p2Over=1
if playerNO=3 oArenaOddball.p3Over=1
if playerNO=4 oArenaOddball.p4Over=1

	draw_text(40+80*(playerNO-1),50,"HAS IT!")
	}}

}

	
if gameready=0
{
draw_text(160,34+10+64,"GET THE\nTROPHY!")
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