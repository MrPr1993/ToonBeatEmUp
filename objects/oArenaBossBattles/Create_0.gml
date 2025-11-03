/// @description Insert description here
// You can write your code in this editor

totalscore=-1

ArenaOver=0;

enemiesdefeated=0
useonce=0

playerFight=0

gameready=0
gamesetting=0

charwinner="PLAYER"



drawscript=function()
{
draw_set_font(global.scorefont)
	draw_set_halign(fa_center)
if gameready=0
{
var _t1="GET READY"

switch(global.Language)
{
case 2:
var _t1="PREPARE-SE"
break;
}
draw_text(160,34+10+64,_t1)
}
else
{

}
	draw_set_halign(fa_left)
}

extrastep=-1;

bossesdefeated=0;
ownboss=-1;