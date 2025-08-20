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
draw_set_font(global.scorefont)
	draw_set_halign(fa_center)
if gameready=0
{
draw_text(160,34+10+64,"GET READY")
}
else
{

draw_text(160,34+10,"ENEMIES DEFEATED:"+string(enemiesdefeated)+"\nTOTAL SCORE:"+string(totalscore))
}
	draw_set_halign(fa_left)
}



extrastep=-1;