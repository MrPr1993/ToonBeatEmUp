/// @description Insert description here
// You can write your code in this editor
///Set Up Volume
//global.CurrentMusic
//audio_play_sound(global.CurrentMusic,1,1)
///Add screen wideness
//view_visible[1]=1
//view_wport[1]=32
//view_xport[1]=-32

if global.BGMvolume>1
{
audio_resume_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,(global.BGMvolume/100)*global.MusicFade,0)
}
else
{
audio_pause_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,0,0)
}


depth=-999999999