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

stageClear=1


with oPlayer
{global.P1Char=character
canmove=0  animFrame=0
key_left=0 key_right=0 key_up=0 key_down=0 anim=0
}if stagePose=1 oPlayer.anim=210

alarm[6]=80

