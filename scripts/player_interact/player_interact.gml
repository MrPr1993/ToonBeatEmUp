// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_interact(){
	if ((image_xscale=1 and key_right) or (image_xscale=-1 and -key_left))
	if collision_rectangle(x,y-4,x+(4+sprite_get_width(mask_index)/2)*image_xscale,y+4,oBarrel,0,0)
	if AttackOrItem=1 or AttackOrItem=2
	{
grab=collision_rectangle(x,y-4,x+(4+sprite_get_width(mask_index)/2)*image_xscale,y+4,oBarrel,0,0)
if grab.hit=0 and carry=0
{///Lift Heavy Object
	
	{canmove=0
animFrame=0
	anim=250

	item=instance_create(x,y,oGrabbable) item.sprite_index=grab.carrySpr item.image_speed=0
	item.hasitem=grab.itemID item.name=grab.name
	with grab instance_destroy()
		
	pick_item()
	
		exit;
	}
}
	
	}
	
	if place_meeting(x,y,oPizza) ////Check if there's an item
	{
pick_item()
	}
	else
	{
	if carry=0 
	{
			if AttackOrItem=0 or AttackOrItem=2
		{anim=10 animFrame=0 canmove=0} ///Attack
		///Pet interaction to overwrite above
		if AttackOrItem=1 or AttackOrItem=2
		{
	if instance_exists(oDogPet)
	{
	petP=instance_nearest(x,y,oDogPet)
	with petP
	{
	if interact=0 and anim=0
{
petP=instance_nearest(x,y,oPlayer)
if distance_to_object(petP)<distance
and petP.y=clamp(petP.y,y-distanceY,y+distanceY)
{
if petP.key_attack
if petP.hurt=0 and petP.ground=1
{petP.canmove=0 interact=1 anim=1
	
	image_index=0 animFrame=0
	
petID=petP.id

if x>petP.x image_xscale=-1 else image_xscale=1

petP.y=y
	
petP.x=x+(petDistance)*image_xscale
petP.image_xscale=-image_xscale
petP.image_index=0 petP.animFrame=0 petP.anim=10010
petP.sprite_index=petP.petSprLow
}
}
}
	}
	}
	}
	}
	else {dropitem=1 player_throwitem()}
	///Carried

if AttackOrItem=0 or AttackOrItem=2
{
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
}