/// @description Insert description here
// You can write your code in this editor
if anim=9002
{atk=0 selfatk.atk=0 animFrame=0 anim=35
mirrorAIThrow=choose(0,1) mirrorAIThrowTime=0
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