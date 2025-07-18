if en1.anim=101
{alarm[0]=0 with en1 sprite_index=spr_hwolf_hit
//with oControl { TextDialogue="YOU DARE TO HIT ME? LADY WOLF?" bossID=-1}
PlaySound(snd_hwolf5)
		var _playerquote="YOU DARE HIT ME, LADY WOLF?"		
		gamedialogue_play(_playerquote,audio_sound_length(snd_hwolf5))

timer_set(0)
with fakeenS timer=0
}
else
timeline_position-=1