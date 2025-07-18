//oControl.TextDialogue="THIS IS AS FAR AS YOU GO!"
PlaySound(snd_hwolf7)

var _playerquote="I'M GOING TO TEACH YOU A LESSON!"		
gamedialogue_play(_playerquote,audio_sound_length(snd_hwolf7))

with fk
{sprite_index=spr_hwolf_init image_speed=0.25}