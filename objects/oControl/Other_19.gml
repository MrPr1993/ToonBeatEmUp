/// @description Stage Clear
audio_stop_sound(global.CurrentMusic)

musicplayonce(msc_stageclear)



if keyboard_check(vk_control)
{
global.GlobalBeta=0
betatest=0
}

stageClear=1

with oPlayer
{global.P1Char=character
canmove=0  canControl=0 animFrame=0
anim=210

}

alarm[6]=80

