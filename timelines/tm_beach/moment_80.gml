/// @description Cam move up
if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,4560-320,1)

cast=instance_create_depth(4082,178,-1,oFlashFX) with cast
{sprite_index=spr_sandcastle animEnd=0 alarm[0]=-1}

	with oEnemySpawner specialscript=function()
	{
	if oPlayer.x>3200-160
	if oPlayer.x>__view_get( e__VW.XView, 0)+160
	{if MaxY>240 MaxY-=1
		else {MaxY=240 specialscript=-1;}
	}
	}
}
else
timeline_position-=1;

