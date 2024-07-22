/// @description Insert description here
// You can write your code in this editor
if anim=6500
{AnimFrame=0 anim=6666 specialcheck0=0 specialcheck1=0
targetID=selfatk.hitID

	if targetID!=-1
	if instance_exists(targetID)
	{
	targetID.AnimFrame=0//anim=20
	targetID.thrownDMG=0
	targetID.vspeed=0
	targetID.hspeed=0
	targetID.canDrag=0
	targetID.grabLockX=x	
	with targetID
	{
	Throw=1
	AnimFrame=0 ///Grab Enemy Frame
	anim=30
	canmove=0
	hurt=1
	ground=0
	if object_index=oEnemy1
	event_user(9)
	}
	
	}
	}
	
	
	
	
	
	
