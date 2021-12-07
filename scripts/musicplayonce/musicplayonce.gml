function musicplayonce(argument0) {
	global.CurrentMusic=argument0

	if global.CurrentMusic=-1 audio_stop_all()
	else
	{audio_stop_all()
	audio_play_sound(global.CurrentMusic,1,0)
	audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)
	}


}
