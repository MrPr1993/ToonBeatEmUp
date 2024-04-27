//if oPlayer.x>__view_get( e__VW.XView, 0 )+320-24
if oControl.allPlayersEdge and oControl.allPlayersMove
{
with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1