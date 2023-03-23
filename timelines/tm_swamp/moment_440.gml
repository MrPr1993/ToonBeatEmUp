/// @description Boat Area Start
if oPlayer.x>3390
{
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0	

timer_set(1)
oControl.time=99
with oPlayer
{canControl=1 hspeed=0
}


layer_hspeed("GroundBG1",-8)
layer_hspeed("GroundBG2",-8)
layer_hspeed("TreesBG",-8)
layer_hspeed("WaterBG",-8+0.1)

with oRainFX {fallSpdX=2}

}
else
timeline_position-=1

