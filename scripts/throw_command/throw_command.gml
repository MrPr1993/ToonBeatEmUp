///throw_command(target,x,y,z,targetHeightHit,anim,ground)
function throw_command(argument0, argument1, argument2, argument3, argument4) {

	if throwing=0 if anim=1
	{
	targetID=argument0//instance_nearest(x,y,argument0)
	if targetID!=-1
	{
	if targetID.hurt=0 and targetID.immune=0 and targetID.act=1 and targetID.dead=0 and targetID.recoveryThrow=0 and targetID.ground
	and targetID.z=z and targetID.isPlayer!=isPlayer and targetID.x=clamp(targetID.x,x-16,x+16) and targetID.isPlayer!=isPlayer
	and targetID.canbeGrabbed=1 and ((targetID.x>x and image_xscale=1) or (targetID.x<x and image_xscale=-1) )// and object_index=oPlayer
	{throwing=1 atk=1 canmove=0 isThrow=1 selfatk.isThrow=1 recovery=10

/////
	if object_index=oPlayer
	{
	if carry=1 {dropitem=0 
	event_user(2) item.spdX=0 item.ground=0 item.carry=0 throwcombo=2
	item.iscarry=1     item.carryID=-1}///Drop item
	//event_user(1)///Drop weapon
	}

	AnimFrame=0 anim=35//anim=20
	targetID.thrownDMG=0
	grabX=argument1//24*image_xscale
	grabY=argument2//0
	grabZ=argument3//-1
	 grabTime=targetID.EgrabTime
	 targetID.thrownPlayer=isPlayer
	targetID.x=x+grabX
	targetID.y=y+grabY
	targetID.z=z+grabZ
	targetID.vspeed=0
	targetID.hspeed=0
	targetID.canDrag=1
	grabLockX=x
	//targetID.GrabFrame

	with targetID 
	{
	targetHeightHit=argument4
	Throw=1
	AnimFrame=GrabFrame ///Grab Enemy Frame
	anim=argument5//30
	canmove=0
	hurt=1
	ground=argument6
	if object_index=oEnemy1
	event_user(9)


	///Drop enemy if still holding them
	if targetID!=-1 {
	if !place_free(targetID.x+-image_xscale,y) targetID.x=x
	with targetID
	{
	HitType=1 event_user(0)
	}targetID=-1}

	}}
	else {targetID=-1 if key_attack{AnimFrame=0 anim=10}} ///So the player doesn't get stuck
	}}



}
