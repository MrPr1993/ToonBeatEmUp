/// @description Insert description here
// You can write your code in this editor
controller_setup()


if key_up_pressed {PlaySound(snd_select) if menuSelect=0 menuSelect=8 else menuSelect-=1}
if -key_down_pressed {PlaySound(snd_select) if menuSelect=8 menuSelect=0 else menuSelect+=1}

if -key_left
{
if menuSelect=0 {if global.BGMvolume!=0 global.BGMvolume-=1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)}
if menuSelect=1 if global.SFXvolume!=0 global.SFXvolume-=1
}

if key_right
{
if menuSelect=0 {if global.BGMvolume!=100 global.BGMvolume+=1 audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)}
if menuSelect=1 if global.SFXvolume!=100 global.SFXvolume+=1
}

if -key_left_pressed
{PlaySound(snd_select)
	
	//Screen Size
if menuSelect=2 screen_size(0)

if menuSelect=3 //6
{
if global.CRTfx=0
global.CRTfx=6 else global.CRTfx-=1
TVfx=global.CRTfx
if global.CRTfx=7 global.MonochromeFX=1 else global.MonochromeFX=0

if instance_exists(oControl) oControl.TVfx=TVfx
if instance_exists(oPause) oPause.TVfx=TVfx
}

if menuSelect=4 if global.Screenshake=1 global.Screenshake=0 else global.Screenshake=1
if menuSelect=5 if global.Screenflash=1 global.Screenflash=0 else global.Screenflash=1
	
	if stagePause=0
	{
if menuSelect=6	{if global.LifeStart=0 global.LifeStart=9 else global.LifeStart-=1}
if menuSelect=7	{if global.ContinueStart=-1 global.ContinueStart=99 else global.ContinueStart-=1}	
	}
	
if menuSelect=8	if global.fpsMode=0 global.fpsMode=1 else global.fpsMode=0
	}


if key_right_pressed or key_attack
{PlaySound(snd_select)
if menuSelect=2 screen_size(1)

if menuSelect=3 //6
{
if global.CRTfx=6
global.CRTfx=0 else global.CRTfx+=1
if global.CRTfx=7 global.MonochromeFX=1 else global.MonochromeFX=0
TVfx=global.CRTfx
if instance_exists(oControl) oControl.TVfx=TVfx
if instance_exists(oPause) oPause.TVfx=TVfx
}

if menuSelect=4 if global.Screenshake=1 global.Screenshake=0 else global.Screenshake=1
if menuSelect=5 if global.Screenflash=1 global.Screenflash=0 else global.Screenflash=1
	
	if stagePause=0
	{
if menuSelect=6	{if global.LifeStart=9 global.LifeStart=0 else global.LifeStart+=1}
if menuSelect=7	{if global.ContinueStart=99 global.ContinueStart=-1 else global.ContinueStart+=1}	
	}
	
	if menuSelect=8	if global.fpsMode=0 global.fpsMode=1 else global.fpsMode=0
	}