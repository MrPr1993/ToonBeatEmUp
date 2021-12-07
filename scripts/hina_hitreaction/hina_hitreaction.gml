function hina_hitreaction() {
	if anim=18
	{
	with selfatk 

	if hitID!=-1
	if instance_exists(hitID)
	{
	with hitID
	{
	fire=instance_create_depth(x,y+1,depth,oFlashFX) fire.z=z fire.attachID=id
	fire.isDepth=0 fire.depth=depth-1
	fire.sprite_index=spr_burn
	}
	} else hitID=-1
	}



}
