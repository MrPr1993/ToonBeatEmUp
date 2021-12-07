if oPlayer.ground=0
{oViewTarget.x=3008
__view_set( e__VW.Object, 0, oViewTarget )
oEnemySpawner.canFollow=0
oControl.camMove=0
__view_set( e__VW.HSpeed, 0, 3.5 )
oPlayer.hspeed=3
}
else
{oViewTarget.x=3008
__view_set( e__VW.Object, 0, oViewTarget )
oEnemySpawner.canFollow=0
oControl.camMove=0
__view_set( e__VW.HSpeed, 0, 3 )
timeline_position-=1
}

