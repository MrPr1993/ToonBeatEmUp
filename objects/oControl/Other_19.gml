/// @description Stage Clear
if stageclearMusic=1
{
audio_stop_sound(global.CurrentMusic)
musicplayonce(msc_stageclear)
}


if keyboard_check(vk_control)
{
global.GlobalBeta=0
betatest=0
}

//stageClear=1

with oPlayer
if ContinueMode=0
{
if playerNO=1	
global.P1Char=character
if playerNO=2
global.P2Char=character
if playerNO=3
global.P3Char=character
if playerNO=4
global.P4Char=character
canmove=0  key_charge=0
key_left=0 key_right=0 key_up=0 key_down=0
}with oPlayer if stagePose!=0 {anim=210 AnimFrame=0}

alarm[6]=80

pauseBuffer=888888888888888888