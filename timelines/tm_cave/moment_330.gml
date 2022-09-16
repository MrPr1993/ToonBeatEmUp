///@description Plane Go

if oPlayer.x>__view_get( e__VW.XView, 0 )+320+24
{
with oPlayer
{canControl=0 areaEntry=1
key_up=0 key_down=0 key_left=0
key_right=0 doubledash=0 dashing=0 Immune=1
y=0
}
pl=instance_create(__view_get( e__VW.XView, 0 )+320-128,170,oPlaneWheel)
pl.danger=1 pl.dangerTime=0
}
else
timeline_position-=1
