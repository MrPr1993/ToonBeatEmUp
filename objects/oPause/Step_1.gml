
if global.BGMvolume>1
{
//if audio_is_playing(global.CurrentMusic)
//{
//audio_resume_sound(global.CurrentMusic)
//audio_sound_gain(global.CurrentMusic,(global.BGMvolume/100)*global.MusicFade,0)
//}
}
else
{
if audio_is_playing(global.CurrentMusic)
{
audio_pause_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,0,0)
}
}