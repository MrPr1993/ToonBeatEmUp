function spawnplayericon() {
	selficon=instance_create_depth(x,y,depth,oFlashFX) selficon.attachID=id 
	selficon.attachZ=-height
	with selficon
	{animEnd=0 sprite_index=spr_p1 image_speed=0 alarm[0]=180
	}



}
