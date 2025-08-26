/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

	if TVfx!=9999
{application_surface_draw_enable(false);
if crtcheck=320
{
surface_width=window_get_width()
surface_height=window_get_height()
}
else
{
surface_width=window_get_width()/2
surface_height=window_get_height()/2
}
}
else application_surface_draw_enable(true);
	
	
	if TVfx!=9999
if (surface_exists(new_surf) == false) {
  new_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
}

	if TVfx!=999
	{
surface_resize(new_surf,320,240)

  gpu_set_alphatestenable(false)

surface_set_target(new_surf);
draw_clear_alpha(c_black, 0.0);
draw_set_color(c_white) draw_rectangle(-2,-2,555,555,false);
if global.MonochromeFX=1 shader_set(shd_grayscale)
draw_surface(application_surface, 0, 0);

  gpu_set_alphatestenable(true)
	}
///
draw_set_color(c_white) draw_set_alpha(1)

shader_set(shd_grayscale)
draw_sprite_ext(spr_photoplaceholder,0,0+320*mirrorMode,0,1-2*mirrorMode,1,0,c_white,1)
shader_reset()


draw_sprite_ext(spr_photoplaceholder,0,0+320*mirrorMode,0,1-2*mirrorMode,1,0,c_white,1-1*filmY)

if stageClear=1 or isGameOver=1
{
filmY=lerp(filmY,1,0.1)

mapXFilm-=1 if mapXFilm<-16 mapXFilm+=16
for (var iI=0; iI<=240+64; iI+=16)
{
draw_sprite_ext(spr_filmpart,1,round(-9+9*filmY),mapXFilm+iI,1,1,90,c_white,1);
draw_sprite_ext(spr_filmpart,1,312+round(9-9*filmY),mapXFilm+iI,1,1,90,c_white,1);
}

}

draw_set_alpha(stageclearblack) draw_set_color(c_black)
draw_rectangle(-999,-999,999,999,false)
if stageclearblack<0.75
stageclearblack+=0.05

draw_set_alpha(1) draw_set_color(c_white)



if stageClear=0
{
if !instance_exists(oSettings) and AreYouSure=0
{
if key_up_pressed {PlaySound(snd_select) if menuSelect=0 menuSelect=3 else menuSelect-=1}
if -key_down_pressed {PlaySound(snd_select) if menuSelect=3 menuSelect=0 else menuSelect+=1}
}
draw_set_halign(fa_left)
if selectStar=0 selectStar=2 else selectStar-=0.2

if menuSelect=0 {StarSpace=128 StarY=116}
if menuSelect=1 {StarSpace=120 StarY=116+8}
if menuSelect=2 {StarSpace=120 StarY=116+16}
if menuSelect=3 {StarSpace=136 StarY=116+24}

draw_set_color(c_white) draw_set_alpha(1)


draw_set_font(global.scorefont)
draw_set_halign(fa_center)


draw_set_halign(fa_center)

draw_sprite(bg_continue,0,0,0+round(quakeFX))

//if continueCountdown>7
//if continueCountdown<1
////countdownTrain+=0.005
//else



if deathGameOver=0
{
if continueCountdown<6
{
if continueCountdown>2
{if quakeFX<1 quakeFX+=0.1 else quakeFX=-1 CharFrame+=0.1}
else
if continueCountdown>1
{if quakeFX<2 quakeFX+=0.25 else quakeFX=-2 CharFrame+=0.25}
else
{if quakeFX<3 quakeFX+=0.5 else quakeFX=-3 CharFrame+=0.5}
{}
}else CharFrame+=0.02
if continueCountdown>1
{
countdownTrain+=0.00001
}
else
{
countdownTrain+=0.000005+countdownTrainSpd*2
countdownTrainSpd+=0.000005*(countdownTrain*100)
}
trainFrame+=0.025

finalStage=0

draw_sprite_ext(spr_continuet,trainFrame,60+80*(countdownTrain),(125+quakeFX+34*(countdownTrain)),1*(countdownTrain),1*(countdownTrain),0,c_white,1)

if CharFrame>3 CharFrame=0

if playNO=1
{
if global.P1Char=0 CharSpr=spr_viva_train
if global.P1Char=1 CharSpr=spr_hina_train
if global.P1Char=2 CharSpr=spr_bahati_train
if global.P1Char=3 CharSpr=spr_sofia_train
pal_swap_set(global.p1Pals,global.p1Pal,false);
//CharSpr
}
if playNO=2
{
if global.P2Char=0 CharSpr=spr_viva_train
if global.P2Char=1 CharSpr=spr_hina_train
if global.P2Char=2 CharSpr=spr_bahati_train
if global.P2Char=3 CharSpr=spr_sofia_train
pal_swap_set(global.p2Pals,global.p2Pal,false);
}
if playNO=3
{
if global.P3Char=0 CharSpr=spr_viva_train
if global.P3Char=1 CharSpr=spr_hina_train
if global.P3Char=2 CharSpr=spr_bahati_train
if global.P3Char=3 CharSpr=spr_sofia_train
pal_swap_set(global.p3Pals,global.p3Pal,false);
}
if playNO=4
{
if global.P4Char=0 CharSpr=spr_viva_train
if global.P4Char=1 CharSpr=spr_hina_train
if global.P4Char=2 CharSpr=spr_bahati_train
if global.P4Char=3 CharSpr=spr_sofia_train
	
pal_swap_set(global.p4Pals,global.p4Pal,false);
}
draw_sprite(CharSpr,CharFrame,164,round(211+quakeFX))
pal_swap_reset()

draw_set_color(c_black)
draw_rectangle(-999,-999,999,24,false)

draw_rectangle(-999,240-24,999,9999,false)

draw_set_color(c_white)
draw_sprite_ext(spr_continuenum,continueCountdown,160,140-32,2-(1/alarm[2])*2,2-(1/alarm[2])*2,0,c_white,1)

draw_sprite(spr_continue,0,160,48-24)

draw_set_halign(fa_center)
draw_set_font(global.scorefont)
if global.Continues=-1
draw_text(160,220,"CREDIT INFINITE")
else
draw_text(160,220,"CREDIT "+string(global.Continues))
}
else
if isGameOver=0
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-2,-2,888,888,false)
gameOverFlash-=0.01

if instance_exists(oFlashFX) with oFlashFX flashfx_draw()

draw_set_alpha(gameOverFlash)///
draw_set_color(c_white)
draw_rectangle(-32,-32,999,999,false)
}
else
{	
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-2,-2,888,888,false)

if instance_exists(oFlashFX) with oFlashFX flashfx_draw()

if alarm[3]<60
if isGameOverDark<4 isGameOverDark+=0.05
draw_set_alpha(isGameOverDark)

draw_set_color(c_black)
draw_rectangle(-32,-32,999,999,false)

gameOverSpin=lerp(gameOverSpin,360,0.1)

gameOverYAdd=lerp(gameOverYAdd,-48,0.1)

draw_sprite_ext(spr_continue,isGameOver,160,round(100+gameOverYAdd+20*isGameOver),sin(gameOverSpin),1,0,c_black,1)///Game Over Text
d3d_set_culling(true)
draw_sprite_ext(spr_continue,isGameOver,160,round(100+gameOverYAdd+20*isGameOver),sin(gameOverSpin),1,0,c_white,1)///Game Over Text
d3d_set_culling(false)

if stageClear=1 or isGameOver=1
{
filmY=lerp(filmY,1,0.1)
mapXFilm-=1 if mapXFilm<-16 mapXFilm+=16
for (var iI=0; iI<=240+64; iI+=16)
{
draw_sprite_ext(spr_filmpart,1,round(-9+9*filmY),mapXFilm+iI,1,1,90,c_white,1);
draw_sprite_ext(spr_filmpart,1,312+round(9-9*filmY),mapXFilm+iI,1,1,90,c_white,1);
}
}

gameOverFlash-=0.01
draw_set_alpha(gameOverFlash)///
draw_set_color(c_white)
draw_rectangle(-32,-32,999,999,false)

draw_set_alpha(isGameOverDark-1)///
draw_set_color(c_black)
draw_rectangle(-32,-32,999,999,false)

}

if continueScreen=1
if setGameOver!=2
{
if finalStageHi=1
{
finalStageMono-=0.01
shader_set(shd_grayscale)
draw_sprite_ext(spr_photoplaceholder,0,0+320*mirrorMode,0,1-2*mirrorMode,1,0,c_white,1)
shader_reset()
draw_sprite_ext(spr_photoplaceholder,0,0+320*mirrorMode,0,1-2*mirrorMode,1,0,c_white,finalStageMono)
}
draw_set_halign(fa_left)
if playNO=1 with p1
hiscore_input()
if playNO=2 with p2
hiscore_input()
if playNO=3 with p3
hiscore_input()
if playNO=4 with p4
hiscore_input()
finalStage=0
}

if blackFX!=0
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-2,-2,888,888,false)
}
}
else
{
if stageClear=1
{
stageClearIndex+=0.5

if stageClearY<120 stageClearY+=16
draw_sprite_ext(stageCspr,stageClearIndex,160,stageClearY-32-24,1,1,0,c_white,1)///Game Over Text
draw_set_alpha(1) draw_set_color(c_white)

var _showplayer=1;

/////Fishing Room
if room=rm_fishing
{_showplayer=0

/////
draw_sprite_ext(spr_fish1,0,70,300-stageClearY,-1,1,270,c_white*global.FishData[1],1)
draw_sprite_ext(spr_fish2,0,120,300-stageClearY,-1,1,270,c_white*global.FishData[2],1)
draw_sprite_ext(spr_fish3,0,180,300-stageClearY,-1,1,270,c_white*global.FishData[3],1)
draw_sprite_ext(spr_fish4,0,230,300-stageClearY,-1,1,270,c_white*global.FishData[4],1)
draw_sprite_ext(spr_fish5,0,292,300-stageClearY,-1,1,270,c_white*global.FishData[5],1)

draw_sprite_ext(spr_fish6,0,92,300-stageClearY+32,-1,1,270,c_white*global.FishData[6],1)
draw_sprite_ext(spr_fish7,0,142,300-stageClearY+32,-1,1,270,c_white*global.FishData[7],1)
draw_sprite_ext(spr_fish8,0,210,300-stageClearY+32,-1,1,270,c_white*global.FishData[8],1)
draw_sprite_ext(spr_fish9,0,260,300-stageClearY+32,-1,1,270,c_white*global.FishData[9],1)
draw_sprite_ext(spr_fish10,0,280,300-stageClearY+32-20,1,1,0,c_white*global.FishData[10],1)
}

if stageScore=1
{alarm[0]=0 
draw_set_font(global.scorefont)


if _showplayer
{
draw_set_halign(fa_left)
draw_text(160,220,""+string_hash_to_newline(string(continueStageScore)))

if newrecord=1 {draw_set_halign(fa_center)
newrecordframe-=0.25 if newrecordframe<0 newrecordframe=2 if newrecordframe<1 draw_set_color(c_red) else draw_set_color(c_yellow)
draw_text_transformed(160,220-8,"NEW RECORD!",0.75,1,0)
}

draw_set_halign(fa_center)
draw_set_color(c_red)
if global.MenuGlobal=0 or global.MenuGlobal=1
if cheatpenalty!=0
{
	
draw_text_transformed(160,90,"CHEAT PENALTY: -"+string(cheatpenalty),0.75,1,0)
}

draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text_transformed(160,220,"STAGE SCORE:",0.75,1,0)
}

actPorg=(actP1+actP2+actP3+actP4)
if actPorg=0 actPorgT=0 ///3
else
if actPorg=1 actPorgT=20 ///3
else
if actPorg=3 actPorgT=0 ///1
else
if actPorg=4 actPorgT=0 ///1
else
actPorgT=20 ///3

if _showplayer=0
with oPlayerDisembodied
{
d3d_transform_set_identity()

if controlNO=1
//d3d_transform_set_translation(round(160-80*oContinueScreen.actPTotal),16,0)
d3d_transform_set_translation(round(x+40),16,0)
if controlNO=2
//d3d_transform_set_translation(round(160-80*oContinueScreen.actPTotal),16,0)
d3d_transform_set_translation(round(x+40),16,0)
if  controlNO=3
//d3d_transform_set_translation(round(160-80*oContinueScreen.actPTotal),16,0)
d3d_transform_set_translation(round(x+40),16,0)
if  controlNO=4
//d3d_transform_set_translation(round(160-80*oContinueScreen.actPTotal),16,0)
d3d_transform_set_translation(round(x+40),16,0)

//d3d_transform_set_translation(round(320-72-800000),0,0)

draw_set_halign(fa_center)

if controlNO!=9
{
if playerGet=1 
draw_text_transformed(0,144,string_hash_to_newline(string(oContinueScreen.resulttext1)),0.75,1,0)
else
draw_text_transformed(0,144,string_hash_to_newline(string("")),0.75,1,0)
if altresult2Text=-1
draw_text_transformed(0,144+16,string_hash_to_newline(string(oContinueScreen.resulttext2)),0.75,1,0)
else
draw_text_transformed(0,144+16,string_hash_to_newline(string(altresult2Text)),0.75,1,0)

draw_text_transformed(0,144+32,string_hash_to_newline(string(oContinueScreen.resulttext3)),0.75,1,0)

if controlNO=1
pal_swap_set(global.p1Pals,global.p1Pal,false);
if controlNO=2
pal_swap_set(global.p2Pals,global.p2Pal,false);
if controlNO=3
pal_swap_set(global.p3Pals,global.p3Pal,false);
if controlNO=4
pal_swap_set(global.p4Pals,global.p4Pal,false);
draw_sprite(spr_playerface,characterSelect,round(-23/2),144-28)
pal_swap_reset()
draw_sprite(spr_p1,controlNO-1,0,144-30)

if playerIcon=spr_extralifep
{
draw_sprite(spr_extralifep,characterSelect,round(0),144-28-32)
}

draw_set_halign(fa_center)
if oContinueScreen.AltScore1=0
{
if playerGet=1 
draw_text(0,144+8,string_hash_to_newline(oContinueScreen.bossScore))
else
draw_text(0,144+8,string_hash_to_newline(""))
}
else if playerGet=1 
draw_text(0,144+8,string_hash_to_newline(oContinueScreen.altresult1))
if oContinueScreen.AltScore2=0
draw_text(0,144+16+8,string_hash_to_newline(round(hp*20000)))
else
{
if altresult2!=-1
{
draw_text(0,144+16+8,string_hash_to_newline(altresult2))
}
else
if oContinueScreen.altresult2!=-1
draw_text(0,144+16+8,string_hash_to_newline(oContinueScreen.altresult2))
}

if oContinueScreen.AltScore3!=-2
{
if oContinueScreen.altresult3!=-1
{
if oContinueScreen.AltScore3=0
draw_text(0,144+32+8,string_hash_to_newline(round(oContinueScreen.time*200)))
else
draw_text(0,144+32+8,string_hash_to_newline(oContinueScreen.altresult3))
}
}
if oContinueScreen.scoreClearSet=0
{oContinueScreen.scoreClearSet=1
alarm[8]=240+oContinueScreen.stageClearDelay///Stage change time

if oContinueScreen.AltScore1=0 oContinueScreen.altresult1=oContinueScreen.bossScore
if oContinueScreen.AltScore2=0 oContinueScreen.altresult2=hp*20000
if oContinueScreen.AltScore3=0 oContinueScreen.altresult3=round(oContinueScreen.time*200)

}
}

}

if stageClearCheck=0
{alarm[7]=120+oContinueScreen.stageClearDelay
with oPlayerDisembodied if isInctive=0
{
if playerGet=1 
PlayerScore+=oContinueScreen.altresult1
if altresult2=-1
PlayerScore+=oContinueScreen.altresult2
else
{
PlayerScore+=altresult2

}
PlayerScore+=oContinueScreen.altresult3



}
else PlayerScore=0

GoldShow=1
gold_save()

stageClearCheck=1
}

if _showplayer=0
with oPlayerDisembodied
{
if playerNO=1
{global.P1Score=PlayerScore
global.P1Life=PlayerLife}
if playerNO=2
{global.P2Score=PlayerScore
global.P2Life=PlayerLife}
if playerNO=3
{global.P3Score=PlayerScore
global.P3Life=PlayerLife}
if playerNO=4
{global.P4Score=PlayerScore
global.P4Life=PlayerLife}
}



draw_set_halign(fa_left)
}

}
d3d_transform_set_identity()


}


if optionSelect=1
{draw_set_halign(fa_center)
draw_set_color(c_black) draw_set_alpha(optionSelectA)
draw_rectangle(-999,-888,899,999,false)
draw_set_alpha(1)
if optionSelectX!=0 optionSelectX-=20
draw_set_color(c_gray)
if optionPick=0 draw_set_color(c_white)
draw_text(round(160-optionSelectX),120,"RESTART") draw_set_color(c_gray)
if optionPick=1 draw_set_color(c_white)
draw_text(round(160+optionSelectX),120+8,"QUIT") 
if optionSelectA<0.75 optionSelectA+=0.05
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_command(8)
}

///Gold getting
if GoldShow=1 and global.GoldShow=1
{GoldY=lerp(GoldY,0,0.1)
draw_set_halign(fa_right) draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(global.scorefont)
if GoldGet!=0
draw_text(320-10,round(240-16+GoldY),string("+")+string(GoldGet)+string("$"))
draw_set_halign(fa_left)
}

if global.DisplayFeats=1
if instance_exists(oFeatDisplay) with oFeatDisplay drawscript();

if fadetoblack=1
{faderec+=0.05//-=8 
draw_set_color(c_black) draw_set_alpha(1)
	
if (surface_exists(surf_circle)) {
draw_set_color(c_black);
surface_set_target(surf_circle)
draw_rectangle(0,0,480,270,false)
gpu_set_blendmode(bm_subtract)
var defx=160; var defy=120;// if isCutscene defy=192/2
var irisout=faderec*30
if irisout<=29
draw_circle(defx,defy,200-((irisout/30)*200),false)
gpu_set_blendmode(bm_normal)
surface_reset_target()
draw_surface(surf_circle,0,0)
}
else
{
surf_circle = surface_create(320,240)
}
	
//draw_rectangle(faderec,-888,899,999,false)
}
draw_set_color(c_white) draw_set_alpha(1)
////

crt_fxset()
draw_set_halign(fa_left)
draw_set_valign(fa_top)