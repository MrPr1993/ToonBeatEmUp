/// @description Throw Setup
function throw_step() {
	if recovery!=0 recovery-=1 else {recovery=0}
	if recoveryThrow!=0 recoveryThrow-=1 else recoveryThrow=0

	if !instance_exists(targetID)
	{targetID=-1}
	else
	if targetID!=-1
	{
	if hurt=1
	with targetID
	{
	isGrabbed=1
	canmove=0
	hurt=1
	hit=1
	ground=0
	zSpeed=-8
	sentflying=-2
	AnimFrame=3
	anim=5
	throwcombo=2
	}

	if targetID.canDrag=1
	{
	targetID.x=x+grabX
	targetID.y=y+grabY
	targetID.z=z+grabZ
	}
	targetID.vspeed=0
	targetID.hspeed=0

	if targetID.anim!=30 and targetID.anim!=31
	targetID=-1
	}



}
