///@description Fun House

//if oPlayer.x>__view_get( e__VW.XView, 0 )+320-24
if oControl.allPlayersEdge and oControl.allPlayersMove
{timer_set(0)
with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}

spawner_followset("WaveSet1",0,5200-640,1)
}
else
{
timeline_position-=1

specialSet8=0
}