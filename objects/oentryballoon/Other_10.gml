/// @description Insert description here
// You can write your code in this editor
horse=instance_create_depth(x+ballAddX*image_xscale,y,horsedepth,oFlashFX) horse.depth=horsedepth horse.isDepth=isDepth
horse.image_speed=image_speed horse.my_pal_sprite=spr_playerpal horse.current_pal=horsepal horse.z=z+ballAddY+arriveAdd
horse.sprite_index=horsespr horse.hspeed=horseSpd horse.zSpeed=-3
with horse
{animEnd=0 alarm[0]=320
	
	}


