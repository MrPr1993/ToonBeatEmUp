var _new_source = input_source_detect_new();
if (_new_source != undefined)
{
    var _i = 0;
    repeat(INPUT_MAX_PLAYERS)
    {
		

		
		if (!input_player_connected(_i))
		{
            input_source_set(_new_source, _i, true);
            input_verb_consume(all, _i);
            break;
        }
        
        ++_i;
    }
}

//If a player presses a pause button, disconnect them
var _i = 0;
repeat(INPUT_MAX_PLAYERS)
{
    if (input_player_connected(_i))
    {
       // if (input_check_pressed("pause", _i)) input_source_clear(_i);
    }
    
    ++_i;
}

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