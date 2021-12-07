/// @description enemy_heavythrow(animFrameStart,animFrameLock,throwStrengthMax,animFrameEnd)
/// @param animFrameStart
/// @param animFrameLock
/// @param throwStrengthMax
/// @param animFrameEnd
function enemy_heavythrow(argument0, argument1, argument2, argument3) {
	//Check if enemy is too heavy to be picked up and thrown
	////////////////
	if targetID.throwHeavy=1 and animFrame>argument0///1
	if throwStrengthTime!=0
	{animFrame=argument1 throwStrengthTime-=1
	if key_attack throwStrengthMax+=1 if throwStrengthMax>=argument2 animFrame=argument3
	if throwStrengthTime<30
	shaketime=1}
	else
	{
	throwStrengthTime=90
	targetID.x=x
	targetID.y=y
	targetID.z=z
	with targetID {animFrame=6.8 anim=6}
	oControl.quakeFXTime=16 PlaySoundNoStack(targetID.HitGround)
	targetID=-1
	hurt=1 animFrame=0 anim=9
	hp-=0.25
	exit;
	} 
	//////////



}
