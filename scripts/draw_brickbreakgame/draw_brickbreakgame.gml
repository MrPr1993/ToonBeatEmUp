// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_brickbreakgame(){
if room=rm_brickbreak
{
with oBrickBreakGame
{
/// @description Insert description here
// You can write your code in this editor
if stageClear=1
{
stageClearIndex+=0.5

if stageClearY<60 //120
stageClearY+=16
//draw_sprite_ext(stageCspr,stageClearIndex,160,stageClearY,1,1,0,c_white,1)///Game Over Text
draw_set_alpha(1) draw_set_color(c_white)
if stageScore=1
{alarm[0]=0 
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_set_halign(fa_right)
draw_text(160-8,160,string_hash_to_newline(string(resulttext1)))
draw_text(160-8,160+16,string_hash_to_newline(string(resulttext2)))
draw_text(160-8,160+32,string_hash_to_newline(string(resulttext3)))


draw_set_halign(fa_left)
if AltScore1=0
draw_text(160+8,160,string_hash_to_newline(bossScore))
else draw_text(160+8,160,string_hash_to_newline(altresult1))
//if AltScore2=0
//draw_text(160+8,160+16,string_hash_to_newline(round(oBrickBreakPlayer.hp*20000)))
//else
//draw_text(160+8,160+16,string_hash_to_newline(altresult2))
//if AltScore3=0
//draw_text(160+8,160+32,string_hash_to_newline(round(time*200)))
//else
//draw_text(160+8,160+32,string_hash_to_newline(altresult3))

if scoreClearSet=0
{scoreClearSet=1 alarm[7]=120+stageClearDelay
alarm[8]=240+stageClearDelay///Stage change time

if AltScore1=0 altresult1=bossScore
if AltScore2=0 altresult2=oBrickBreakPlayer.hp*20000
if AltScore3=0 altresult3=round(time*200)

//oBrickBreakPlayer.PlayerScore+=altresult1+altresult2+altresult3
//GoldShow=1 GoldGet+=round(oBrickBreakPlayer.PlayerScore/100) global.Gold+=GoldGet
//gold_save()
//global.P1Score=p1.PlayerScore
//global.P1Life=p1.PlayerLife

}

draw_set_halign(fa_left)
}

}

///Gold getting
if GoldShow=1 and global.GoldShow=1
{GoldY=lerp(GoldY,0,0.1)
draw_set_halign(fa_right)
draw_set_color(c_white)
draw_set_font(global.scorefont)
if GoldGet!=0
draw_text(320-10,round(240-16+GoldY),string("+")+string(GoldGet)+string("$"))
draw_set_halign(fa_left)
}
}
if oBrickBreakGame.ready=1
{
with oBrickBreakPlayer
{
draw_set_font(global.timefont)
draw_set_halign(fa_center) draw_set_color(c_white)
draw_text(160,0,oBrickBreakGame.time)	

d3d_transform_set_identity()
{
d3d_transform_set_translation(x,0,0)

if anim=0 or anim=1
{
draw_set_color(c_white)
draw_rectangle(2-1,60-4-1-16,78+1,60+4+1-16,false)
draw_set_color(c_maroon)
draw_rectangle(2,60-4-16,78,60+4-16,false)
draw_set_color(c_red)
draw_rectangle(2+16,60-4-16,78-16,60+4-16,false)
draw_set_color(c_orange)
draw_rectangle(2+24,60-4-16,78-24,60+4-16,false)
draw_set_color(c_yellow)
draw_rectangle(2+32,60-4-16,78-32,60+4-16,false)

draw_set_color(c_white)
draw_rectangle(-1+meter,60-4-16,1+meter,60+4-16,false)
}
d3d_transform_set_identity()





}
}
//draw_sprite(spr_hud,0,0,0)

}
else
with oBrickBreakGame
{draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,32,"DESTROY THE BRICKS!")

if stageIntro!=0 stageIntro-=0.05 else stageIntro=0
draw_set_color(c_black) draw_set_alpha(1)
if stageIntro!=0
draw_rectangle(-2,-2,320*stageIntro,999,false)
draw_set_color(c_white) draw_set_alpha(1)
//draw_playerhp()
}
}

if room=rm_eatinggame
{
draw_set_font(global.timefont)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(160,0,oEatingContestGame.time)
	
	
if oEatingContestGame.ready=0
with oEatingContestPlayer
{


	
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,32,"EATING CONTEST!")

with oControl
{
if stageIntro!=0 stageIntro-=0.05 else stageIntro=0
draw_set_color(c_black) draw_set_alpha(1)
if stageIntro!=0
draw_rectangle(-2,-2,320*stageIntro,999,false)
}
draw_set_color(c_white) draw_set_alpha(1)
//draw_playerhp()
}

}


if room=rm_hammergame
{
draw_set_font(global.timefont)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(160,0,oHammerGame.time)
	
if oHammerGame.ready=0
with oHammerPlayer
{	
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,32,"TEST YOUR STRENGTH!")

with oControl
{
if stageIntro!=0 stageIntro-=0.05 else stageIntro=0
draw_set_color(c_black) draw_set_alpha(1)
if stageIntro!=0
draw_rectangle(-2,-2,320*stageIntro,999,false)
}
draw_set_color(c_white) draw_set_alpha(1)
//draw_playerhp()
}

}
}


