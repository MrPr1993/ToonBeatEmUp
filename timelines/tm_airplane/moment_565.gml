if oPlayer.ground and oPlayer.canmove
{oPlayer.canControl=0 with oPlayer
	{key_left=0 key_right=0 key_up=0 key_down=0}
}
else
timeline_position-=1
