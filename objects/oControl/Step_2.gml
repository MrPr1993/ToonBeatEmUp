/// @description Insert description here
// You can write your code in this editor
///Set Up Volume
//global.CurrentMusic
//audio_play_sound(global.CurrentMusic,1,1)
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


