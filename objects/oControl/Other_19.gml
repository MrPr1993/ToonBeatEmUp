/// @description Stage Clear
if stageclearMusic=1
{
audio_stop_sound(global.CurrentMusic)
if stageclearfakeout!=2
musicplayonce(msc_stageclear)
if stageclearfakeout=2
musicplayonce(msc_finalbossclear)
}

CutsceneStage=stageNext

if keyboard_check(vk_control)
{
global.GlobalBeta=0
betatest=0
}

//stageClear=1
nopleasewait=0
with oPlayer
if ContinueMode=0
{
if oControl.stageclearfakeout!=1
{global.StageClear=1
if playerNO=1	
global.P1Char=character
if playerNO=2
global.P2Char=character
if playerNO=3
global.P3Char=character
if playerNO=4
global.P4Char=character
}
canmove=0  key_charge=0 combo_stop()
key_left=0 key_right=0 key_up=0 key_down=0
}

if global.MenuGlobal=0
{
if global.StageClear=1
{
global.P1available=0
global.P2available=0
global.P3available=0
global.P4available=0
with oPlayer
{
if playerNO=1	
global.P1available=1
if playerNO=2
global.P2available=1
if playerNO=3
global.P3available=1
if playerNO=4
global.P4available=1
}
}
}


with oPlayer if stagePose!=0 {anim=210 AnimFrame=0}

alarm[6]=80

pauseBuffer=888888888888888888

