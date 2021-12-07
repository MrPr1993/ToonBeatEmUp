/// @description /OH NO
with oPlayer {canmove=0 animFrame=0 anim=301 canControl=1}

with oControl 
{MusicFade=0 MusicFadeAdd=1

global.CurrentMusic=msc_boss

	audio_play_sound(global.CurrentMusic,0,1)


alarm[0]=60
}