/// @description Stage Start
if oPlayer.ground=1
{
x=__view_get( e__VW.XView, 0 )
MinX=__view_get( e__VW.XView, 0 )

oViewTarget.x=3008
__view_set( e__VW.Object, 0, -1 )

oEnemySpawner.canFollow=1
oControl.camMove=1
__view_set( e__VW.HSpeed, 0, 0 )

key_right=0
oPlayer.canControl=1

oPlayer.hspeed=0

oControl.showMap=1

with oHeight32 if name="Remove" instance_destroy()
with oFlashFX  if name="Remove" instance_destroy()

with oEnemySpawner
if selfID="WaveSet1" {wave=0 x=480 image_xscale=10}

with oControl{
alarm[0]=timecheck timecheck=-1}
}
else
timeline_position-=1



