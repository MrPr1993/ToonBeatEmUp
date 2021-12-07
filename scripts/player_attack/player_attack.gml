/// @description Attack / Take Item/Weapon
function player_attack() {
	if key_jump
	{player_prepjump()}
	else
	{
	canmove=0 animFrame=0  ///Attack anim frame = 10
	image_index=0 
	if ground
	{///Throw
	if (image_xscale=1 and key_right and dashing=0 and place_meeting(x+16,y,parEnemy))
	or (image_xscale=-1 and -key_left and dashing=0 and place_meeting(x-16,y,parEnemy))
	{
	throw_command(instance_nearest(x,y,oEnemy1),24*image_xscale,0,0,GrabFrame,30,1);
	}
	else
	{
	///Stand Attack
	if dashing=2
	{atk=0 MoveType=0 anim=16 ///Dash Attack 

	//ground=0 sentflying=4*image_xscale zSpeed=-4

	}///Dash Attack}
	else
	{
	///Check if there's a heavy object
	if ((image_xscale=1 and key_right) or (image_xscale=-1 and -key_left))
	if collision_rectangle(x,y-4,x+(4+sprite_get_width(mask_index)/2)*image_xscale,y+4,oBarrel,0,0)
	{
grab=collision_rectangle(x,y-4,x+(4+sprite_get_width(mask_index)/2)*image_xscale,y+4,oBarrel,0,0)
if grab.hit=0 and carry=0
{///Lift Heavy Object
animFrame=0
	anim=250
	

	item=instance_create(x,y,oGrabbable) item.sprite_index=grab.carrySpr item.image_speed=0
	item.hasitem=grab.itemID item.name=grab.name
	with grab instance_destroy()
		
	pick_item()
	
		exit;
}
	}
	
	if place_meeting(x,y,oPizza) ////Check if there's an item
	{anim=25
pick_item()
	}
	else
	{
	if carry=0 anim=10 else {dropitem=1 player_throwitem()}
	///Carried


	////Use down-up-attack
	if anim=10 
	if commandDown!=0 and commandUp!=0
	anim=80

	///Use side attack
	if anim=10 and carry=0 and weaponspawn=-1
	if commandRight!=0 or commandLeft!=0
	{anim=81}

	}
	}
	throwATK=0
	}

	}
	else {///Still Kick
	if carry=1
	{dropitem=1
	event_user(2)
	}
	else
	{
	animFrame=0
	anim=15
	if -key_left or key_right
	{sentflying=2*image_xscale zSpeed=-4} else {sentflying=0}
	}
	}
	with selfatk
	{
	alarm[0]=4
	}
	}
	///




}
