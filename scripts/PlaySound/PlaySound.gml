function PlaySound(argument0) {
	var timesSound=1
	var snd = audio_play_sound(argument0,0,0)


	audio_sound_gain(argument0, timesSound, 0);

audio_sound_gain(argument0,global.SFXvolume/100,0)
audio_sound_pitch(snd,1)

}

function PlaySoundPitch(argument0,argument1) {
	var timesSound=1
	var snd = audio_play_sound(argument0,0,0)


	audio_sound_gain(argument0, timesSound, 0);

audio_sound_gain(argument0,global.SFXvolume/100,0)
	audio_sound_pitch(snd,argument1)
}
