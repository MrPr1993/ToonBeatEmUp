function PlaySoundNoStack(argument0) {
	var snd=argument0

	if snd!=-1
	{
	if audio_is_playing(snd)
	audio_stop_sound(snd)

	audio_play_sound(snd,1,0)
	audio_sound_gain(snd, 1, 0);
	audio_sound_gain(snd,global.SFXvolume/100,0)
	}



}

function PlaySoundNoStackPitch(argument0,argument1) {
	var snd=argument0

	if snd!=-1
	{
	if audio_is_playing(snd)
	audio_stop_sound(snd)

	audio_play_sound(snd,1,0)
	audio_sound_gain(snd, 1, 0);
	audio_sound_gain(snd,global.SFXvolume/100,0)
	audio_sound_pitch(snd,argument1)
	}

}
