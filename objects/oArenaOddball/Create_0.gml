event_inherited()

enemiesdefeated=0

playerwinner="DRAW GAME"

playerFight=1

gameready=0
playerFight=1

PointsTime=60;

totalscore=-1

///Create object here
instance_create_depth(160,180,-1,oOddball)

p1Over=0
p2Over=0
p3Over=0
p4Over=0

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

var _t1="HAS IT!"
var _t2="GET THE\nTROPHY!"

switch(global.Language)
{
case 2:
var _t1="LO TINENE!"
var _t2="¡AGARRA\nEL TROFEO!"
break;
case 2:
var _t1="CONSEGUIU!"
var _t2="PEGUE\nO TROFÉU!"
break;
}

with oPlayer {
	playerGet=0 stagePose=0
	PlayerLife=9 if weaponspawn!=-1 {playerGet=1 stagePose=1
with oArenaOddball
{
p1Over=0
p2Over=0
p3Over=0
p4Over=0
}
	
	
if playerNO=1 oArenaOddball.p1Over=1
if playerNO=2 oArenaOddball.p2Over=1
if playerNO=3 oArenaOddball.p3Over=1
if playerNO=4 oArenaOddball.p4Over=1

	draw_text(40+80*(playerNO-1),50,_t1)
	}
	
	}

}

	
if gameready=0
{
draw_text(160,34+10+64,_t2) alarm[1]=60
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


}
}

alarmgo=function()
{gameready=2
with oPlayer { canControl=0 if anim=1 {canmove=0 anim=0}} alarm[2]=30
}