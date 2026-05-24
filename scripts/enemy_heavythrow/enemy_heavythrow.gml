/// @description enemy_heavythrow(AnimFrameStart,AnimFrameLock,throwStrengthMax,AnimFrameEnd)
/// @param AnimFrameStart
/// @param AnimFrameLock
/// @param throwStrengthMax
/// @param AnimFrameEnd
function enemy_heavythrow(argument0, argument1, argument2, argument3) {
	//Check if enemy is too heavy to be picked up and thrown
	////////////////
	if targetID.throwHeavy=1 and AnimFrame>argument0///1
	if throwStrengthTime!=0
	{AnimFrame=argument1 throwStrengthTime-=1
	if key_attack throwStrengthMax+=1 if throwStrengthMax>=argument2 AnimFrame=argument3
	if throwStrengthTime<30
	shaketime=1}
	else
	{
	throwStrengthTime=90
	targetID.x=x
	targetID.y=y
	targetID.z=z
	with targetID {AnimFrame=6.8 anim=6}
	oControl.quakeFXTime=16 PlaySoundNoStack(targetID.HitGround)
	targetID=-1
	hurt=1 AnimFrame=0 anim=9
	hpregister=hp
	hp-=0.25 if hpregister!=hp {global.PerfectRun=0; if object_index=oPlayer combo_stop(); }
	exit;
	} 
	//////////



}
