/// @description Beta Test
if isPaused=0
{
camX=__view_get( e__VW.XView, 0 )	
camY=__view_get( e__VW.YView, 0 )

if room=rm_cutscene1 or room=rm_opening or rm_brickbreak
or room=rm_slotmachine or room=rm_eatinggame or room=rm_singgame or isNotStage=1
__view_set( e__VW.YView, 0, quakeFX)	

if disableTimer time=99

camYAdd+=camYAddSpd

if global.CanGlobalBeta=1
if keyboard_check_pressed(ord("B")) 
if !keyboard_check(vk_control) and !keyboard_check(vk_shift)
{if betatest=1 betatest=0 else betatest=1}
else
{
if keyboard_check(vk_control)
{if ColBeta=1 ColBeta=0 else ColBeta=1}
if keyboard_check(vk_shift)
{if TextBeta=1 TextBeta=0 else TextBeta=1}
}

if betatest=1 if keyboard_check(vk_shift) and keyboard_check_pressed(ord("L"))
{
var langcheck=global.Language
var langtext="ENGLISH"
if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"
//if global.Language=1 langtext="ESPANOL"


global.Language=get_string("Change Language: "+string(langtext),global.Language)
language_check();

if instance_exists(oSettings) with oSettings language_check();
if instance_exists(oCharacterInfo) with oCharacterInfo language_check();
}

if room!=rm_titlescreen and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_creditscene and room!=rm_howtoplay
and room!=rm_cutscene1 and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop
and room!=rm_soundtest and room!=rm_gallery and room!=rm_loading and room!=rm_minigames and room!=rm_cutscenes
and room!=rm_menu and room!=rm_settings and room!=rm_paletteeditor and isNotStage=0
if keyboard_check(vk_shift) and keyboard_check_pressed(ord("Q"))
{
if room=rm_brickbreak
{
p1=oBrickBreakGame.p1
p2=oBrickBreakGame.p2
p3=oBrickBreakGame.p3
p4=oBrickBreakGame.p4
}

if room=rm_eatinggame
{
p1=oEatingContestGame.p1
p2=oEatingContestGame.p2
p3=oEatingContestGame.p3
p4=oEatingContestGame.p4
}

if room=rm_singgame
{
p1=oSingGame.p1
p2=oSingGame.p2
p3=oSingGame.p3
p4=oSingGame.p4
}

p1.canControl=0 p2.canControl=0 p3.canControl=0 p4.canControl=0
var cntrl=1;
cntrl=get_string("Pick player number",1)
if cntrl=1 p1.canControl=1
if cntrl=2 p2.canControl=1
if cntrl=3 p3.canControl=1
if cntrl=4 p4.canControl=1
if cntrl=5 {p1.canControl=1 p2.canControl=1 p3.canControl=1 p4.canControl=1}
}


if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_creditscene and room!=rm_howtoplay
and room!=rm_cutscene1 and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop
and room!=rm_soundtest and room!=rm_gallery and room!=rm_loading and room!=rm_brickbreak
and room!=rm_menu and room!=rm_settings and room!=rm_minigames and room!=rm_cutscenes and room!=rm_paletteeditor
and room!=rm_slotmachine and room!=rm_eatinggame  and room!=rm_singgame and isNotStage=0
{
///CONTINUE
//if x=-999999
if room!=rm_opening
{
if p1.ContinueMode=1
and p2.ContinueMode=1
and p3.ContinueMode=1
and p4.ContinueMode=1
{
cont=instance_create_depth(0,0,-1,oContinueScreen)
cont.TVfx=TVfx cont.playNO=playNO
exit;
}
}

if betatest=1
{
///Cheat
if keyboard_check(vk_control) and keyboard_check(vk_shift) and keyboard_check_pressed(ord("C"))
{
var cheattext=get_string("Cheat",0)
global.Cheat[cheattext]^=1;
}
/////Change info
if keyboard_check_pressed(vk_tab)
if !keyboard_check(vk_shift)
{/////
if instance_exists(oEnemySpawner)
with oEnemySpawner
{
var changetime=get_string("Timeline Change",timeline_position)
if timeline_position!=changetime
{
timeline_position=changetime
en1=-1
en2=-1
en3=-1
en4=-1
en5=-1
en6=-1
en7=-1
en8=-1
en9=-1
en10=-1
}
}
}
else
{
if instance_exists(oEnemySpawner)
var changel=get_string("Change level length",oEnemySpawner.MaxXAdd)
else
var changel=get_string("Change level length",0)
if changel="car" or changel="boat"
{
if changel="car"
{with oPlayer {vehSpr=spr_car vehWSpr=spr_car_wheels}}
if changel="boat"
with oPlayer {{vehSpr=spr_boat vehWSpr=spr_emptyarea}}

with oPlayer
if carMode {carMode=0 anim=0 canmove=1}
else
{carMode=1; anim=200 canmove=0}
exit;
}
if instance_exists(oEnemySpawner)
{
var wavelength=get_string("Change level length",oEnemySpawner.MaxXAdd)
spawner_followset("WaveSet1",0,wavelength,1)
}
}	

if keyboard_check_pressed(vk_add) global.ConsoleType=get_string("Console Type",global.ConsoleType)
if keyboard_check_pressed(vk_divide)
{
var file;
file = get_open_filename("Image File|*.txt", "");
if file != ""
{
 // file_text_open_read(file);
sprite_replace(spr_backgroundtester,file,0,0,0,0,0);
}
if !instance_exists(oBackgroundTester) instance_create_depth(0,0,0,oBackgroundTester)
}

if keyboard_check_pressed(ord("R")) 
if keyboard_check(vk_shift)
{
oPlayer.x=32 __view_set( e__VW.XView, 0, 0 )
}
else
{
if keyboard_check(vk_control)
{p2.x=p1.x p3.x=p1.x p4.x=p1.x}
else
if keyboard_check(vk_backspace)
{
	//global.P1available=(oControl.p1.isReady)
	global.P2available=get_string("P2 Active?",global.P2available)
	global.P3available=get_string("P3 Active?",global.P3available)
	global.P4available=get_string("P4 Active?",global.P4available)
	global.multiMode=2
	room_restart()
	}
else
room_restart()
}
///Insta-Game Over
if keyboard_check_pressed(vk_f2)
{
with oPlayer if dead=0 {PlayerLife=0 hp=0 event_user(0)}
}

///Set Score
if keyboard_check_pressed(vk_f3)
{
with oPlayer
{
PlayerScore=get_integer("Write new score",PlayerScore)
global.P1Score=PlayerScore
}
}

if keyboard_check_pressed(vk_f5)
game_save("SaveState")

if keyboard_check_pressed(vk_f7)
game_load("SaveState")

if keyboard_check_pressed(vk_f9)
{
event_user(9)
}

if keyboard_check_pressed(ord("I"))
if ignore=0 ignore=1 else ignore=0

if keyboard_check_pressed(ord("P"))///Strong Mode
if StrongMode=0 StrongMode=1 else StrongMode=0


if keyboard_check_pressed(ord("F"))///Freeze Enemies
if enemyFreeze=0
{with parEnemy
{act=0
alarmSave[0]=alarm[0]
alarmSave[1]=alarm[1]
alarmSave[2]=alarm[2]
alarmSave[3]=alarm[3]
alarmSave[4]=alarm[4]
alarmSave[5]=alarm[5]
alarmSave[6]=alarm[6]
alarmSave[7]=alarm[7]
alarmSave[8]=alarm[8]
alarmSave[9]=alarm[9]
} enemyFreeze=1
} else {with parEnemy 
{act=1
alarm[0]=alarmSave[0]
alarm[1]=alarmSave[1]
alarm[2]=alarmSave[2]
alarm[3]=alarmSave[3]
alarm[4]=alarmSave[4]
alarm[5]=alarmSave[5]
alarm[6]=alarmSave[6]
alarm[7]=alarmSave[7]
alarm[8]=alarmSave[8]
alarm[9]=alarmSave[9]
} enemyFreeze=0}
}



}

if room=rm_characterselect
{
///Set up Stats
global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0

global.P1Life+=global.P1Life*global.Cheat[2]*global.NoCheat
global.P2Life+=global.P2Life*global.Cheat[2]*global.NoCheat
global.P3Life+=global.P3Life*global.Cheat[2]*global.NoCheat
global.P4Life+=global.P4Life*global.Cheat[2]*global.NoCheat
}



global.GlobalBeta=betatest

//if global.CurrentMusic!=-1
//audio_sound_gain(global.CurrentMusic, 0+MusicFadeAdd, 0);

if MusicFade=1 global.MusicFade-=0.01

if room=rm_titlescreen
controller_setup()

if room=rm_characterselect
controller_setup()

if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_creditscene and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata and room!=rm_feats and room!=rm_shop and room!=rm_opening
and room!=rm_soundtest  and room!=rm_gallery and room!=rm_loading  and room!=rm_brickbreak
and room!=rm_menu  and room!=rm_settings and room!=rm_minigames and room!=rm_cutscenes  and room!=rm_paletteeditor
and room!=rm_slotmachine and room!=rm_eatinggame and room!=rm_singgame and isNotStage=0
{
if camMove=0
{
//if oPlayer.x>=__view_get( e__VW.XView, 0 )+160 {if __view_get( e__VW.XView, 0 )<camMax {__view_get( e__VW.XView, 0 )+=2 camMin=__view_get( e__VW.XView, 0 )}}

}
else
{

///This side is disabled
if (p1.x>=__view_get( e__VW.XView, 0 )+160 
and p2.x>=__view_get( e__VW.XView, 0 )+160 
and p3.x>=__view_get( e__VW.XView, 0 )+160 
and p4.x>=__view_get( e__VW.XView, 0 )+160 )
{if __view_get( e__VW.XView, 0 )<camMax {__view_set( e__VW.XView, 0, instance_nearest(__view_set( e__VW.XView, 0, 0),0,oPlayer).x-160) camMin=__view_get( e__VW.XView, 0 )}}

if instance_exists(oEnemySpawner)
{if oEnemySpawner.GoBack=1

if (p1.x<=__view_get( e__VW.XView, 0 )+160
and p2.x<=__view_get( e__VW.XView, 0 )+160
and p3.x<=__view_get( e__VW.XView, 0 )+160
and p4.x<=__view_get( e__VW.XView, 0 )+160)
{if __view_get( e__VW.XView, 0 )>oEnemySpawner.MinX {__view_set( e__VW.XView, 0,  instance_nearest(__view_set( e__VW.XView, 0, 0),0,oPlayer).x-160 ) camMin=__view_get( e__VW.XView, 0 )}}

if oPlayer.y>=oEnemySpawner.YView+120+80 {if oEnemySpawner.YView<camMaxY+80 {oEnemySpawner.YView=oPlayer.y-120-80 camMinY=oEnemySpawner.YView+80}}
with oEnemySpawner {YView=clamp(YView,MinY,MaxY-240) __view_set( e__VW.YView, 0, YView+oControl.quakeFX )}

}
else
__view_set( e__VW.YView, 0, quakeFX)
//else if __view_get( e__VW.XView, 0 )>camMin __view_get( e__VW.XView, 0 )-=2

}

if betatest=1
{
if keyboard_check_pressed(ord("G"))
if camMove=0
{}//camMove=1 camMax=room_width} else {camMove=0 camMax=0}

if keyboard_check(vk_control)
if keyboard_check_pressed(ord("D"))
{
 global.Difficulty=get_integer("Change Difficulty", global.Difficulty)
with oPlayer{
difficulty_check()
}
}
}



///Continue Screen
if x=-999 ///UNUSED
{
if continueScreen=2
{global.CurrentMusic=continueMusic
if !audio_is_playing(global.CurrentMusic)
{
audio_stop_all()
musicplaystart(global.CurrentMusic)
}

if oPlayer.key_attack or oPlayer.key_jump
{
continueScreen=2
}

if characterCount!=0
{
characterCount-=1
}
else
{
if characterTimer!=0 {characterCount=90 characterTimer-=1}
else 
{
characterTimer=9
characterCount=90
{oPlayer.character=characterSelect with oPlayer {if global.Continues!=-1 global.Continues-=1 PlayerLife=global.LifeStart+1 event_user(9)} continueScreen=0

}

}
}



if oPlayer.key_attack or oPlayer.key_jump
{oPlayer.character=characterSelect with oPlayer {if global.Continues!=-1 global.Continues-=1 PlayerLife=global.LifeStart+1 event_user(9)} continueScreen=0}


}


if continueScreen=1 and isGameOver=0
{
if !audio_is_playing(msc_countdown)
{
continueMusic=global.CurrentMusic
audio_stop_all()
global.CurrentMusic=msc_countdown
musicplaystart(global.CurrentMusic)
}



continueFlash=0 if keyboard_check_pressed(vk_escape) 
or ((oPlayer.key_attack or oPlayer.key_jump) and global.Continues=0)
{
if continueCountdown!=0
{alarm[2]=90
continueCountdown-=1

}
else
{///Game Over
gameover_set()
}
}

characterTimer=9
characterCount=90

if oPlayer.key_attack or oPlayer.key_jump
if global.Continues!=0
{continueScreen=2 alarm[2]=0 alarm[3]=0}


}
}
}

if global.Screenshake!=0
{
if quakeFXTime!=0
{quakeFX-=1 quakeFXTime-=1
if quakeFX<-2 quakeFX=2 }
else {quakeFXTime=0 quakeFX=0}
}
else
{
quakeFX=0 quakeFXTime=0
}


}

