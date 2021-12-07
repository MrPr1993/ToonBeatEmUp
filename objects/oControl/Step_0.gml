/// @description Beta Test
if isPaused=0
{
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

if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_credits and room!=rm_howtoplay
and room!=rm_cutscene1 and room!=rm_map and room!=rm_chardata
{
if betatest=1
{
if keyboard_check_pressed(ord("R")) 
if keyboard_check(vk_shift)
{
oPlayer.x=32 __view_set( e__VW.XView, 0, 0 )
}
else
room_restart()

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
global.P1Score=0

}



global.GlobalBeta=betatest

if global.CurrentMusic!=-1
audio_sound_gain(global.CurrentMusic, 0+MusicFadeAdd, 0);

if MusicFade=1 MusicFadeAdd-=0.01 else MusicFadeAdd=1

if room=rm_titlescreen
controller_setup()

if room=rm_characterselect
controller_setup()

if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper and room!=rm_credits and  room!=rm_howtoplay and room!=rm_cutscene1
and room!=rm_map and room!=rm_chardata
{
if camMove=0
{
//if oPlayer.x>=view_xview[0]+160 {if view_xview[0]<camMax {view_xview[0]+=2 camMin=view_xview[0]}}

}
else
{

///This side is disabled

if oPlayer.x>=__view_get( e__VW.XView, 0 )+160 {if __view_get( e__VW.XView, 0 )<camMax {__view_set( e__VW.XView, 0, oPlayer.x-160 ) camMin=__view_get( e__VW.XView, 0 )}}

if instance_exists(oEnemySpawner)
{if oEnemySpawner.GoBack=1
if oPlayer.x<=__view_get( e__VW.XView, 0 )+160 {if __view_get( e__VW.XView, 0 )>oEnemySpawner.MinX {__view_set( e__VW.XView, 0, oPlayer.x-160 ) camMin=__view_get( e__VW.XView, 0 )}}

if oPlayer.y>=oEnemySpawner.YView+120+80 {if oEnemySpawner.YView<camMaxY+80 {oEnemySpawner.YView=oPlayer.y-120-80 camMinY=oEnemySpawner.YView+80}}
with oEnemySpawner {YView=clamp(YView,MinY,MaxY-240) __view_set( e__VW.YView, 0, YView+oControl.quakeFX )}
}
else
__view_set( e__VW.YView, 0, quakeFX )
//else if view_xview[0]>camMin view_xview[0]-=2

}

if betatest=1
{
if keyboard_check_pressed(ord("G"))
if camMove=0
{}//camMove=1 camMax=room_width} else {camMove=0 camMax=0}
}



///Continue Screen
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