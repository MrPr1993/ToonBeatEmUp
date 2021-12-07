if hasitem!=-1
{
item=instance_create(x,y,hasitem) item.z=z
}


bar=instance_create(x,y,oBarrel) bar.z=z bar.name=name
if hspeed>0 bar.image_xscale=1 else bar.image_xscale=-1
bar.sprite_index=sprite_index bar.mask_index=mask_none
with bar event_user(0)

instance_destroy()

