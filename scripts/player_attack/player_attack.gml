/// @description Attack / Take Item/Weapon
function player_attack() {
	if canmove=1
{
if -key_left and image_xscale=1 and key_attack and ground {player_punchback() exit;}
if key_right and image_xscale=-1 and key_attack and ground {player_punchback() exit;}
}	
	
	if key_jump
	{
		if carry=0 and weaponspawn=-1
		player_punchback()
		else
		player_prepjump()
		}
	else
	{
	  ///Attack anim frame = 10
	image_index=0 
	if ground
	{///Throw
	
	if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+16,y,parEnemy))
	or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-16,y,parEnemy))
	{
	if AttackOrItem=0 or AttackOrItem=2
	{
	canmove=0 animFrame=0
	throw_command(instance_nearest(x,y,oEnemy1),24*image_xscale,0,0,GrabFrame,30,1);
	}
	}
	else
	{
	///Stand Attack
	
	
	if dashing=2
	{
		
	if AttackOrItem=0 or AttackOrItem=2
	{canmove=0 animFrame=0
	atk=0 MoveType=0 anim=16 ///Dash Attack 
	}
	//ground=0 sentflying=4*image_xscale zSpeed=-4

	}///Dash Attack}
	else
	{
	///Check if there's a heavy object
player_interact()
	}
	throwATK=0
	}

	}
	else {
		
	///Still Kick
	if carry=1
	{dropitem=1 ///Throw item
	animFrame=0 canmove=0
	event_user(2)
	}
	else
	{ ///Air attack
		if AttackOrItem=0 or AttackOrItem=2
		{canmove=0
	animFrame=0
	anim=15
	//if -key_left or key_right
	//{sentflying=2*image_xscale zSpeed=-4} else {sentflying=0}
		}
	}
	}
	with selfatk
	{
	alarm[0]=4
	}
	}
	///




}
