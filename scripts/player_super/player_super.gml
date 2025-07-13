/// @description Super Attack
function player_super() {
var _checksuper=1;

with oPlayer if anim=50 _checksuper=0;

if _checksuper=0 {//player_special()
	exit;}

	if carry=1
	{dropitem=0 event_user(2)}

	if ground
	if super>=17.5
	{
	canmove=0 atk=0
	AnimFrame=0
	anim=50 ///SUPER
	}
	else {atk=1 player_special()}




}
