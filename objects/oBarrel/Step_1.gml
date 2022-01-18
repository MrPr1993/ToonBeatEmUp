if place_meeting(x,y,oWaterFX)
{
wfx=instance_place(x,y,oWaterFX)
waterMax=wfx.z+wfx.zAdd
}

if OBJcheck=1
if place_meeting(x+2,y,oPizza)
{
OBJcheck=0
item=instance_place(x+2,y,oPizza)
itemID=item.itemspawner
itemcolor=item.image_blend
with item instance_destroy()
}
else OBJcheck=0


if hit=0
{
if collision_rectangle(x-sprite_get_width(mask_index)/2-1,y-sprite_get_height(mask_index)/2,x+sprite_get_width(mask_index)/2+1,y+sprite_get_height(mask_index)/2-1,ParCharPhys,0,0)
and (place_meeting(x,y,ParCharPhys) or place_meeting(x-1,y,ParCharPhys) or place_meeting(x+1,y,ParCharPhys))
{if place_meeting(x,y,ParCharPhys)
source=instance_place(x,y,ParCharPhys)
if place_meeting(x-1,y,ParCharPhys)
source=instance_place(x-1,y,ParCharPhys)
if place_meeting(x+1,y,ParCharPhys)
source=instance_place(x+1,y,ParCharPhys)
if (z=clamp(z,source.z,source.z+source.height)
or z-height=clamp(z-height,source.z-source.height,source.z))
and source.sentflying!=0
{
if x>source.x sourceCheckX=-1 else sourceCheckX=1 
event_user(0)
}}
}



