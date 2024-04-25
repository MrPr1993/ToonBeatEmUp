/// @description Baddies Appear 2

if __view_get( e__VW.XView, 0 )>=3680-2-320-240
{


with oAreaSpawner
{spawnX=0 ///768
MaxSpawnFrame=0 visible=1
FXtype=5 canDraw=1 FrameVis=1 hasFake=0 //sprite_index=spr_doortrap
enemyMax=0}
en1.enemytype0=oRobotBurn
en2.enemytype0=oRobot// with en2 {name0="MS.JAB"}
with en3 {enemytype0=oRobotIce //name0="MS.CRUSH" pal0=7
	}
//name0=-1
}
else
{
timeline_position-=1
}

