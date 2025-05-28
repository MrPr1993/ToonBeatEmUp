///@description aaa
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
//and !instance_exists(en3)
//and !instance_exists(en4)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=3382}

spawner_followset("WaveSet1",0,4512-32+480,1)

with port image_blend=c_black

ghostfx=instance_create_depth(4272, 178,-1,oFlashFX) with ghostfx
{sprite_index=spr_ghost_head hspeed=5 image_speed=0 z=-80 image_blend=c_black image_alpha=0.5 haspal=0 animEnd=0 alarm[0]=0
flashFX(4320-32,176+2,-80-32,spr_ghost_poof,0,0.25,60,1,1,c_white,1)
flashFX(4320,176+2,-80-32,spr_ghost_poof,0,0.25,60,1,1,c_white,1)
flashFX(4320+32,176+2,-80-32,spr_ghost_poof,0,0.25,60,1,1,c_white,1)
flashFX(4320-32,176+2,-80+32,spr_ghost_poof,0,0.25,60,1,1,c_white,1)
flashFX(4320,176+2,-80+32,spr_ghost_poof,0,0.25,60,1,1,c_white,1)
flashFX(4320+32,176+2,-80+32,spr_ghost_poof,0,0.25,60,1,1,c_white,1)
	}

ghost=instance_create_depth(4512-32+480-128+32,190+32,-1,oFlashFX) with ghost
{sprite_index=spr_ghost_move image_speed=0.1 image_blend=c_black image_alpha=0.5 haspal=0 animEnd=0 alarm[0]=0 image_xscale=-1}


}
else
{
timeline_position-=1
}//4024
