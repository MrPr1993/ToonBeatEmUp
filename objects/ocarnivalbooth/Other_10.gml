// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @description Break & Create Object
if destroyed=0
{
mask_index=mask_none


PlaySoundNoStack(HitSound)

solid=false
destroyed=1
ground=0
zSpeed=-8
sentflying=-2*sourceCheckX
image_index=3
alarm[0]=2

if item!=-1
{
item=instance_create_depth(x,y,depth,itemID)
item.image_blend=itemcolor
}}


