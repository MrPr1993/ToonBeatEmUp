event_inherited()

enemiesdefeated=0


gameready=0


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
//draw_text(160,34+10,"ENEMIES DEFEATED: "+string(enemiesdefeated))
}
	draw_set_halign(fa_left)
}