//if oPlayer.ground and oPlayer.canmove
if oControl.allPlayersMove
{timer_set(0)
oPlayer.canControl=0 with oPlayer
	{key_left=0 key_right=0 key_up=0 key_down=0
		anim=303 animFrame=0 canmove=0
		
		}
}
else
if specialcheck5=0
timeline_position-=1
