/// @description After Boxer
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=2560}

axe1=instance_create_depth(4320-96, 174,-1,oFlashFX) with axe1
{sprite_index=spr_axe image_speed=0 z=-95+64 animEnd=0 image_angle=90 alarm[0]=0}
axe2=instance_create_depth(4320+96, 174,-1,oFlashFX) with axe2
{sprite_index=spr_axe image_speed=0 z=-95+64 animEnd=0 image_angle=-90 image_xscale=-1 alarm[0]=0}

spawner_followset("WaveSet1",0,3702,1)

}
else
timeline_position-=1

