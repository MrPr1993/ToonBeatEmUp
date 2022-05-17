/// @description Go To Boss

if oPlayer.x>__view_get( e__VW.XView+320-32, 0 )
{
with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=1 doubledash=0 dashing=0
}
}
else
timeline_position-=1
