/// @description Insert description here
// You can write your code in this editor
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @description Break & Create Object

PlaySoundNoStack(HitSound)

if item!=-1
{
flashFX(x,y,z+zAdd,spr_hitflash,0,0.5,99999,1,1,c_white,1)
	
item=instance_create_depth(x,y,depth,itemID)
item.image_blend=itemcolor item.z=z+zAdd item.spdZ=-4
}

instance_destroy()
