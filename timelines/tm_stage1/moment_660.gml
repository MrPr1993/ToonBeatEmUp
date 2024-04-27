/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2847//8
{
if oControl.allPlayersEdge and oControl.allPlayersMove
{
oPlayer.canControl=0
oPlayer.areaEntry=1

with oPlayer
{
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
{
timeline_position-=1
}
}
else
timeline_position-=1






