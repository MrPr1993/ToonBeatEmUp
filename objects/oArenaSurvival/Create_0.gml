/// @description Insert description here
// You can write your code in this editor

enemiesdefeated=0
useonce=0

playerFight=0

gameready=0
gamesetting=0

charwinner="PLAYER"

ishiscore=0;

arrayamount=0;
twinswitch=0;
totalscore=0;


drawscript=function()
{
var _t1="GET READY"
var _t2="ENEMIES DEFEATED:"
var _t3="\nTOTAL SCORE:"
var _t4="GOOD"
var _t5="AVERAGE"

switch(global.Language)
{
case 2:
var _t1="PREPARE-SE"
var _t2="INIMIGOS DERROTADOS"
var _t3="\nPONTUAÇÃO TOTAL:"
var _t4="BOM"
var _t5="MEDIOCRE"
break;
}	

draw_set_font(global.scorefont)
	draw_set_halign(fa_center)
if gameready=0
{
draw_text(160,34+10+64,_t1)
}
else
{

draw_text(160,34+10,string(_t2)+string(enemiesdefeated)+string(_t3)+string(totalscore))
}
	draw_set_halign(fa_left)
}



extrastep=-1;