if ghost.x<ghost2.x
timeline_position-=1
else
{ghost.hspeed=0 ghost.x=ghost2.x 
//ghost.image_speed=lerp(ghost.image_speed,0,0.05)
//ghost2.image_speed=lerp(ghost2.image_speed,0,0.05)
ghost.zSpeed=lerp(ghost.zSpeed,0,0.05)
if ghost.zSpeed<-0.1 timeline_position-=1
else
{//ghost.image_speed=0 ghost2.image_speed=0 ghost.image_index=10 ghost2.image_index=10
ghost.zSpeed=0 ghost2.zSpeed=0
	}
}
