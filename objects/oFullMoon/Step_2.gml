/// @description Insert description here
// You can write your code in this editor
if !instance_exists(oBoss1) instance_destroy()
else
{if oBoss1.dead=1 or (oBoss1.hp=0 and oBoss1.hplayer=0) instance_destroy()
if oBoss1.hplayer=1
image_index=4+(oBoss1.hp)*5
else
{
image_index=-1+oBoss1.hp*5
}
}