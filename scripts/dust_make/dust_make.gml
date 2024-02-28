// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dust_make(x_,y_,z_,hspeed_,vspeed_,zspeed_){
dustmk=instance_create_depth(argument0,argument1,-1,oFlashFX) dustmk.z=argument2
with dustmk {sprite_index=spr_dust image_speed=0.5 animEnd=1 alarm[0]=999 isDepth=1
	hspeed=argument3 vspeed=argument4 zSpeed=argument5 my_pal_sprite=spr_dustpal
	}
}