/// @description Insert description here
// You can write your code in this editor
if dead=0
if anim=11
{
	with selfatk 
	if hitID!=-1
	if instance_exists(hitID)
	{
	with hitID
	{if ground=0 {HitType=1 event_user(0)}
	}
	}
	
}

/// @description Insert description here
// You can write your code in this editor
if anim=9912
{atk=0 selfatk.atk=0 animFrame=0 anim=6666

targetID=selfatk.hitID

	if targetID!=-1
	if instance_exists(targetID)
	{
	targetID.animFrame=0//anim=20
	targetID.thrownDMG=0
	targetID.vspeed=0
	targetID.hspeed=0
	targetID.canDrag=0
	targetID.grabLockX=x	
	with targetID
	{shaketime=0
	Throw=1
	animFrame=0 ///Grab Enemy Frame
	anim=30
	canmove=0
	hurt=1
	ground=0
	if object_index=oEnemy1
	event_user(9)
	}
	
	}
	}
	
	
	
	
	
	
