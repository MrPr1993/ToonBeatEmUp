/// @description /OH NO
with oPlayer {canmove=0 AnimFrame=0 anim=301 canControl=1}

with oControl 
{MusicFade=0 MusicFadeAdd=1
audio_stop_sound(global.CurrentMusic)
global.CurrentMusic=msc_boss2
audio_play_sound(global.CurrentMusic,1,1)
audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)
global.MusicFade=1
MusicFade=0 MusicFadeAdd=1
}