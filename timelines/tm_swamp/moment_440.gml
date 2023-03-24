/// @description Boat Area Start
if oPlayer.x>3390
{
oBlock.y+=24	

oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0	

timer_set(1)
oControl.time=99
with oPlayer
{canControl=1 hspeed=0 
}

///Billboard
billboard=instance_create(640,0,oFlashFX) with billboard
{sprite_index=spr_billboard image_speed=0 isDepth=0
alarm[0]=0 hspeed=-12 depth=16777016
}

layer_hspeed("GroundBG1",-8)
layer_hspeed("GroundBG2",-8)
layer_hspeed("TreesBG",-8)
layer_hspeed("WaterBG",-8+0.1)

with oRainFX {fallSpdX=2}

}
else
timeline_position-=1

