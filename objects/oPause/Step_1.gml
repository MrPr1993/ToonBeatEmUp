/// @description Insert description here
// You can write your code in this editor
if global.BGMvolume>1
{
audio_resume_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,(global.BGMvolume/100)/4,0)
}
else
{
audio_pause_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,0,0)
}
