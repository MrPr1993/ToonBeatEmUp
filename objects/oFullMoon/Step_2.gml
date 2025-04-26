/// @description Insert description here
// You can write your code in this editor
if !instance_exists(oBoss1) instance_destroy()
else
{if oBoss1.dead=1 or (oBoss1.hp<=0 and oBoss1.hplayer=0) instance_destroy()
image_index=(oBoss1.hp/oBoss1.maxhp)*10
image_index=clamp(image_index,-5,9.5)
}