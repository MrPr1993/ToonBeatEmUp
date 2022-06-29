///Special Attack
function player_special() {

	if pow>4 
	{
	if hp>=powhp
	{
	powlock=1 pow=0 powcheck=1 canmove=0 targetID=-1 animFrame=0
	Throw=0 throwing=0
if -key_left image_xscale=-1 if key_right image_xscale=1
	if (key_right or -key_left)
	anim=18 ///FWD ATTACK
	else
	anim=17 throwATK=0

	if carry=1
	{dropitem=0 event_user(2)}
	}
	}
	///STAND ATTACk
	else if hp>=powhp
	{powlock=1 powcheck=0 canmove=0 targetID=-1 animFrame=0
	if -key_left image_xscale=-1 if key_right image_xscale=1
		
	if (key_right or -key_left)
	anim=18 ///FWD ATTACK
	else
	anim=17 throwATK=0}///STAND ATTACk}

	if carry=1
	{dropitem=1 event_user(2)}





}
