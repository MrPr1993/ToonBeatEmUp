function musicplaystart(argument0) {
	global.CurrentMusic=argument0
global.MusicFade=1
	if global.CurrentMusic=-1 audio_stop_all()
	else
	{audio_stop_all()
	audio_play_sound(global.CurrentMusic,1,1)
	audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)
	}


}


function musicplaystartpitch(argument0,argument1) {
	global.CurrentMusic=argument0
global.MusicFade=1
	if global.CurrentMusic=-1 audio_stop_all()
	else
	{audio_stop_all()
	audio_play_sound(global.CurrentMusic,1,1)
	audio_sound_gain(global.CurrentMusic,global.BGMvolume/100,0)
	audio_sound_pitch(global.CurrentMusic,argument1)
	}


}
