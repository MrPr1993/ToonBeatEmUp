/// @description Cam move up
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
	

with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,4560-320,1)

oControl.P1SpawnX=oControl.camX+304
oControl.P1SpawnY=oControl.camY+232
oControl.P2SpawnX=oControl.P1SpawnX
oControl.P2SpawnY=oControl.P1SpawnY
oControl.P3SpawnX=oControl.P1SpawnX
oControl.P3SpawnY=oControl.P1SpawnY
oControl.P4SpawnX=oControl.P1SpawnX
oControl.P4SpawnY=oControl.P1SpawnY

cast=instance_create_depth(4082,178,-1,oFlashFX) with cast
{sprite_index=spr_sandcastle animEnd=0 alarm[0]=-1}

	with oEnemySpawner specialscript=function()
	{var _add=0;

//if oControl.allPlayersMid
//	{if MaxY>240 MaxY-=playerClosest.totalSpeed}
//		else {MaxY=240 specialscript=-1;}

	if oControl.allPlayersMid=1
	with oPlayer if x>oControl.camX+160 _add=1
	if _add
	{
	with oPlayer if !place_free(x,y-4) _add=0
	if _add
	{
	if MaxY>240 MaxY-=playerClosest.totalSpeed/4
		else {MaxY=240 specialscript=-1;}
		MaxY=clamp(MaxY,240,9999)
	}
	}
	}



}
else
timeline_position-=1;

