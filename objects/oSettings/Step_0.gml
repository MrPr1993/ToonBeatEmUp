/// @description Insert description here
// You can write your code in this editor
controller_setup()


if key_up_pressed {PlaySound(snd_select) if menuSelect=0 menuSelect=13 else menuSelect-=1}
if -key_down_pressed {PlaySound(snd_select) if menuSelect=13 menuSelect=0 else menuSelect+=1}

if -key_left
{
if menuSelect=0 {if global.BGMvolume!=0 global.BGMvolume-=1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)}
if menuSelect=1 if global.SFXvolume!=0 global.SFXvolume-=1

if TVfx=7
{
if menuSelect=5 {if global.CRTcustomDistortAM>-3.99 global.CRTcustomDistortAM-=0.01}
}

}

if key_right
{
if menuSelect=0 {if global.BGMvolume!=100 global.BGMvolume+=1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)}
if menuSelect=1 if global.SFXvolume!=100 global.SFXvolume+=1

if TVfx=7
{
if menuSelect=5 {if global.CRTcustomDistortAM<3.99 global.CRTcustomDistortAM+=0.01}
}

}

if -key_left_pressed
{PlaySound(snd_select)
	
	if menuSelect=7 {if global.ColorMode=0 global.ColorMode=5 else global.ColorMode-=1}
	if menuSelect=8 {if global.ArcadeScreen=0 global.ArcadeScreen=3 else global.ArcadeScreen-=1}
	
	//Screen Size
if menuSelect=2 screen_size(0)

if menuSelect=3 //6
{
if global.CRTfx=0
global.CRTfx=7 else global.CRTfx-=1
TVfx=global.CRTfx
//if global.CRTfx=7 global.MonochromeFX=1 else global.MonochromeFX=0

if instance_exists(oControl) oControl.TVfx=TVfx
if instance_exists(oPause) oPause.TVfx=TVfx
}

if TVfx=7
{
if menuSelect=4 {if global.CRTcustomDistort=0 global.CRTcustomDistort=1 else global.CRTcustomDistort=0}
if menuSelect=6 {if global.CRTcustomBorder=0 global.CRTcustomBorder=1 else global.CRTcustomBorder=0}
}



if menuSelect=9 if global.Screenshake=1 global.Screenshake=0 else global.Screenshake=1
if menuSelect=10 if global.Screenflash=1 global.Screenflash=0 else global.Screenflash=1
	
	if stagePause=0
	{
if menuSelect=11	{if global.LifeStart=0 global.LifeStart=9 else global.LifeStart-=1}
if menuSelect=12	{if global.ContinueStart=-1 global.ContinueStart=99 else global.ContinueStart-=1}	
	}
	
if menuSelect=13	if global.fpsMode=0 global.fpsMode=1 else global.fpsMode=0
	}


if key_right_pressed or key_attack
{PlaySound(snd_select)
if menuSelect=2 screen_size(1)

if menuSelect=7 {if global.ColorMode=5 global.ColorMode=0 else global.ColorMode+=1}
if menuSelect=8 {if global.ArcadeScreen=3 global.ArcadeScreen=0 else global.ArcadeScreen+=1}

if menuSelect=3 //6
{
if global.CRTfx=7
global.CRTfx=0 else global.CRTfx+=1
//if global.CRTfx=7 global.MonochromeFX=1 else global.MonochromeFX=0
TVfx=global.CRTfx
if instance_exists(oControl) oControl.TVfx=TVfx
if instance_exists(oPause) oPause.TVfx=TVfx
}


if TVfx=7
{
if menuSelect=4 {if global.CRTcustomDistort=0 global.CRTcustomDistort=1 else global.CRTcustomDistort=0}
if menuSelect=6 {if global.CRTcustomBorder=0 global.CRTcustomBorder=1 else global.CRTcustomBorder=0}
}

if menuSelect=9 if global.Screenshake=1 global.Screenshake=0 else global.Screenshake=1
if menuSelect=10 if global.Screenflash=1 global.Screenflash=0 else global.Screenflash=1
	
	if stagePause=0
	{
if menuSelect=11	{if global.LifeStart=9 global.LifeStart=0 else global.LifeStart+=1}
if menuSelect=12	{if global.ContinueStart=99 global.ContinueStart=-1 else global.ContinueStart+=1}	
	}
	
	if menuSelect=13	if global.fpsMode=0 global.fpsMode=1 else global.fpsMode=0
	}
	
	if instance_exists(oControl)
{
oControl.var_distort=global.CRTcustomDistort
oControl.var_distortion_ammount=global.CRTcustomDistortAM
oControl.var_border=global.CRTcustomBorder
}
if instance_exists(oPause)
{
oPause.var_distort=global.CRTcustomDistort
oPause.var_distortion_ammount=global.CRTcustomDistortAM
oPause.var_border=global.CRTcustomBorder
}

if keyboard_check_pressed(vk_escape) or key_jump
{
settings_save()
if room=rm_settings room=rm_menu else instance_destroy()
}