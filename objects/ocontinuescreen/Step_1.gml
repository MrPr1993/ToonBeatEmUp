/// @description Insert description here
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

controlset[1]=0;
controlset[2]=0;
controlset[3]=0;
controlset[4]=0;
for (var i=0; i<gamepad_get_device_count();i++)
{
if gamepad_is_connected(i)
{
if controlset[1]=0
controlset[1]=i;
else
if controlset[2]=0
controlset[2]=i;
else
if controlset[3]=0
controlset[3]=i;
else
controlset[4]=i;
}
}