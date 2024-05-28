/// @description Insert description here
// You can write your code in this editor
if anim=13
{AnimFrame=0 anim=40000

targetID=selfatk.hitID

	if targetID!=-1
	if instance_exists(targetID)
	{
	targetID.AnimFrame=0//anim=20
	targetID.thrownDMG=0
	targetID.vspeed=0
	targetID.hspeed=0
	targetID.canDrag=1
	targetID.grabLockX=x	
	with targetID
	{
	Throw=1
	AnimFrame=GrabFrame ///Grab Enemy Frame
	anim=30
	canmove=0
	hurt=1
	ground=0
	if object_index=oEnemy1
	event_user(9)
	}
	
	}
	}
	
	
	
	
	
	
